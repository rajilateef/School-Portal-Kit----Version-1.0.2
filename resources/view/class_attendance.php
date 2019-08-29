<?php
    if(isset($_POST['save_attendance_btn'])){
        $roll_call_date = inject_checker($connection, $_POST['roll_call_date']);
        $current_term = $_POST['current_term'];
        $current_session = $_POST['current_session'];
        
        for($j = 0; $j < (int)$_POST["total_num"]; $j++){
            $attendance_reg_no = inject_checker($connection, $_POST['attendance_reg_no'][$j]);
            $attendance_name = inject_checker($connection, $_POST['attendance_name'][$j]);
            $attendance_class = inject_checker($connection, $_POST['attendance_class'][$j]);
            $class_roll_call = inject_checker($connection, $_POST['class_roll_call'][$j]);
			
			$query = " SELECT * FROM `student_attendance` WHERE `date` = '{$roll_call_date}' AND `term` = '{$current_term}' AND `session` = '{$current_session}' AND `class` = '{$attendance_class}' ";
			$run_query = mysqli_query($connection, $query);
		}
		if(mysqli_num_rows($run_query) > 0){
			$msg = "<p class='text-danger'><b><span class='glyphicon glyphicon-remove'></span> This Roll Call has been saved already</b></p>";
        }else{
            if(empty($roll_call_date)){
                $msg = "<p class='text-danger'><b>Your date field can't be empty</b></p>";
            }else{
                $query = " INSERT INTO `student_attendance`(`reg_number`, `name`, `date`, `term`, `session`, `class`, `roll_call`) VALUES ";
                for($j = 0; $j < (int)$_POST["total_num"]; $j++){
                    $attendance_reg_no = inject_checker($connection, $_POST['attendance_reg_no'][$j]);
                    $attendance_name = inject_checker($connection, $_POST['attendance_name'][$j]);
                    $attendance_class = inject_checker($connection, $_POST['attendance_class'][$j]);
                    $class_roll_call = inject_checker($connection, $_POST['class_roll_call'][$j]);

                    $query .= "('$attendance_reg_no','$attendance_name','$roll_call_date','$current_term','$current_session','{$attendance_class}','$class_roll_call'),";
                }

                $query = rtrim($query,",");
                $run_query = mysqli_query($connection, $query);

                if($run_query == true){
                    $msg = "<p class='text-success'><b>Roll Call Saved Successfully</b></p>";
                }else{
                     $msg = "<p class='text-danger'><b>Roll Call failed to save</b></p>";
                }
            }
        }
    }
?>

<div class='page-title'>
  <div>
    <h1><i class='fa fa-laptop'></i> Class Attendance</h1>
    <p>Save Daily Roll Call</p>
  </div>
  <div>
    <ul class='breadcrumb'>
      <li><a href='modules.php'><i class='fa fa-home fa-lg'></i></a></li>
      <li><a href='#'>Class Attendance</a></li>
      <li><a href='#'>Save Daily Roll Call </a></li>
    </ul>
  </div>
</div>

<div class='card'>
   <?php
        if(isset($msg)){
            echo $msg;
        }
    ?>
    <div class='panel panel-primary'>
        <div class='panel-heading'>
            <h4 class='text-center'>Class Attendance</h4>
        </div>
        <div class='panel-body'>
            <form method='POST' action=''>
                <div class='row'>
                    <div class='col-md-4'>
                        <div class='input-group'>
                            <span class='input-group-addon' id='basic-addon2'>Student Class:</span>
                            <select class='form-control' name='attendance_class'>
                                <option selected ><?php echo $select; ?></option>
                                    <?php
                                        $query = " SELECT * FROM `classes` ";
                                        $run_query = mysqli_query($connection, $query);
                                        if(mysqli_num_rows($run_query) > 0){
                                            while($result = mysqli_fetch_assoc($run_query)){
                                                $attendance = $result['classes'];
                                                echo"
                                                    <option>{$attendance}</option>
                                                ";
                                            }
                                        }
                                    ?>
                            </select>
                        </div>
                    </div>
                    <div class='col-md-2'>
                        <input type='submit' name='view_members_btn' value='VIEW CLASS MEMBERS' class='btn btn-primary' />
                    </div>

                </div>
            </form>
            <br />
        </div>
    </div>
<?php
    if(isset($_POST['view_members_btn'])){
        $attendance_class = $_POST['attendance_class'];
        
        if($attendance_class == $select){
            $msg = "<p><b>Please select class for roll call</b></p>";
        }else{
            $query = " SELECT * FROM `students` WHERE `class` = '{$attendance_class}' ";
            $run_query = mysqli_query($connection, $query);
            
            if(mysqli_num_rows($run_query) > 0){
                $r = 1; $i = 0;
                echo "
                <form method='POST' action=''>
                    <div class='row'>
                        <div class='col-md-4'>
                            <div class='input-group'>
                                <span class='input-group-addon' id='basic-addon2'>Date</span>
                                <input type='text' name='roll_call_date' class='form-control' placeholder='Type roll call date e.g 21/11/2017' />
                            </div>
                        </div>
                        
                        <div class='col-md-4'>
                            <div class='input-group'>
                                <span class='input-group-addon' id='basic-addon2'>Term:</span>
                                <select class='form-control' name='current_term'>";
                                    ///// POST ACTION TO DISPLAY CURRRENT TERM /////////////
                                    $sql = " SELECT * FROM `current_season` ";
                                    $run_sql = mysqli_query($connection, $sql);
                                    if(mysqli_num_rows($run_sql) == 1){
                                        while($result = mysqli_fetch_assoc($run_sql)){
                                            $show_current_term = $result['current_term'];
                                            echo"
                                                <option>{$show_current_term}</option>
                                            ";
                                        }
                                    }
                                    echo"
                                </select>
                            </div>
                        </div>
                        
                        <div class='col-md-4'>
                            <div class='input-group'>
                                <span class='input-group-addon' id='basic-addon2'>Session:</span>
                                <select class='form-control' name='current_session'>";
                                    ///// POST ACTION TO DISPLAY CURRRENT TERM /////////////
                                    $sql = " SELECT * FROM `current_season` ";
                                    $run_sql = mysqli_query($connection, $sql);
                                    if(mysqli_num_rows($run_sql) == 1){
                                        while($result = mysqli_fetch_assoc($run_sql)){
                                            $show_current_session = $result['current_session'];
                                            echo"
                                                <option>{$show_current_session}</option>
                                            ";
                                        }
                                    }
                                    echo"
                                </select>
                            </div>
                        </div>
                    </div>
                    <br />
                    <div class='table-responsive'>
                        <table class='table table-bordered'>
                            <thead>
                                <tr>
                                    <th>S/N</th>
                                    <th>REG NO</th>
                                    <th>NAME</th>
                                    <th>CLASS</th>
                                    <th>ROLL CALL</th>
                                </tr>
                            </thead>
                ";
                while($result = mysqli_fetch_assoc($run_query)){
                    $reg_no = $result['reg_number'];
                    $fname = $result['firstname'];
                    $lname = $result['lastname'];
                    $oname = $result['othername'];
                    $class = $result['class'];
                    
                    echo "
                        <tbody>
                            <tr>
                                <td>{$r}</td>
                                <td>
                                    <input type='text' name='attendance_reg_no[]' value='{$reg_no}' class='form-control' readonly />
                                </td>
                                <td>
                                    <input type='text' name='attendance_name[]' value='{$fname} {$lname} {$oname}' class='form-control' readonly />
                                </td>
                                <td>
                                    <input type='text' name='attendance_class[]' value='{$class}' class='form-control' readonly />
                                </td>
                                <td>
                                    <select class='form-control' name='class_roll_call[]'>
                                        <option>Present</option>
                                        <option>Absent</option>
                                    </select>
                                </td>
                            </tr>
                        </tbody>
                    ";
                    $r++;$i++;
                }
                echo "
                        </table>
                    </div>
                    <input type='hidden' name='total_num' value='{$i}' />
                    <input name='save_attendance_btn' type='submit' class='btn btn-primary btn-sm' value='Save Roll Call' />
                </form>
                ";
            }else{
                echo "<p class='text-danger'><b>No Records of students in {$attendance_class}</b></p>";
            }
        }
    }
?>

</div>