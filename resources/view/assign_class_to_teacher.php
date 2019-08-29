<?php
    //////////////// POST ACTION TO DELETE TEACHERS FROM TEACHERS_CLASSES DB TABLE
    if(isset($_POST['teachers_delete_btn'])){
        $delete_id = $_POST['teachers_hidden_id'];

        $query = " DELETE FROM `teachers_classes` WHERE `id` = '{$delete_id}' ";
        $run_query = mysqli_query($connection, $query);

        if($run_query == true){
            $msg = "<p class='text-success'><b>Teacher's Record Deleted Successfully</b></p>";
        }else{
            $msg = "<p><b>Error! Could Not Delete Teachers Record</b></p>";
        }
    }
?>

<?php
    if(isset($_POST['save_btn'])){
        $teacher_name = $_POST['teacher_name'];
        $subject = $_POST['subject'];
        $class = $_POST['class'];
        $term = $_POST['term'];
        
        $query = " SELECT * FROM `teachers_classes` WHERE `name` = '{$teacher_name}' AND `class` = '{$class}' ";
        $run_query = mysqli_query($connection, $query);
        
        if(mysqli_num_rows($run_query) > 0){
            $msg = "<p class='text-danger'><b>{$teacher_name} has already been assigned to {$class}</b></p>";
        }else{
            $query = " INSERT INTO `teachers_classes`(`name`, `subject`, `class`, `term`) 
                                        VALUES('{$teacher_name}', '{$subject}', '{$class}', '{$term}') ";
            $run_query = mysqli_query($connection, $query);
            
            if($run_query == true){
                $msg = "<p class='text-success'><b>{$class} assigned to {$teacher_name} Succesfully</b></p>";
            }
        }
    }
?>

<div class="page-title">
  <div>
    <h1><i class="fa fa-calendar"></i> Teachers</h1>
    <p>Assign teachers to a class</p>
  </div>
  <div>
    <ul class="breadcrumb">
      <li><a href='modules.php'><i class="fa fa-home fa-lg"></i></a></li>
      <li><a href="#">Teachers and their classes</a></li>
    </ul>
  </div>
</div>
<div class="card">
    <?php
        if(isset($msg)){
            echo $msg;
        }
    ?>
    <form action='' method='POST'>
        <div class = 'panel panel-primary ch'>
            <div class = 'panel-heading'>					
                <h4 class='text-center'>Assign Teachers to their class</h4>
                                        </div>
            <div class = 'panel-body'>
                <div class='row'>
                    <div class='col-xs-12 col-sm-12 col-md-12'>
                        <table class='table table-striped'>
                            <tr>
                                <td>
                                    <div class = 'input-group'>
                                        <span class = 'input-group-addon' id = 'sizing-addon2'>Teachers</span>
                                        <select class='form-control' name='teacher_name' required>
                                            <option><?php echo $select; ?></option>
                                            <?php
                                                $query = " SELECT * FROM `teachers` ";
                                                $run_query = mysqli_query($connection, $query);
                                            
                                                if(mysqli_num_rows($run_query) > 0){
                                                    while($result = mysqli_fetch_assoc($run_query)){
                                                        $teacher_id = $result['id'];
                                                        $teacher_fname = $result['firstname'];
                                                        $teacher_lname = $result['lastname'];
                                                        $teacher_subject = $result['subject_to_teach'];
                                                        
                                                        echo "
                                                            <option>{$teacher_fname} {$teacher_lname}</option>
                                                        ";
                                                    }
                                                }
                                            ?>
                                        </select>
                                    </div>
                                <td>
                                <td>
                                    <div class = 'input-group'>
                                        <span class = 'input-group-addon' id = 'sizing-addon2'>Subject</span>
                                        <select class='form-control' name='subject' required>
                                            <option><?php echo $select; ?></option>
                                            <?php
                                                $query = " SELECT * FROM `school_subjects` ORDER BY `subjects` ASC ";
                                                $run_query = mysqli_query($connection, $query);

                                                if(mysqli_num_rows($run_query) > 0){
                                                    while($result = mysqli_fetch_assoc($run_query)){
                                                        $subject = $result['subjects'];
                                                        echo "<option>{$subject}</option>";
                                                    }
                                                }
                                            ?>
                                        </select>
                                    </div>
                                <td>
                                <td>
                                    <div class = 'input-group'>
                                        <span class = 'input-group-addon' id = 'sizing-addon2'>Class</span>
                                        <select class='form-control' name='class' required>
                                            <option><?php echo $select; ?></option>
                                            <?php
                                                $query = " SELECT * FROM `classes` ";
                                                $run_query = mysqli_query($connection, $query);
                                                if(mysqli_num_rows($run_query) > 0){
                                                    while($result = mysqli_fetch_assoc($run_query)){
                                                        $publish_result_classes = $result['classes'];
                                                        echo"
                                                            <option>{$publish_result_classes}</option>
                                                        ";
                                                    }
                                                }
                                            ?>
                                        </select>
                                    </div>
                                </td>
                                <td>
                                    <div class = 'input-group'>
                                        <span class = 'input-group-addon' id = 'sizing-addon2'>Term</span>
                                        <select class='form-control' name='term' required>
                                            <option><?php echo $select; ?></option>
                                            <?php
                                                $term_array = array("First Term", "Second Term", "Third Term");
                                                foreach($term_array as $term){
                                                    echo "<option>{$term}</option>";
                                                }
                                            ?>
                                        </select>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <div class='col-xs-12 col-sm-12 col-md-6'>
                            <button type = 'submit' name = 'save_btn' class ='btn btn-primary btn-md'><span class = 'glyphicon glyphicon-user'></span>&nbsp; SAVE</button><br/>
                        </div>
                        <div class='col-xs-12 col-sm-12 col-md-6'></div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <?php
        $query = " SELECT * FROM `teachers_classes` ORDER BY `subject` ASC ";
        $run_query = mysqli_query($connection, $query);
    
        if(mysqli_num_rows($run_query) > 0){
            $i = 0;
            echo "
                <div class='table-responsive'>
                    <table class='table table-striped'>
                        <thead>
                            <tr>
                                <th>S/N</th>
                                <th>NAME</th>
                                <th>SUBJECT</th>
                                <th>ASSIGNED CLASS</th>
                                <th>TERM</th>
                                <th>ACTION</th>
                            </tr>
                        </thead>
            ";
            while($result = mysqli_fetch_assoc($run_query)){
                $i++;
                $teachers_id = $result['id'];
                $teachers_name = $result['name'];
                $teachers_subject = $result['subject'];
                $teachers_class = $result['class'];
                $assigned_term = $result['term'];
                echo"
                    <tbody>
                        <tr>
                            <td>{$i}</td>
                            <td>{$teachers_name}</td>
                            <td>{$teachers_subject}</td>
                            <td>{$teachers_class}</td>
                            <td>{$assigned_term}</td>
                            <td>
                                <form method='POST' action=''>
                                    <input type='hidden' name='teachers_hidden_id' value='{$teachers_id}' />
                                    <input type='submit' name='teachers_delete_btn' id='demoSwal' value='Delete' class='btn btn-xs btn-danger' />
                                </form>
                            </td>
                        </tr>
                    </tbody>
                ";
            }
        }
    ?>
</div>
