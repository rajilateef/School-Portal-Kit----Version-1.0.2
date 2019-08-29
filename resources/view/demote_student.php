<?php
    if(isset($_POST['demote_btn'])){
        $student_reg_no = inject_checker($connection, $_POST['student_reg_no']);
        $demote_student_from = inject_checker($connection, $_POST['demote_student_from']);
        $demote_student_to = inject_checker($connection, $_POST['demote_student_to']);
        
        if(empty($student_reg_no)){
            $msg = "<p class='text-danger'><b><span class='glyphicon glyphicon-remove'></span> Type Reg no of student to demote</b></p>";
        }
        elseif($demote_student_from == "Select Class"){
            $msg = "<p class='text-danger'><b><span class='glyphicon glyphicon-remove'></span> Please Select Class to demote From</b></p>";
        }
        elseif($demote_student_to == "Select Class"){
            $msg = "<p class='text-danger'><b><span class='glyphicon glyphicon-remove'></span> Please Select Class to demote To</b></p>";
        }else{
            if($demote_student_from == $demote_student_to){
                $msg = "<p class='text-danger'><b><span class='glyphicon glyphicon-remove'></span> Both classes can not be the same</b></p>";
            }
            elseif($demote_student_from == $select){
                $msg = "<p class='text-danger'><b>Error: Please Select Class you wish to demote From</b></p>";
            }
            elseif($demote_student_to == $select){
                $msg = "<p class='text-danger'><b>Error: Please Select Class you wish to demote To</b></p>";
            }else{
                $update_query = " UPDATE `students` SET `class` = '{$demote_student_to}' WHERE `reg_number` = '{$student_reg_no}' AND `class` = '{$demote_student_from}' ";
                $run_update_query = mysqli_query($connection, $update_query);
                if($run_update_query == true){
                    $msg = "<p class='text-success'><b><span class='glyphicon glyphicon-ok'></span> Demotion Successful</b></p>";
                }else{
                    $msg = "<p class='text-danger'><b><span class='glyphicon glyphicon-remove'></span> Demotion Failed</b></p>";
                }
            }
        }
    }
?>
 <div class='page-title'>
  <div>
    <h1><i class='fa fa-laptop'></i> Student Management</h1>
    <p>Demote Student</p>
  </div>
  <div>
    <ul class='breadcrumb'>
      <li><i class='fa fa-home fa-lg'></i></li>
      <li><a href='#'>Student Management</a></li>
      <li><a href='#'>Demote Student </a></li>
    </ul>
  </div>
</div>

<div class='card'>
    <?php
        if(isset($msg)){
            echo $msg;
        }
    ?>
    <div class = 'row'>
        <div class = 'col-xs-12 col-sm-12 col-md-12'>
            <div class = 'panel panel-primary ch'>
                <div class = 'panel-heading'>
                    <h4 class = 'txt'>DEMOTE STUDENTS</h4>
                                            </div><br/>
                <div class = 'panel-body'>
                    <form method = 'POST' action = ''>
                        <div class='row'>
                            <div class = 'col-xs-12 col-sm-12 col-md-4'>
                                <div class = 'input-group'>
                                    <span class = 'input-group-addon' id = 'sizing-addon2'>REG NO:</span>
                                    <input type = 'text' name='student_reg_no' class = 'form-control' placeholder = 'Reg number' required>
                                </div><br/>
                            </div>
                            <div class = 'col-xs-12 col-sm-12 col-md-4'>
                                <div class = 'input-group'>
                                    <span class = 'input-group-addon' id = 'sizing-addon2'>CLASS FROM</span>
                                    <select class='form-control' name='demote_student_from'>
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
                                </div><br/>
                            </div>
                        <div class = 'col-xs-12 col-sm-12 col-md-4'>
                            <div class = 'input-group'>
                                <span class = 'input-group-addon' id = 'sizing-addon2'>CLASS TO:</span>
                                <select class='form-control' name='demote_student_to'>
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
                            </div><br/>
                        </div>
                        <br/>
                        <button type = 'submit' name='demote_btn' class = 'btn btn-primary btn-md' style='margin-left:20px;'><span class = 'glyphicon glyphicon-user'></span>&nbsp Demote a Student</button><br/> 
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
