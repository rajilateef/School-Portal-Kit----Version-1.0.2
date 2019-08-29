<?php
    /////////////// POST ACTION TO DELETE ADMINISTRATIVE INFORMATION ///////////////////
    if(isset($_POST['subject_delete_btn'])){
        $subject_hidden_id = $_POST['subject_hidden_id'];

        $query = " DELETE FROM `school_subjects` WHERE `id` = {$subject_hidden_id} ";
        $run_query =mysqli_query($connection, $query);

        if($run_query == true){
            $msg = "<p class='text-success'><b>Subject Deleted Successfully</b></p>";
        }else{
            $msg = "<p class='text-danger'><b>Error! Subject Could Not Deleted</b></p>";
        }
    }

?>
 
<?php
    if(isset($_POST['edit_btn'])){
        $edited_subject_id = $_POST['one_subject_hidden_id'];
        $edited_subject = inject_checker($connection, ucwords($_POST['edited_subject']));
        
        $query = " UPDATE `school_subjects` SET 
                            `subjects` = '{$edited_subject}' WHERE `id` = '{$edited_subject_id}' ";
        $run_query = mysqli_query($connection, $query);
        if($run_query){
            $msg = "<p class='text-success'><b>Changes Saved Successfully</b></p>";
        }else{
            $msg = "<p class='text-danger'><b>Error! Changes not saved</b></p>";
        }
    }
?>

 <div class='page-title'>
  <div>
    <h1><i class='fa fa-laptop'></i> Subject Management</h1>
    <p>View added Subject</p>
  </div>
  <div>
    <ul class='breadcrumb'>
      <li><a href='modules.php'><i class='fa fa-home fa-lg'></i></a></li>
      <li><a href='#'>Subject Managemant</a></li>
      <li><a href='#'>View added Subject </a></li>
    </ul>
  </div>
</div>

<div class='card'>
    <?php
        if(isset($msg)){
            echo $msg;
        }
    ?>
    <?php
        if(isset($_POST['subject_edit_btn'])){
            $subject_hidden_id = $_POST['subject_hidden_id'];
            
            $query = " SELECT * FROM `school_subjects` WHERE `id` = '{$subject_hidden_id}' ";
            $run_query = mysqli_query($connection, $query);
            
            if(mysqli_num_rows($run_query) > 0){
                while($result = mysqli_fetch_assoc($run_query)){
                    $id = $result['id'];
                    $subject = $result['subjects'];
                }
                
                echo "
                    <form method='POST' action=''>
                        <div class = 'panel panel-primary ch'>
                            <div class = 'panel-heading'>					
                                <h4 class='text-center'>Edit Subject List</h4>
                            </div>
                            <div class = 'panel-body'>
                                <div class='row'>
                                    <div class='col-xs-12 col-sm-12 col-md-12'>
                                        <table class='table table-striped'>
                                            <tr>
                                                <td>Edit Subject</td>
                                                <td>
                                                    <input name='edited_subject' type='text' name='lastname' placeholder='Type a New Subject e.g (Mathematics, English Language, Biology)' class='form-control' value='{$subject}' required>
                                                </td>
                                            </tr>
                                        </table>
                                            <div class='col-xs-12 col-sm-12 col-md-6'>
                                            </div>
                                            <div class='col-xs-12 col-sm-12 col-md-6'>
                                                <input type='hidden' name='one_subject_hidden_id' value='{$id}' />
                                                <button  name='edit_btn' class='btn btn-primary' style='border-radius:10px;' type='submit'>Save Changes</button>
                                            </div>
                                            <br><br>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                ";
            }
        }
    ?>
    <form action='' method='POST'>
        <div class = 'panel panel-primary ch'>
            <div class = 'panel-heading'>					
                <h4 class='text-center'>View all subjects offered in school</h4>
            </div>
            <div class = 'panel-body'>
                <div class='row'>
                    <div class='col-xs-12 col-sm-12 col-md-12'>
                        <?php
                            $query = " SELECT * FROM `school_subjects` ";
                            $run_query = mysqli_query($connection, $query);
                            
                            if(mysqli_num_rows($run_query) > 0){
                                $i = 0;
                                 echo"
                                    <div class='table-responsive'>
                                        <table class='table table table-hover table-bordered'>
                                            <thead>
                                                <tr>
                                                    <th>S/N</th>
                                                    <th>Subjects</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>
                                ";
                                while($result = mysqli_fetch_assoc($run_query)){
                                    $subject_id = $result['id'];
                                    $subjects = $result['subjects'];
                                    $i++;
                                    
                                    echo "
                                        <tbody>
                                            <tr>
                                                <td>{$i}</td>
                                                <td>{$subjects}</td>
                                                <td>
                                                    <form method='POST' action=''>
                                                        <input type='hidden' name='subject_hidden_id' value='{$subject_id}' />
                                                        <input type='submit' name='subject_edit_btn' value='Edit' class='btn btn-xs btn-primary' />
                                                        <input type='submit' name='subject_delete_btn' id='demoSwal' value='Delete' class='btn btn-xs btn-danger' />
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
    </form>
</div>