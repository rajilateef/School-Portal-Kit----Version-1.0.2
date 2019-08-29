<?php
    if(isset($_POST['add_subject_btn'])){
        $add_subject = inject_checker($connection, ucwords($_POST['add_subject']));
        
        if(empty($add_subject)){
            $msg = "<p class='text-danger'><b>Field can not be empty</b></p>";
        }else{
            $query = " SELECT * FROM `school_subjects` WHERE `subjects` = '{$add_subject}' ";
            $run_query = mysqli_query($connection, $query);
            if(mysqli_num_rows($run_query) > 0){
                $msg = "<p class='text-danger'><b>Sorry! subject already exist</b></p>";
            }else{
                $query = "INSERT INTO `school_subjects`(`subjects`, `date_saved`)
                                    VALUES('{$add_subject}', '{$date}')";
                $run_query = mysqli_query($connection, $query);

                if($run_query){
                    $msg = "<p class='text-success'><b>{$add_subject} saved successfully into subject list</b></p>";
                }else{
                    $msg = "<p class='text-danger'><b>{$add_subject} failed to save into subject list</b></p>";
                }
            }
        }
    }
?>
 

 <div class='page-title'>
  <div>
    <h1><i class='fa fa-laptop'></i> Subject Management</h1>
    <p>Add a New Subject</p>
  </div>
  <div>
    <ul class='breadcrumb'>
      <li><a href='modules.php'><i class='fa fa-home fa-lg'></i></a></li>
      <li><a href='#'>Subject Managemant</a></li>
      <li><a href='#'>Add New Subject </a></li>
    </ul>
  </div>
</div>

<div class='card'>
    <?php
        if(isset($msg)){
            echo $msg;
        }
    ?>
    <form action='' method='POST'>
        <div class = 'panel panel-primary ch'>
            <div class = 'panel-heading'>					
                <h4 class='text-center'>Add a New Subject to Subject List</h4>
            </div>
            <div class = 'panel-body'>
                <div class='row'>
                    <div class='col-xs-12 col-sm-12 col-md-12'>
                        <table class='table table-striped'>
                            <tr>
                                <td>Add a New Subject</td>
                                <td>
                                    <input name='add_subject' type='text' name='lastname' placeholder='Type a New Subject e.g (Mathematics, English Language, Biology)' class='form-control' value = '' required>
                                </td>
                            </tr>
                        </table>
                            <div class='col-xs-12 col-sm-12 col-md-6'>
                            </div>
                            <div class='col-xs-12 col-sm-12 col-md-6'>
                                <button name='add_subject_btn' class='btn btn-primary' style='border-radius:10px;' name='submit_btn' type='submit'>Add It</button>
                            </div>
                            <br><br>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>