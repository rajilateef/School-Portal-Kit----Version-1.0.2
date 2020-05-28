<?php
	if(isset($_POST['result_upload_btn'])){
		for($j = 0; $j < (int)$_POST["total_num"]; $j++){
			$student_id = inject_checker($connection, $_POST['student_id'][$j]);
			$student_name = inject_checker($connection, $_POST['student_name'][$j]);
			$student_class = inject_checker($connection, $_POST['student_class'][$j]);
			$result_term = inject_checker($connection, $_POST['result_term'][$j]);
			$result_session = inject_checker($connection, $_POST['result_session'][$j]);
			$result_subject = inject_checker($connection, $_POST['result_subject'][$j]);
			$student_ca = inject_checker($connection, $_POST['student_ca'][$j]);
			$student_project = inject_checker($connection, $_POST['student_project'][$j]);
			$student_exam = inject_checker($connection, $_POST['student_exam'][$j]);
			$student_total = $student_ca + $student_project + $student_exam;
			$date = date('d/M/Y');
			
			$query = " SELECT * FROM `results1` WHERE `class` = '{$student_class}' AND `term` = '{$result_term}' AND `session` = '{$result_session}' AND `subjects` = '{$result_subject}' ";
			$run_query = mysqli_query($connection, $query);
		}
		if(mysqli_num_rows($run_query) > 0){
			$msg = "<p class='text-danger'><b><span class='glyphicon glyphicon-remove'></span> This Result Has Already Been Uploaded</b></p>";
		}else{
			$query = " INSERT INTO `results1`(`class`, `term`, `session`, `reg_number`, `name`, `subjects`, `ca`, `project`, `exam`, `subject_total`, `date_of_upload`) VALUES ";
			for($j = 0; $j < (int)$_POST["total_num"]; $j++){
				$student_id = inject_checker($connection, $_POST['student_id'][$j]);
				$student_name = inject_checker($connection, $_POST['student_name'][$j]);
				$student_class = inject_checker($connection, $_POST['student_class'][$j]);
				$result_term = inject_checker($connection, $_POST['result_term'][$j]);
				$result_session = inject_checker($connection, $_POST['result_session'][$j]);
				$result_subject = inject_checker($connection, $_POST['result_subject'][$j]);
				$student_ca = inject_checker($connection, $_POST['student_ca'][$j]);
				$student_project = inject_checker($connection, $_POST['student_project'][$j]);
				$student_exam = inject_checker($connection, $_POST['student_exam'][$j]);
				$student_total = $student_ca + $student_project + $student_exam;
				$date = date('d/M/Y');
				
				$query .= "('$student_class','$result_term','$result_session','$student_id','$student_name','$result_subject','$student_ca','$student_project','$student_exam','$student_total','$date'),";
			}
			$query = rtrim($query,",");
			$run_query = mysqli_query($connection, $query);
			
			if($run_query == true){
				$i = 1;
				$query1 = "SELECT * FROM `results1` WHERE `subjects` = '{$result_subject}' AND `class` = '{$student_class}' AND `term` = '{$result_term}' AND `session` = '{$result_session}' ORDER BY `subject_total` DESC ";
				$run_query1 = mysqli_query($connection, $query1);
				
				while($outputs = mysqli_fetch_assoc($run_query1)){
					
					$subject_t = $outputs['subject_total'];
					
					
					$sql = "UPDATE results1 SET subject_rank = '{$i}' WHERE subject_total = '{$subject_t}'";
					$run_query2 = mysqli_query($connection, $sql);
					$i++;
					
				}
				if($run_query2 == true){
					$msg = "<p class='text-success'><b><span class='glyphicon glyphicon-ok'></span> Upload Successful</b></p>";
				}else{
					$msg = "<p class='text-danger'><b><span class='glyphicon glyphicon-remove'></span>Upload Failed! Try Again</b></p>";
				}
				
				
			}else{
				$msg = "<p class='text-danger'><b><span class='glyphicon glyphicon-remove'></span> Failed! Try Again</b></p>";
			}
		}
	}
?>

<div class='page-title hidden-print'>
  <div>
    <h1><i class='fa fa-laptop'></i> Result Management</h1>
    <p>Upload Students Result</p>
  </div>
  <div>
    <ul class='breadcrumb'>
      <li><a href='<modules class="php"></modules>'><i class='fa fa-home fa-lg'></i></a></li>
      <li><a href='#'>Result Managemant</a></li>
      <li><a href='#'>Upload Students Result</a></li>
    </ul>
  </div>
</div>

<div class='card'>
    <?php
        if(isset($msg)){
            echo $msg;
        }
    ?>
    <div class='panel panel-primary print_div'>
        <div class='panel-heading noprint'>
            <h4 class='text-center'>Upload Student Results</h4>
        </div>
        <div class='panel-body'>
            <form class='noprint' method='POST' action='' id='result_upload'>
                <div class='row'>
                    <div class='col-md-2'>
                        <div class='input-group'>
                            <span class='input-group-addon' id='basic-addon2'>Class:</span>
                            <select class='form-control' name='result_upload_class'>
                                <option selected ><?php echo $select ?></option>
                                <?php
                                    $query = " SELECT * FROM `classes` ";
                                    $run_query = mysqli_query($connection, $query);
                                    if(mysqli_num_rows($run_query) > 0){
                                        while($result = mysqli_fetch_assoc($run_query)){
                                            $classes = $result['classes'];
                                            echo"
                                                <option>{$classes}</option>
                                            ";
                                        }
                                    }
                                ?>
                            </select>
                        </div>
                    </div>

                    <div class='col-md-3'>
                        <div class='input-group'>
                            <span class='input-group-addon' id='basic-addon2'>Subject:</span>
                            <select class='form-control' name='result_upload_subject'>
                                <option selected ><?php echo $select ?></option>
                                <?php
                                    $query = " SELECT * FROM `school_subjects` ";
                                    $run_query = mysqli_query($connection, $query);

                                    if(mysqli_num_rows($run_query) > 0){
                                        while($result = mysqli_fetch_assoc($run_query)){
                                            $subjects = $result['subjects'];
                                            echo "
                                                <option>{$subjects}</option>
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
                            <select class='form-control' name='result_upload_term'>
                                <option selected ><?php echo $select ?></option>
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
                            <select class='form-control' name='result_upload_session'>
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

                    <div>
                        <input type='submit' name='go_upload' value='GET' class='btn btn-md btn-primary' />
                    </div>

                </div>
            </form>
            <br />


            <?php
                if(isset($_POST['go_upload'])){
                    $result_upload_class = inject_checker($connection, $_POST['result_upload_class']);
                    $result_upload_subject = inject_checker($connection, $_POST['result_upload_subject']);
                    $result_upload_term = inject_checker($connection, $_POST['result_upload_term']);
                    $result_upload_session = inject_checker($connection, $_POST['result_upload_session']);

                    ////////////////ERROR CHECKING FOR EMPTY FIELDS //////////////////
                    if($result_upload_class === $select){
                        $error[] = "Error: Please Select the Class for result upload";
                    }
                    if($result_upload_subject === $select){
                        $error[] = "Error: Please Select the Subject for result upload";
                    }
                    if($result_upload_term === $select){
                        $error[] = "Error: Please Select the Term for result upload";
                    }
                    if(empty($error)){
                        $query = " SELECT * FROM `subjects` WHERE `class` = '{$result_upload_class}' AND `subjects` = '{$result_upload_subject}' AND `term` = '{$result_upload_term}' AND `session` = '{$result_upload_session}' ORDER BY `name` ASC ";
                        $run_query = mysqli_query($connection, $query);
                        if(mysqli_num_rows($run_query) > 0){
                            echo "
                                <div class='row text-center'>
                                    <div class='col-md-12 col-xs-12'>
                                        <h3 style='margin-top: 0;'>{$admin_name}</h3>
                                        <h4>SCORE SHEET</h4>
                                    </div>
                                    
                                    <div class='col-md-3 col-xs-3'>
                                        <p><b>CLASS: </b><br>{$result_upload_class}</p>
                                    </div>
                                    
                                    <div class='col-md-3 col-xs-3'>
                                        <p><b>SESSION: </b><br>{$result_upload_session}</p>
                                    </div>
                                    
                                    <div class='col-md-3 col-xs-3'>
                                        <p><b>TERM: </b><br>{$result_upload_term}</p>
                                    </div>
                                    
                                    <div class='col-md-3 col-xs-3'>
                                        <p><b>SUBJECT: </b><br>{$result_upload_subject}</p>
                                    </div>
                                </div>
                                <div class='table-responsive'>
                                    <table class='table table-bordered'>
                                        <thead>
                                            <tr>
                                                <th>S/N</th>
                                                <th>NAMES</th>
                                                <th>REG NO</th>
                                                <th>CAT (15)</th>
                                                <th>ASSIGN (25)</th>
                                                <th>EXAM (60)</th>
                                            </tr>
                                        </thead>
                                        <tbody>

                                <form method='POST' action'upload.php?go_upload'>
                            ";
                            $i = 0;$k=1;
                            //echo $k.".  ";
                            while($result = mysqli_fetch_assoc($run_query)){
                                $students_reg_no = $result['reg_number'];
                                $student_names = $result['name'];
                                $student_class = $result['class'];
                                $result_term = $result['term'];
                                $result_subject = $result['subjects'];
                                $result_session = $result['session'];
                                echo"
                                        <tr>
                                            <td>{$k}</td>
                                            <td style='padding: 0; margin: 0; width: 30%;'>
                                                <input id='upload' type='text' style='border: 0; font-size: 14px; width: 100%; height: 37px; padding-left: 2%;' name='student_name[]' value='{$student_names}' placeholder=''  readonly />
                                            </td>
                                            <td style='padding: 0; margin: 0; width: 30%;'>
                                               <input id='upload' type='text' style='border: 0; font-size: 14px; width: 100%; height: 37px; padding-left: 2%;' name='student_id[]' value='{$students_reg_no}' placeholder='' readonly /> 
                                            </td>

                                            <input id='upload' type='hidden' name='student_class[]' value='{$student_class}' placeholder='' />
                                            <input id='upload' type='hidden' name='result_term[]' value='{$result_term}' placeholder='' />
                                            <input id='upload' type='hidden' name='result_session[]' value='{$result_session}' placeholder=''  />
                                            <input id='upload' type='hidden' name='result_subject[]' value='{$result_subject}' placeholder='' />

                                            <td style='padding: 0; margin: 0;'>
                                                <input id='upload' type='text' style='width: 100%; font-size: 14px; height: 37px;' name='student_ca[]' required placeholder='' />
                                            </td>
                                            <td style='padding: 0; margin: 0;'>
                                                <input id='upload' type='text' style='width: 100%; font-size: 14px; height: 37px;' name='student_project[]' required placeholder='' />
                                            </td>
                                            <td style='padding: 0; margin: 0;'>
                                                <input id='upload' type='text' style='width: 100%; font-size: 14px; height: 37px;' name='student_exam[]' required placeholder='' />
                                            </td>
                                        </tr>
                                ";
                                $i++;$k++;
                            }
                            echo "
                                            </tbody>
                                        </table>
                                    </div>
                                <br />
                                <div class='row'>
                                    <div class='col-md-1'>
                                        <input type='hidden' name='total_num' value='{$i}' />
                                    </div>
                                    <div class='col-md-3'>
                                        <input type='submit' name='result_upload_btn' id='submit' value='Upload' class='btn btn-large btn-primary login_btn text-center noprint' />
                                        <button type='button' class='btn btn-default noprint' onclick='window.print()' value='print a div!'><span class='glyphicon glyphicon-print'></span> Print </button>
                                    </div>
                                </div>
                            </form>
                            ";
                        }else{
                            echo "<p class='text-danger'><b>No records found !!!</b></p>";
                        }
                    }
                }
            ?>
        </div>
    </div>
</div>