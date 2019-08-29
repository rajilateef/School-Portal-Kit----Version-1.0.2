<?php
    if(isset($_POST['promote_students_btn'])){
        ////////////// POST ACTION TO PROMOTE STUDENTS TO ANOTHER CLASS ///////////////
        $promote_student_from = inject_checker($connection, $_POST['promote_student_from']);
        $promote_student_to = inject_checker($connection, $_POST['promote_student_to']);

        if($promote_student_from == "Select Class"){
            $msg = "<p class='text-danger'><b><span class='glyphicon glyphicon-remove'></span> Please Select Class to Promote From</b></p>";
        }
        elseif($promote_student_to == "Select Class"){
            $msg = "<p class='text-danger'><b><span class='glyphicon glyphicon-remove'></span> Please Select Class to Promote To</b></p>";
        }else{
            if($promote_student_from == $promote_student_to){
                $msg = "<p class='text-danger'><b><span class='glyphicon glyphicon-remove'></span> You can not promote students to their previous Class</b></p>";
            }
            elseif($promote_student_from == $select){
                $msg = "<p class='text-danger'><b>Error: Please Select Class you wish to promote From</b></p>";
            }
            elseif($promote_student_to == $select){
                $msg = "<p class='text-danger'><b>Error: Please Select Class you wish to promote To</b></p>";
            }else{
                $update_query = " UPDATE `students` SET `class` = '{$promote_student_to}' WHERE `class` = '{$promote_student_from}' ";
                $run_update_query = mysqli_query($connection, $update_query);
                if($run_update_query == true){
                    $msg = "<p class='text-success'><b><span class='glyphicon glyphicon-ok'></span> Promotion Successful</b></p>";
                }else{
                    $msg = "<p class='text-danger'><b><span class='glyphicon glyphicon-remove'></span> Promotion Failed</b></p>";
                }
            }
        }
    }
?>

<?php
    ///////////// POST ACTION TO DISPLAY CURRENT SESSION //////////////
    $query = " SELECT * FROM `current_season` ";
    $run_query = mysqli_query($connection, $query);
    if(mysqli_num_rows($run_query) == 1){
        while($result = mysqli_fetch_assoc($run_query)){
            $show_current_session = $result['current_session'];
        }
    }
?>

 <div class='page-title'>
  <div>
    <h1><i class='fa fa-laptop'></i> Student Management</h1>
    <p>Promote Student</p>
  </div>
  <div>
    <ul class='breadcrumb'>
      <li><i class='fa fa-home fa-lg'></i></li>
      <li><a href='#'>Student Management</a></li>
      <li><a href='#'>Promote Student </a></li>
    </ul>
  </div>
</div>

<div class="card">
    <?php
        if(isset($msg)){
            echo $msg;
        }
    ?>
    <div class = 'row'>
        <div class = 'col-xs-12 col-sm-12 col-md-12'>
            <div class = 'panel panel-primary ch'>
                <div class = 'panel-heading'>
                    <p> Promotion is Class By Class Starting From SSS3 Students</p>
                </div>
                <br/>
                
                <div class = 'panel-body'>
                    <form method = 'POST' action = ''>
                        <div class='row'>
                            <div class = 'col-xs-12 col-sm-12 col-md-4'>
                                <div class = 'input-group'>
                                    <span class = 'input-group-addon' id = 'sizing-addon2'>CLASS FROM</span>
                                    <select name='promote_student_from' class='form-control'>
                                        <option>Select Class</option>
                                        <?php
                                            $query = " SELECT * FROM `classes` ";
                                            $run_query = mysqli_query($connection, $query);
                                            if(mysqli_num_rows($run_query) > 0){
                                                while($result = mysqli_fetch_assoc($run_query)){
                                                    $target_classes = $result['classes'];
                                                    echo"
                                                        <option>{$target_classes}</option>
                                                    ";
                                                }
                                            }
                                        ?>
                                    </select>
                                </div>
                                <br/>
                            </div>
                            <div class = 'col-xs-12 col-sm-12 col-md-4'>
                                <div class = 'input-group'>
                                    <span class = 'input-group-addon' id = 'sizing-addon2'>CLASS TO:</span>
                                    <select name='promote_student_to' class='form-control'>
                                        <option>Select Class</option>
                                        <?php
                                            $query = " SELECT * FROM `classes` ";
                                            $run_query = mysqli_query($connection, $query);
                                            if(mysqli_num_rows($run_query) > 0){
                                                while($result = mysqli_fetch_assoc($run_query)){
                                                    $target_classes = $result['classes'];
                                                    echo"
                                                        <option>{$target_classes}</option>
                                                    ";
                                                }
                                            }
                                        ?>
                                        <option>Graduate</option>
                                    </select>
                                </div>
                                <br/>
                            </div>
                            <div class = 'col-xs-12 col-sm-12 col-md-4'>
                                <div class = 'input-group'>
                                    <span class = 'input-group-addon' id = 'sizing-addon2'>Session:</span>
                                    <select class='form-control' name='session'>
                                        <option><?php echo $show_current_session; ?></option>
                                        <?php
                                            $query = " SELECT * FROM `sessions` ";
                                            $run_query = mysqli_query($connection, $query);
                                            if(mysqli_num_rows($run_query) > 0){
                                                while($result = mysqli_fetch_assoc($run_query)){
                                                    $all_sessions = $result['sessions'];
                                                    echo "<option>{$all_sessions}</option>";
                                                }
                                            }
                                        ?>
                                    </select>
                                </div>
                                <br/>
                            </div>
                            <br/>
                            <button type = 'submit' name='promote_students_btn' class = 'btn btn-primary btn-md' style='margin-left:20px;'><span class= 'glyphicon glyphicon-user'></span>&nbsp Promote Students</button><br/> 
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>