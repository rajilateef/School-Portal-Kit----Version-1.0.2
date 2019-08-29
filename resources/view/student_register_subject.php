<?php
	/////////////////// POST ACTION TO REGISTER STUDENT SUBJECTS IF REGISTER BUTTON IS CLICKED /////////////////
	if(isset($_POST['subject_register_btn'])){
		$student_id = inject_checker($connection, $_POST['student_id']);
		$student_name = inject_checker($connection, $_POST['student_name']);
		$student_class = inject_checker($connection, $_POST['student_class']);
		$student_subject = inject_checker($connection, $_POST['student_subject']);
		$current_term = inject_checker($connection, $_POST['current_term']);
		$current_session = inject_checker($connection, $_POST['current_session']);
		
		//////////////////////// ERROR CHECKING FOR EMPTY FIELDS ///////////////
		if(empty($student_id) || empty($student_name)){
			$msg = "<p class='text-danger'><b>Error! Your Registration Number and Your Name are Required</b></p>";
		}
		elseif($student_class == $select){
			$msg = "<p class='text-danger'><b>Error! Please Select Your Class<b></p>";
		}
		elseif($student_subject == $select){
			$msg = "<p class='text-danger'><b>Error! Please Select Subject</b></p>";
		}
		elseif($current_term == $select){
			$msg = "<p class='text-danger'><b>Error! Please Select Current Term</b></p>";
		}
		else{
			$query = " SELECT * FROM `subjects` WHERE `reg_number` = '{$student_id}' AND `class` = '{$student_class}' AND `subjects` = '{$student_subject}' AND `term` = '{$current_term}' AND `session` = '{$current_session}' ";
			$run_query = mysqli_query($connection, $query);
            
			if($run_query == true){
				if(mysqli_num_rows($run_query) == 1){
					$msg = "<p class='text-danger'><b>Error: You cannot register one subject twice for the same term</b></p>";
				}else{
					$query = " INSERT INTO `subjects`(`reg_number`, `name`, `class`, `subjects`, `term`, `session`, `registration_date`) 
								VALUES('$student_id', '$student_name', '$student_class', '$student_subject', '$current_term', '$current_session', '$date')";
					$run_query = mysqli_query($connection, $query);
                    
					if($run_query == true){
						$msg = "<p class='text-success'><b>Registration Successful</b></p>";
					}else{
						$msg = "<p class='text-danger'><b>Registration Failed!</b></p>";
					}
				}
			}else{
				$msg = "<p class='text-danger'><b>Can not Register This Subject</b><p>";
			}
		}
	}
?>
<?php
    if(isset($_POST['del_btn'])){
        /////////////// POST ACTION TO FOR STUDENTS TO DELETE ANY OF THEIR REGISTERED COURSES /////////////
        $hidden_id = $_POST['hidden_id'];
        $query = " DELETE FROM `subjects` WHERE `id` = '{$hidden_id}' AND `class` = '{$student_class}' ";
        $run_query = mysqli_query($connection, $query);

        if($run_query == true){
            $msg = "<p class='text-success'><b>Subject Deleted Successfully</b></p>";
        }else{
            $msg = "<p class='text-danger'><b>Error! Could Not Delete Record</b></p>";
        }
    }
?>

<?php
    ///// POST ACTION TO DISPLAY CURRRENT TERM /////////////
    $query = " SELECT * FROM `current_season` ";
    $run_query = mysqli_query($connection, $query);
    if(mysqli_num_rows($run_query) == 1){
        while($result = mysqli_fetch_assoc($run_query)){
            $current_term_checking = $result['current_term'];
        }
    }
?>

<?php
    ///////////// POST ACTION TO DISPLAY CURRENT SESSION //////////////
    $query = " SELECT * FROM `current_season` ";
    $run_query = mysqli_query($connection, $query);
    if(mysqli_num_rows($run_query) == 1){
        while($result = mysqli_fetch_assoc($run_query)){
            $current_session_checking = $result['current_session'];
        }
    }
?>

<div class="page-title">
  <div>
    <h1><i class="fa fa-calendar"></i> Subjects you are to offer</h1>
    <p>The following subjects are the specified subjects for your class</p>
  </div>
  <div>
    <ul class="breadcrumb">
      <li><a href='student_dashboard.php'><i class="fa fa-home fa-lg"></i></a></li>
      <li><a href="#">Subjects to Offer</a></li>
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
                    <h2>Register Subjects</h2>
                </div>

                <div class='panel-body'>
                    <form method='POST' action=''>
                        <div class='row'>
                            <div class='col-md-5'>
                                <div class='input-group'>
                                    <span class='input-group-addon' id='basic-addon2'>Reg Number:</span>
                                    <input type='text' value='<?php echo $student_reg_number; ?>' name='student_id' placeholder='Type Your Registration Number' class='form-control' />
                                </div>
                                <br />
                            </div>

                            <div class='col-md-5'>
                                <div class='input-group'>
                                    <span class='input-group-addon' id='basic-addon2'>Name:</span>
                                    <input type='text' value='<?php echo $surname ." " .$lastname ." " .$othername; ?>' name='student_name' placeholder='Type Your Name' class='form-control' />
                                </div>
                            </div>
                        </div>
                        <br />
                        
                        <div class='row'>
                            <div class='col-md-3'>
                                <div class='input-group'>
                                    <span class='input-group-addon' id='basic-addon2'>Class:</span>
                                    <select class='form-control' name='student_class'>
                                        <option selected ><?php echo $student_class; ?></option>
                                    </select>
                                </div>
                                <br />
                            </div>

                            <div class='col-md-3'>
                                <div class='input-group'>
                                    <span class='input-group-addon' id='basic-addon2'>Subjects:</span>
                                    <select class='form-control' name='student_subject'>
                                        <option selected ><?php echo $select; ?></option>
                                        <?php
                                            $student_class_arm = substr($student_class, 0, 3);
                                            if($student_class_arm === "JSS"){
                                                $query = " SELECT * FROM `jss` ORDER BY `jss_subjects` ASC ";
                                                $run_query = mysqli_query($connection, $query);
                                                if(mysqli_num_rows($run_query) > 0){
                                                    while($result = mysqli_fetch_assoc($run_query)){
                                                        $jss_subjects = $result['jss_subjects'];
                                                        echo "<option>{$jss_subjects}</option>";
                                                    }
                                                }
                                            }
                                            elseif($student_class_arm === "SSS"){
                                                $query = " SELECT * FROM `sss` ORDER BY `sss_subjects` ASC ";
                                                $run_query = mysqli_query($connection, $query);
                                                if(mysqli_num_rows($run_query) > 0){
                                                    while($result = mysqli_fetch_assoc($run_query)){
                                                        $sss_subjects = $result['sss_subjects'];
                                                        echo "<option>{$sss_subjects}</option>";
                                                    }
                                                }
                                            }
                                        ?>
                                    </select>
                                </div>
                                <br />
                            </div>

                            <div class='col-md-3'>
                                <div class='input-group'>
                                    <span class='input-group-addon' id='basic-addon2'>Term:</span>
                                    <select class='form-control' name='current_term'>
                                        <?php
                                            ///// POST ACTION TO DISPLAY CURRRENT TERM /////////////
                                            $query = " SELECT * FROM `current_season` ";
                                            $run_query = mysqli_query($connection, $query);
                                            if(mysqli_num_rows($run_query) == 1){
                                                while($result = mysqli_fetch_assoc($run_query)){
                                                    $show_current_term = $result['current_term'];
                                                    echo"
                                                        <option>{$show_current_term}</option>
                                                    ";
                                                }
                                            }
                                        ?>
                                    </select>
                                </div>
                                <br />
                            </div>

                            <div class='col-md-3'>
                                <div class='input-group'>
                                    <span class='input-group-addon' id='basic-addon2'>Session:</span>
                                    <select class='form-control' name='current_session'>
                                        <?php
                                            ///////////// POST ACTION TO DISPLAY CURRENT SESSION //////////////
                                            $query = " SELECT * FROM `current_season` ";
                                            $run_query = mysqli_query($connection, $query);
                                            if(mysqli_num_rows($run_query) == 1){
                                                while($result = mysqli_fetch_assoc($run_query)){
                                                    $show_current_session = $result['current_session'];
                                                    echo"
                                                        <option>{$show_current_session}</option>
                                                    ";
                                                }
                                            }
                                        ?>
                                    </select>
                                </div>
                                <br />
                            </div>

                            <div class='col-md-3'>
                                <p id='btnsubmit'><input type='submit' name='subject_register_btn' id='submit' value='REGISTER' class='btn btn-large btn-primary login_btn text-center' /></p>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class='table-responsive'>
                <table class='table table-striped'>
                    <caption class='text-warning'><b>THE TABLE BELOW SHOWS THE SUBJECTS YOU HAVE REGISTERED (!!! PLEASE REGISTER SUBJECTS ONLY WHEN INSTRUCTED TO DO SO !!!)</b>b></caption>
                    <thead>
                        <tr class='info'>
                            <th>S/N</th>
                            <th>SUBJECTS</th>
                            <th>REG NO</th>
                            <th>CLASS</th>
                            <th>TERM</th>
                            <th>ACTION</th>
                        </tr>
                    <thead>
                    <tbody>
                        <?php
                            if($show_current_term === $current_term_checking && $show_current_session === $current_session_checking){
                                ///// QUERY TO DISPLAY ALREADY REGISTERED SUBJECTS OF A PARTICULAR STUDENT IN THE REGISTER SUBJECTS PAGE //////////////
                                $query = " SELECT * FROM `subjects` WHERE `reg_number` ='{$student_reg_number}' AND `class` = '{$student_class}' AND term = '{$current_term_checking}' AND session = '{$current_session_checking}' ";
                                $run_query = mysqli_query($connection, $query);

                                if($run_query == true){
                                    if(mysqli_num_rows($run_query) > 0){

                                        $i = 0;
                                        while($result = mysqli_fetch_assoc($run_query)){
                                            $i++;
                                            $subject_id = $result['id'];
                                            $subject_reg_no = $result['reg_number'];
                                            $subject_name = $result['subjects'];
                                            $subject_class = $result['class'];
                                            $subject_term = $result['term'];

                                            echo"
                                                <tr>
                                                    <td>{$i}</td>
                                                    <td>{$subject_name}</td>
                                                    <td>{$subject_reg_no}</td>
                                                    <td>{$subject_class}</td>
                                                    <td>{$subject_term}</td>
                                                    <td>
                                                        <form method='POST' action>
                                                            <input type='hidden' name='hidden_id' value='$subject_id' />
                                                            <input type='submit' name='del_btn' value='Delete' class='btn btn-danger btn-xs' />
                                                        </form>
                                                    </td>
                                                </tr>
                                            ";
                                        }
                                    }else{
                                        echo "<p class='text-danger'><b>No Subject Registered Yet</b></p>";
                                    }
                                }else{
                                    echo "<p class='text-danger'><b>No Records Found</b></p>";
                                }
                            }
                        ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>