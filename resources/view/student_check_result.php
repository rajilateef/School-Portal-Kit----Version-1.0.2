<?php
    //Check if scratch is enabled or disabled
    $query = "SELECT use_scratch_card FROM settings LIMIT 1";
    $run_query = mysqli_query($connection, $query);

    if(mysqli_num_rows($run_query) > 0){
        while($result = mysqli_fetch_assoc($run_query)){
            $status = $result['use_scratch_card'];
        }
    }
    if($status == 1){
        $css_display = "";
    }else{
        $css_display = "none";
    }

    ////////////////////// POST ACTION TO CHECK STUDENTS RESULT IF THE CHECK RESULT BUTTON IS CLICKED //////////////////
    if(isset($_POST['check_result_btn'])){
        $result_regno = inject_checker($connection, $_POST['result_regno']);
        $result_class = inject_checker($connection, $_POST['result_class']);
        $result_term = inject_checker($connection, $_POST['result_term']);
        $result_session = inject_checker($connection, $_POST['result_session']);
        $result_pin = inject_checker($connection, $_POST['result_pin']);
        $used_pin_count = 1;

        //////////////// ERROR CHECKING FOR EMPTY FIELDS /////////////////
        if(empty($result_regno)){
            $msg = "<p class='text-danger'>Error! Registration Number is Required</p>";
        }
        elseif($result_class == $select){
            $msg = "<p class='text-danger'>Error! Please Select Class to check Result</p>";
        }
        elseif($result_term == $select){
            $msg = "<p class='text-danger'>Error! Please Select the term for the Result</p>";
        }
        elseif($status == 1){

            if(empty($result_pin)){
                $msg = "<p class='text-danger'>Error! Please Type in Card Pin to Access your Result</p>";
            }else{
                if($result_term == ucwords("first term")){
                    $query = " SELECT * FROM `pin1` WHERE `first_term_pin` = '{$result_pin}' ";
                }
                elseif($result_term == ucwords("second term")){
                    $query = " SELECT * FROM `pin2` WHERE `second_term_pin` = '{$result_pin}' ";
                }
                elseif($result_term == ucwords("third term")){
                    $query = " SELECT * FROM `pin3` WHERE `third_term_pin` = '{$result_pin}' ";
                }

                $run_query = mysqli_query($connection, $query);

                if(mysqli_num_rows($run_query) == 1){

                    $query = " SELECT * FROM `used_pins` WHERE `used_pins` = '$result_pin' AND `user_class` = '{$result_class}' AND `used_term` = '{$result_term}' AND `used_session` = '{$result_session}' ";
                    $run_query = mysqli_query($connection, $query);

                    if(mysqli_num_rows($run_query) > 0){
                        while($result = mysqli_fetch_assoc($run_query)){
                            $first_used_reg_number = $result['user_reg_number'];
                        }
                        if($result_regno !== $first_used_reg_number){
                            $msg = "<p class='text-danger'><b>This Pin Has Already Been Used by Another Student !!!</b></p>";
                        }else{
                            $query = " SELECT `used_count` FROM `used_pins` WHERE `used_pins` = '$result_pin' AND `user_reg_number` = '{$result_regno}' AND `user_class` = '{$result_class}' AND `used_term` = '{$result_term}' AND `used_session` = '{$result_session}' ";
                            $run_query = mysqli_query($connection, $query);

                            while($result = mysqli_fetch_assoc($run_query)){
                                $pin_usage_count = $result['used_count'];
                            }
                            if($pin_usage_count == 5){
                                $msg = "<p class='text-danger'><b>Your Have Exhausted Your Times Usage Validity !!!</b></p>";
                            }else{
                                $pin_usage_count++;
                                $query = " UPDATE `used_pins` SET `used_count` = '{$pin_usage_count}' WHERE `used_pins` = '{$result_pin}' AND `user_class` = '{$result_class}' AND `used_term` = '{$result_term}' AND `used_session` = '{$result_session}' ";
                                $run_query = mysqli_query($connection, $query);

                                if($run_query == true){
                                    $query = " SELECT * FROM `results1` WHERE `reg_number` = '{$result_regno}' AND `class` = '{$result_class}' AND `term` = '{$result_term}' AND `session` = '{$result_session}' ";
                                    $run_query = mysqli_query($connection, $query);

                                    if($run_query == true){
                                        if(mysqli_num_rows($run_query) > 0){
                                            while($result = mysqli_fetch_assoc($run_query)){
                                                $result_id = $result['id'];
                                                $_SESSION['result'] = $result_id;
                                                header("Location: result_page.php");
                                            }
                                        }else{
                                            $msg = "<p class='text-danger'><b>No Result Records Found !!!</b></p>";
                                        }
                                    }else{
                                        $msg = "<p class='text-danger'><b>Result Checking Failed !!!</b></p>";
                                    }
                                }else{
                                    $msg = "<p class='text-danger'><b>Result Checking Encountered Error !!!</b></p>";
                                }
                            }
                        }
                    }else{
                        $query = " SELECT * FROM `used_pins` WHERE `used_pins` = '$result_pin' AND `user_class` = '{$result_class}' AND `used_term` = '{$result_term}' AND `used_session` = '{$result_session}' ";
                        $run_query = mysqli_query($connection, $query);

                        if(mysqli_num_rows($run_query) < 1){
                            $query = " SELECT * FROM `used_pins` WHERE `used_pins` = '$result_pin' AND `user_reg_number` = '{$result_regno}' AND `user_class` = '{$result_class}' AND `used_term` = '{$result_term}' AND `used_session` = '{$result_session}' ";
                            $run_query = mysqli_query($connection, $query);

                            $query = " INSERT INTO `used_pins`(`used_pins`, `user_reg_number`, `used_count`, `user_class`, `used_term`, `used_session`, `date_used`)
                                            VALUES('$result_pin', '$result_regno', '$used_pin_count', '$result_class', '$result_term', '$result_session', '$date')";
                            $run_query = mysqli_query($connection, $query);

                            if($run_query == true){
                                $query = " DELETE FROM `unused_pins` WHERE `unused_pins` = '{$result_pin}' ";
                                $run_query = mysqli_query($connection, $query);

                                if($run_query == true){
                                    $query = " SELECT * FROM `results1` WHERE `reg_number` = '{$result_regno}' AND `class` = '{$result_class}' AND `term` = '{$result_term}' AND `session` = '{$result_session}' ";
                                    $run_query = mysqli_query($connection, $query);

                                    if($run_query == true){
                                        if(mysqli_num_rows($run_query) > 0){
                                            while($result = mysqli_fetch_assoc($run_query)){
                                                $result_id = $result['id'];
                                                $_SESSION['result'] = $result_id;
                                                header("Location: result_page.php");
                                            }
                                        }else{
                                            $msg = "<p class='text-danger'><b>No Result Records Found !!!</b></p>";
                                        }
                                    }else{
                                        $msg = "<p class='text-danger'><b>Result Checking Failed !!!</b></p>";
                                    }
                                }
                            }else{
                                $msg = "<p class='text-danger'><b>Result Checking Encountered Error !!!</b></p>";
                            }
                        }
                    }   
                }else{
                    $msg = "<p class='text-danger'><b>Incorrect Pin !!!</b></p>";
                }
            }
        }else{
            $query = " SELECT * FROM `results1` WHERE `reg_number` = '{$result_regno}' AND `class` = '{$result_class}' AND `term` = '{$result_term}' AND `session` = '{$result_session}' ";
            $run_query = mysqli_query($connection, $query);

            if($run_query == true){
                if(mysqli_num_rows($run_query) > 0){
                    while($result = mysqli_fetch_assoc($run_query)){
                        $result_id = $result['id'];
                        $_SESSION['result'] = $result_id;
                        header("Location: result_page.php");
                    }
                }else{
                    $msg = "<p class='text-danger'><b>No Result Records Found !!!</b></p>";
                }
            }else{
                $msg = "<p class='text-danger'><b>Result Checking Failed !!!</b></p>";
            } 
        }
    }
?>
<div class="page-title">
  <div>
    <h1><i class="fa fa-calendar"></i> Check Result</h1>
    <p>Use your Card Pin to Check Result</p>
  </div>
  <div>
    <ul class="breadcrumb">
      <li><a href='student_dashboard.php'><i class="fa fa-home fa-lg"></i></a></li>
      <li><a href="#">Check Result</a></li>
    </ul>
  </div>
</div>

<div class="card">
    <?php
        if(isset($msg)){
            echo $msg;
        }
    ?>
    <div class='row'>
        <div class='col-xs-12 col-sm-12 col-md-12'>
			<div class='panel panel-primary'>
                <div class='panel-heading'>
                    <h3 class='log-text'>Please Fill the form to check result</h3>
                </div>
                <div class='panel-body'>
                    <form method='POST' action=''>
                        <div class='input-group'>
                            <span class='input-group-addon' id='basic-addon2'>REG NO</span>
                            <input type='text' name='result_regno' value='<?php echo $student_reg_number; ?>' placeholder='Enter Registration Number' class='form-control disabled' />
                        </div>
                        <br />

                        <div class='input-group'>
                            <span class='input-group-addon' id='basic-addon2'>CLASS</span>
                            <select class='form-control' name='result_class'>
                                <option selected><?php echo $select; ?></option>
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
                        <br />

                        <div class='input-group'>
                            <span class='input-group-addon' id='basic-addon2'>TERM</span>
                            <select class='form-control' name='result_term'>
                                <option selected><?php echo $select; ?></option>
                                <?php
                                    $term_array = array("First Term", "Second Term", "Third Term");
                                    foreach($term_array as $term){
                                        echo "<option>{$term}</option>";
                                    }
                                ?>
                            </select>
                        </div>
                        <br />

                        <div class='input-group'>
                            <span class='input-group-addon' id='basic-addon2'>Session</span>
                            <select class='form-control' name='result_session'>
                                <option selected><?php echo $select; ?></option>
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
                        <br />

                        <div style="display: <?php echo $css_display; ?>" class='input-group'>
                            <span class='input-group-addon' id='basic-addon2'>PIN</span>
                            <input type='text' name='result_pin' placeholder='Enter Card Pin' class='form-control' />
                        </div>
                        <br />

                        <p id='btnsubmit'><input type='submit' name='check_result_btn' id='submit' value='Check Result' class='btn btn-large btn-primary login_btn text-center' /></p>
                    </form>
                </div>		
            </div>
        </div>
    </div>
</div>