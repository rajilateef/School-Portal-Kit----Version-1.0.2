
<div class='page-title'>
  <div>
    <h1><i class='fa fa-laptop'></i> Class Attendance</h1>
    <p>View Class Attendance</p>
  </div>
  <div>
    <ul class='breadcrumb'>
      <li><a href='modules.php'><i class='fa fa-home fa-lg'></i></a></li>
      <li><a href='#'>Class Attendance</a></li>
      <li><a href='#'>View Attendance</a></li>
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
            <h4 class='text-center'>View Class Attendance Record</h4>
        </div>
        <div class='panel-body'>
            <form method='POST' action=''>
                <div class='row'>
                    <div class='col-md-3'>
                        <div class='input-group'>
                            <span class='input-group-addon' id='basic-addon2'>Student Class:</span>
                            <select class='form-control' name='view_attendance_class'>
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
                    <div class='col-md-3'>
                            <div class='input-group'>
                                <span class='input-group-addon' id='basic-addon2'>Term:</span>
                                <select class='form-control' name='view_attendance_term'>
                                    <option>First Term</option>
                                    <option>Second Term</option>
                                    <option>Third Term</option>
                                </select>
                            </div>
                        </div>
                        
                        <div class='col-md-3'>
                            <div class='input-group'>
                                <span class='input-group-addon' id='basic-addon2'>Session:</span>
                                <select class='form-control' name='view_attendance_session'>
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
                        </div>
                    <div class='col-md-2'>
                        <input type='submit' name='view_attendance_btn' value='VIEW CLASS MEMBERS' class='btn btn-primary' />
                    </div>

                </div>
            </form>
            <br />
        </div>
    </div>
    <?php
        if(isset($_POST['view_attendance_btn'])){
            $view_attendance_class = $_POST['view_attendance_class'];
            $view_attendance_term = $_POST['view_attendance_term'];
            $view_attendance_session = $_POST['view_attendance_session'];
            
            if($view_attendance_class == $select){
                echo "<p class='text-danger'><b>Please Class to view attendance</b></p>";
            }else{
                $query = " SELECT * FROM `student_attendance` WHERE `class` = '{$view_attendance_class}' AND `term` = '{$view_attendance_term}' AND `session` = '{$view_attendance_session}' ORDER BY `date` ASC ";
                $run_query = mysqli_query($connection, $query);
                
                if(mysqli_num_rows($run_query) > 0){
                    $i = 0;
                    echo "
                        <div class='table-responsive'>
                            <table class='table table-bordered table-hover'>
                                <thead>
                                    <tr>
                                        <th>S/N</th>
                                        <th>NAME</th>
                                        <th>REG NO</th>
                                        <th>DATE</th>
                                        <th>CLASS</th>
                                        <th>TERM</th>
                                        <th>SESSION</th>
                                        <th>ROLL CALL</th>
                                    </tr>
                                </thead>
                    ";
                    while($result = mysqli_fetch_assoc($run_query)){
                        $i++;
                        $reg_no = $result['reg_number'];
                        $student_name = $result['name'];
                        $attendance_date = $result['date'];
                        $term = $result['term'];
                        $class = $result['class'];
                        $session = $result['session'];
                        $roll_call = $result['roll_call'];
                        
                        echo "
                            <tbody>
                                <tr>
                                    <td>{$i}</td>
                                    <td>{$student_name}</td>
                                    <td>{$reg_no}</td>
                                    <td>{$attendance_date}</td>
                                    <td>{$class}</td>
                                    <td>{$term}</td>
                                    <td>{$session}</td>
                                    <td>{$roll_call}</td>
                                </tr>
                            </tbody>
                        ";
                    }
                    echo "
                            </table>
                        </div>
                    ";
                }else{
                    echo "<p class='text-danger'><b>No attendance record found</b></p>";
                }
            }
        }
    ?>
</div>