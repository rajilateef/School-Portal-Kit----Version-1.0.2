<?php
	///////////////////// POST ACTION TO PUBLISH STUDENTS RESULTS //////////////////
	if(isset($_POST['publish_result_btn'])){
		$publish_result_class = inject_checker($connection, $_POST['publish_result_class']);
		$publish_result_term = inject_checker($connection, $_POST['publish_result_term']);
		$publish_result_session = inject_checker($connection, $_POST['publish_result_session']);
		
        $publish_result_class_arm = substr($publish_result_class, 0, 3);
        
		if($publish_result_class_arm === "JSS"){
			$query = " SELECT * FROM `jss_subject_number` ";
			$run_query = mysqli_query($connection, $query);
			
			if(mysqli_num_rows($run_query) == 1){
				while($result = mysqli_fetch_assoc($run_query)){
					$number_of_subjects = $result['number_of_subject'];
				}
			}
		}elseif($publish_result_class_arm === "SSS"){
			$query = " SELECT * FROM `sss_subject_number` ";
			$run_query = mysqli_query($connection, $query);
			
			if(mysqli_num_rows($run_query) == 1){
				while($result = mysqli_fetch_assoc($run_query)){
					$number_of_subjects = $result['number_of_subject'];
				}
			}
		}
		
		//////////// ERROR CHECKING FOR EMPTY FIELDS /////////////////////
		if($publish_result_class === $select){
			$msg = "<p class='text-danger'><b>Error: Please Select Class to Publish Result</b></p>";
		}
		elseif($publish_result_term === $select){
			$msg = "<p class='text-danger'><b>Error: Please Select Term to Publish Result</b></p>";
		}
		else{

			////QUERY TO SELECT STUDENTS IN A PARTICULAR CLASS FROM DATABASE WHERE ALL STUDENTS INFO ARE STORED USING //////////////////
			$query = " SELECT * FROM `students` WHERE `class` = '{$publish_result_class}' ";
			$run_query = mysqli_query($connection, $query);
			
			if(mysqli_num_rows($run_query) > 0){
				while($result = mysqli_fetch_assoc($run_query)){
					$get_subjects_total = 0;
					$reg_number = $result['reg_number'];
					
					/////////////// QUERY TO SELECT ALL STUDENTS IN A PARTICULAR CLASS IN A PARTICULAR TERM AND SESSION FROM THE RESULTS TABLE ////////////////
					$query1 = " SELECT * FROM `results1` WHERE `reg_number` = '{$reg_number}' AND `class` = '{$publish_result_class}' AND `term` = '{$publish_result_term}' AND `session` = '{$publish_result_session}' ";
					$run_query1 = mysqli_query($connection, $query1);
					
					if(mysqli_num_rows($run_query1) > 0){
						while($result = mysqli_fetch_assoc($run_query1)){
							$student_id = $result['id'];
							$student_reg_number = $result['reg_number'];
							$student_name = $result['name'];
							$student_class = $result['class'];
							$result_term_pub = $result['term'];
							$result_session_pub = $result['session'];
							$student_subjects_total = $result['subject_total'];
							$get_subjects_total += $student_subjects_total;
						}
						$student_subjects_average = $get_subjects_total / $number_of_subjects;
						
						$query_check = " SELECT * FROM `positions` WHERE  `class` = '{$publish_result_class}' AND `reg_number` = '{$student_reg_number}' AND `term` = '{$result_term_pub}' AND `session` = '{$result_session_pub}' ";
						$run_query_check = mysqli_query($connection, $query_check);
						
						/////////////// ERROR CHECKING TO AVOID RESULTS FROM BEING PUBLISHED TWICE //////////////
						if(mysqli_num_rows($run_query_check) > 0){
							$msg = "<p class='text-danger'><b>Error: This Result has Already Been Published!</b></p>";
						}else{
							$query2 = " INSERT INTO `positions`(`reg_number`, `name`, `class`, `term`, `session`, `students_sub_total`, `students_sub_average`, `upload_date`) 
										VALUES('$student_reg_number', '$student_name', '$student_class', '$result_term_pub', '$result_session_pub', '$get_subjects_total', '$student_subjects_average', '$date') ";
							$run_query2 = mysqli_query($connection, $query2);
							
							if($run_query2 == true){
								$i = 1;
								$query3 = " SELECT * FROM `positions` WHERE `class` = '{$student_class}' AND `term` = '{$result_term_pub}' AND `session` = '{$result_session_pub}' ORDER BY `students_sub_average` DESC ";
								$run_query3 = mysqli_query($connection, $query3);
								if(mysqli_num_rows($run_query3) > 0){
									while($result = mysqli_fetch_assoc($run_query3)){
										$student_reg_no = $result['reg_number'];
										$sub_avg = $result['students_sub_average'];
										$sub_avg_class = $result['class'];
										$sub_avg_term = $result['term'];
										$sub_avg_session = $result['session'];
										
										$query4 = " UPDATE `positions` SET `class_position` = '{$i}' WHERE `reg_number` = '{$student_reg_no}' AND `class` = '$sub_avg_class' AND `term` = '{$sub_avg_term}' AND `session` = '{$sub_avg_session}' ";
										$run_query4 = mysqli_query($connection, $query4);
										
										if($run_query4 == true){
											$msg = "<p text-success><b>Result Publishing Successful</b></p>";
										}else{
											$msg = "<p class='text-danger'><b>Result Publishing Failed!</b></p>";
										}
										$i++;
									}
								}else{
									$msg = "<p class='text-danger'><b>No result records available for ranking!</b></p>";
								}
							}else{
								$msg = "<p class='text-danger'><b>Positions Failed to Publish</b></p>";
							}
						}
					}else{
						$msg = "<p class='text-danger'><b>!!! The results of Some Students in {$publish_result_class} were not uploaded and can not be published. This may be because they failed to register thier Subjects for {$publish_result_term} in {$publish_result_session} Session.</b></p> ";
					}
				}
			}else{
				$msg = "<p class='text-danger'><b>No Students Have been registered into {$publish_result_class}</b></p>";
			}
		}
	}
?>

<div class='page-title'>
  <div>
    <h1><i class='fa fa-laptop'></i> Result Management</h1>
    <p>Publish Result</p>
  </div>
  <div>
    <ul class='breadcrumb'>
      <li><a href='modules.php'><i class='fa fa-home fa-lg'></i></a></li>
      <li><a href='#'>Result Managemant</a></li>
      <li><a href='#'>Publish Uploaded Result </a></li>
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
            <h4 class='text-center'>Publish Uploaded Results</h4>
        </div>
        <div class='panel-body'>
            <p class='text-warning'><b>NOTE: Before Publishing The Result of any Class, Make Sure that All the results for each subject for that particular Class have been Uploaded Properly. Click On Result Upload Tab to view Uploaded Results ...</b></p>
            <form method='POST' action=''>
                <div class='row'>
                    <div class='col-md-3'>
                        <div class='input-group'>
                            <span class='input-group-addon' id='basic-addon2'>Student Class:</span>
                            <select class='form-control' name='publish_result_class'>
                                <option selected ><?php echo $select; ?></option>
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
                    </div>

                    <div class='col-md-3'>
                        <div class='input-group'>
                            <span class='input-group-addon' id='basic-addon2'>Term:</span>
                            <select class='form-control' name='publish_result_term'>
                                <option selected ><?php echo $select; ?></option>
                                <?php
                                    $term_array = array("First Term", "Second Term", "Third Term");

                                    foreach($term_array as $term){
                                        echo "<option>{$term}</option><br>";
                                    }
                                ?>
                            </select>
                        </div>
                    </div>

                    <div class='col-md-3'>
                        <div class='input-group'>
                            <span class='input-group-addon' id='basic-addon2'>Session:</span>
                            <select class='form-control' name='publish_result_session'>
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
                    </div>

                    <div class='col-md-2'>
                        <input type='submit' name='publish_result_btn' value='PUBLISH' class='btn btn-primary' />
                    </div>

                </div>
            </form>
            <br />
        </div>
    </div>
</div>