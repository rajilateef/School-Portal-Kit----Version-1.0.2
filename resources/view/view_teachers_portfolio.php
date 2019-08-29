<?php
    //////////////// POST ACTION TO CHANGE TEACHERS STATUS ///
    if(isset($_POST['change_status_btn'])){
        $status_id = $_POST['teacher_hidden_id'];
        $teacher_status = $_POST['teacher_status'];

        $query = " UPDATE `teachers` SET 
                                    `status` = '{$teacher_status}' WHERE `id` = '{$status_id}' ";
        $run_query = mysqli_query($connection, $query);

        if($run_query == true){
            $msg = "<p class='text-success'><b>Teacher Status Changed</b></p>";
        }else{
            $msg = "<p><b>Error! Could Not Change Teacher Status</b></p>";
        }
    }
?>

<?php
    //////////////// POST ACTION TO DELETE REGISTERED TEACHERS ////
    if(isset($_POST['teacher_delete_btn'])){
        $delete_id = $_POST['teacher_hidden_id'];

        $query = " DELETE FROM `teachers` WHERE `id` = '{$delete_id}' ";
        $run_query = mysqli_query($connection, $query);

        if($run_query == true){
            $msg = "<p class='text-success'><b>Teacher Deleted Successfully</b></p>";
        }else{
            $msg = "<p><b>Error! Could Not Delete Teacher Record</b></p>";
        }
    }
?>

<div class="page-title">
  <div>
    <h1><i class="fa fa-calendar"></i> Teachers</h1>
    <p>View all teachers and their subjects</p>
  </div>
  <div>
    <ul class="breadcrumb">
      <li><a href='modules.php'><i class="fa fa-home fa-lg"></i></a></li>
      <li><a href="#">View accountants</a></li>
    </ul>
  </div>
</div>
<div class="card">
    <?php
        if(isset($msg)){
            echo $msg;
        }
    ?>
    <div class="table-scrol">
        <div class = 'panel panel-primary ch'>
            <div class = 'panel-heading'>
                <h4 align="center">All Teachers and their Subjects</h4>
            </div>
            <div class='panel-body'>
                <?php
                    $query = " SELECT * FROM `teachers` ";
                    $run_query = mysqli_query($connection, $query);
                    
                    if(mysqli_num_rows($run_query) > 0){
                        $i = 0;
                        echo "
                            <div class='table-responsive'>
                                <table class='table table-striped'>
                                    <thead>
                                        <tr>
                                            <th>S/N</th>
                                            <th>USERNAME</th>
                                            <th>NAME</th>
                                            <th>SEX</th>
                                            <th>PHONE</th>
                                            <th>SUBJECT</th>
                                            <th>EMPLOYED</th>
                                            <th>STATUS</th>
                                            <th>ACTION</th>
                                        </tr>
                                    </thead>
                        ";
                        while($result = mysqli_fetch_assoc($run_query)){
                            $i++;
                            $teacher_id = $result['id'];
                            $username = $result['username'];
                            $fname = $result['firstname'];
                            $lname = $result['lastname'];
                            $sex = $result['sex'];
                            $phone = $result['phone'];
                            $email = $result['email'];
                            $subject = $result['subject_to_teach'];
                            $employment_date = $result['employment_date'];
                            $status = $result['status'];
                            
                            echo "
                                <tbody>
                                    <tr>
                                        <td>{$i}</td>
                                        <td>{$username}</td>
                                        <td>{$fname} {$lname}</td>
                                        <td>{$sex}</td>
                                        <td>{$phone}</td>
                                        <td>{$subject}</td>
                                        <td>{$employment_date}</td>
                                        <td class='text-success'><b>{$status}</b></td>
                                        <td>
                                            <form method='POST' action=''>
                                                <input type='hidden' name='teacher_hidden_id' value='{$teacher_id}' />
                                                <select name='teacher_status' class='form-control'>
                                                    <option selected>{$status}</option>
                                                    <option>Active</option>
                                                    <option>Transfered</option>
                                                    <option>Retired</option>
                                                </select>
                                                <input type='submit' name='change_status_btn' id='demoSwal' value='Status' class='btn btn-xs btn-info' />
                                                <input type='submit' name='teacher_delete_btn' id='demoSwal' value='Delete' class='btn btn-xs btn-danger' />
                                            </form>
                                        </td>
                                    </tr>
                                </tbody>
                            ";
                        }
                    }
                ?>
            </div>
        </div>
    </div>
</div>
