<?php
    if(isset($_POST['admin_upload_btn'])){
        $school_name = inject_checker($connection, strtoupper($_POST['school_name']));
        $school_motto = inject_checker($connection, ucwords($_POST['school_motto']));


        if(empty($school_name)){
            $msg = "<p class='text-danger'><b>Error: School Name Field Can not be empty!</b></p>";
        }
        elseif(empty($school_motto)){
            $msg = "<p class='text-danger'><b>Error: School Address Field Can not be empty!</b></p>";
        }else{
            ////////////// ATION TO UPLOAD SCHOOL LOGO INTO DB FROM ADMINISTRATIVE PAGE ///////////
            $name = $_FILES['logo']['name'];
            $tmp_name = $_FILES['logo']['tmp_name'];

            if(isset($name)){
                if(!empty($name)){
                $location = 'admin/';
                    if(move_uploaded_file($tmp_name, $location.$name)){
                        $image_location = $location.$name;
                    }else{
                        $image_location = "admin/none.jpg";
                    }

                }
            }

            ////////////// ATION TO UPLOAD SCHOOL STAMP/SIGNATURE INTO DB FROM ADMINISTRATIVE PAGE ///////////
            $name1 = $_FILES['stamp']['name'];
            $tmp_name1 = $_FILES['stamp']['tmp_name'];

            if(isset($name1)){
                if(!empty($name1)){
                $location1 = 'admin/';
                    if(move_uploaded_file($tmp_name1, $location1.$name1)){
                        $image_location1 = $location.$name1;
                    }else{
                        $image_location1 = "admin/none.jpg";
                    }

                }
            }
            
            $query = " SELECT * FROM `administratives` ";
            $run_query = mysqli_query($connection, $query);
            
            if(mysqli_num_rows($run_query) > 0){
                $query = " UPDATE `administratives` SET
                                                    `school_name` = '{$school_name}',
                                                    `school_motto` = '{$school_motto}',
                                                    `school_logo` = '{$image_location}',
                                                    `school_stamp` = '{$image_location1}',
                                                    `upload_date` = '{$date}' ";
                $run_query = mysqli_query($connection, $query);
                if($run_query == true){
                    $msg = "<p class='text-success'><b>Administratives Updated Successful</b></p>";
                }else{
                    $msg = "<p class='text-danger'><b>Administratives Update Failed</b></p>";
                }
            }else{
                $query = " INSERT INTO `administratives`(`school_name`, `school_motto`, `school_logo`, `school_stamp`, `upload_date`)
                            VALUES('".mysql_real_escape_string($school_name)."', '".mysql_real_escape_string($school_motto)."', '{$image_location}', '{$image_location1}', '{$date}') ";
                $run_query = mysqli_query($connection, $query);
                if($run_query == true){
                    $msg = "<p class='text-success'><b>Administratives Upload Successful</b></p>";
                }else{
                    $msg = "<p class='text-danger'><b>Administratives Upload Failed</b></p>";
                }
            }
        }

    }
?>
 

 <div class='page-title'>
  <div>
    <h1><i class='fa fa-laptop'></i> Administrative Manager</h1>
    <p>Manage School Info</p>
  </div>
  <div>
    <ul class='breadcrumb'>
      <li><i class='fa fa-home fa-lg'></i></li>
      <li><a href='#'>Administrative Manager</a></li>
      <li><a href='#'>Save School Info </a></li>
    </ul>
  </div>
</div>

<div class='card'>
    <?php
        if(isset($msg)){
            echo $msg;
        }
    ?>
    <form action='' method='POST' enctype = 'multipart/form-data'>
        <div class = 'panel panel-primary ch'>
            <div class = 'panel-heading'>					
                <h4 class='text-center'>Save School Information</h4>
            </div>
            <div class = 'panel-body'>
                <div class='row'>
                    <div class='col-xs-12 col-sm-12 col-md-12'>
                        <table class='table table-striped'>
                            <tr>
                                <td>School Name</td>
                                <td>
                                    <input name='school_name' type='text' name='lastname' placeholder='School Name' class='form-control' value = '' required>
                                </td>
                            </tr>
                            <tr>
                                <td>School Address</td>
                                <td>
                                    <input name='school_motto' type='text' name='firstname' placeholder='School Address' class='form-control' value = ''required>
                                </td>
                            </tr>
                            <tr>
                                <td>School Logo</td>
                                <td>
                                    <div>
                                        <input name='logo' type='file' class='form-control' required>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>School Stamp/Signature</td>
                                <td>
                                    <div>
                                        <input name='stamp' type='file' class='form-control' required>
                                    </div>
                                </td>
                            </tr>
                        </table>
                            <div class='col-xs-12 col-sm-12 col-md-6'>
                            </div>
                            <div class='col-xs-12 col-sm-12 col-md-6'>
                                <button name='admin_upload_btn' class='btn btn-primary' style='border-radius:10px;' type='submit'>Save</button>
                            </div>
                            <br><br>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>