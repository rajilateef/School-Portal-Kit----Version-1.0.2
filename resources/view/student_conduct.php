<?php
	if(isset($_POST['behavioral_upload_btn'])){
		for($j = 0; $j < (int)$_POST["total_num"]; $j++){
			$student_id = inject_checker($connection, $_POST['student_id'][$j]);
			$student_name = inject_checker($connection, $_POST['student_name'][$j]);
			$student_class = inject_checker($connection, $_POST['student_class'][$j]);
			$behavioral_term = inject_checker($connection, $_POST['behavioral_term'][$j]);
			$behavioral_session = inject_checker($connection, $_POST['behavioral_session'][$j]);
			$hand_writing = inject_checker($connection, $_POST['hand_writing'][$j]);
			$musical_skills = inject_checker($connection, $_POST['musical_skills'][$j]);
            $sports = inject_checker($connection, $_POST['sports'][$j]);
			$attentiveness = inject_checker($connection, $_POST['attentiveness'][$j]);
			$attitude_to_work = inject_checker($connection, $_POST['attitude_to_work'][$j]);
			$health = inject_checker($connection, $_POST['health'][$j]);
			$politeness = inject_checker($connection, $_POST['politeness'][$j]);
			$date = date('d/M/Y');
			
			$query = " SELECT * FROM `behavioral` WHERE `class` = '{$student_class}' AND `term` = '{$behavioral_term}' AND `session` = '{$behavioral_session}' ";
			$run_query = mysqli_query($connection, $query);
		}
		if(mysqli_num_rows($run_query) > 0){
			$msg = "<p class='text-danger'><b><span class='glyphicon glyphicon-remove'></span> This Behavioral Record Has Already Been Uploaded</b></p>";
		}else{
			$query = " INSERT INTO `behavioral`(`reg_number`, `name`, `class`, `term`, `session`, `hand_writting`, `musical_skills`, `sports`, `attentiveness`, `attitude_to_work`, `health`, `politeness`, `date`) VALUES ";
			for($j = 0; $j < (int)$_POST["total_num"]; $j++){
            $student_id = inject_checker($connection, $_POST['student_id'][$j]);
			$student_name = inject_checker($connection, $_POST['student_name'][$j]);
			$student_class = inject_checker($connection, $_POST['student_class'][$j]);
			$behavioral_term = inject_checker($connection, $_POST['behavioral_term'][$j]);
			$behavioral_session = inject_checker($connection, $_POST['behavioral_session'][$j]);
			$hand_writing = inject_checker($connection, $_POST['hand_writing'][$j]);
			$musical_skills = inject_checker($connection, $_POST['musical_skills'][$j]);
			$attentiveness = inject_checker($connection, $_POST['attentiveness'][$j]);
			$sports = inject_checker($connection, $_POST['sports'][$j]);
			$attitude_to_work = inject_checker($connection, $_POST['attitude_to_work'][$j]);
			$health = inject_checker($connection, $_POST['health'][$j]);
			$politeness = inject_checker($connection, $_POST['politeness'][$j]);
			$date = date('d/M/Y');
				
				$query .= "('$student_id','$student_name','$student_class','$behavioral_term','$behavioral_session','$hand_writing','$musical_skills','$sports','$attentiveness','$attitude_to_work','$health','$politeness','$date'),";
			}
			$query = rtrim($query,",");
			$run_query = mysqli_query($connection, $query);
			
			if($run_query == true){
                $msg = "<p class='text-success'><b><span class='glyphicon glyphicon-ok'></span>Behavioral Upload Successful</b></p>";
				
			}else{
				$msg = "<p class='text-danger'><b><span class='glyphicon glyphicon-remove'></span> Failed! Try Again</b></p>";
			}
		}
	}
?>
<div class='page-title'>
  <div>
    <h1><i class='fa fa-laptop'></i> Behavioral Analysis</h1>
    <p>Manual Upload</p>
  </div>
  <div>
    <ul class='breadcrumb'>
      <li><a href='modules.php'><i class='fa fa-home fa-lg'></i></a></li>
      <li><a href='#'>Students Behavioral Analysis</a></li>
      <li><a href='#'>Manual Upload</a></li>
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
                    <h4 class = 'txt'>Manually Save Students Behavioral Analysis</h4>
                </div><br/>
                <div class = 'panel-body'>
                    <form method='POST' action=''>
                        <div class='row'>
                            <div class = 'col-xs-12 col-sm-12 col-md-4'>
                                <div class = 'input-group'>
                                    <span class = 'input-group-addon' id = 'sizing-addon2'>CLASS</span>
                                    <select class='form-control' name='class' required>
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
                            <div class = 'col-xs-12 col-sm-12 col-md-4'>
                                <div class = 'input-group'>
                                    <span class = 'input-group-addon' id = 'sizing-addon2'>Term:</span>
                                    <select class='form-control' name='term' required>
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
                            <div class = 'col-xs-12 col-sm-12 col-md-4'>
                                <div class = 'input-group'>
                                    <span class = 'input-group-addon' id = 'sizing-addon2'>Session</span>
                                    <select class='form-control' name='session' required>
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
                        </div><br>
                        <div class='row'>
                            <div class = 'col-xs-12 col-sm-12 col-md-4'>
                                <button type = 'submit' name='behavioral_get_student_btn' class ='btn btn-primary btn-md'><span class = 'glyphicon glyphicon-user'></span>&nbsp; SHOW STUDENTS</button><br/> 
                            </div>
                        </div>
                    </form>
                </div>
        </div>
    </div>
    <?php
        if(isset($_POST['behavioral_get_student_btn'])){
            $class = $_POST['class'];
            $term = inject_checker($connection, $_POST['term']);
            $session = inject_checker($connection, $_POST['session']);

            ////////////////ERROR CHECKING FOR EMPTY FIELDS //////////////////
            if($class === $select){
                $msg = "Error: Please Select the Class for result upload";
            }
            if($term === $select){
                $msg = "Error: Please Select the Term for result upload";
            }
            else{
                $query = " SELECT * FROM `students` WHERE `class` = '{$class}' ";
                $run_query = mysqli_query($connection, $query);
                if(mysqli_num_rows($run_query) > 0){
                    echo "
                        <div class='row'>
                            <div class='col-md-6 col-xs-6'>
                                <h3 style='margin-top: 0;'>ST JOSEPH ATIMAKA</h3>
                                <h4>Behavioral Analysis</h4>
                            </div>

                            <div class='col-md-2 col-xs-2'>
                                <p><b>CLASS: </b>{$class}</p>
                            </div>
                            
                            <div class='col-md-2 col-xs-2'>
                                <p><b>SESSION: </b>{$session}</p>
                            </div>
                            <div class='col-md-2 col-xs-2'>
                                <p><b>TERM: </b>{$term}</p>
                            </div>
                        </div>
                        <div class='row'>
                            <div class='col-md-1 col-sm-1 col-xs-1'>
                                <h6>S/N</h6>
                            </div>

                            <div class='col-md-2 col-sm-2 col-xs-2'>
                                <h6>NAMES</h6>
                            </div>

                            <div class='col-md-2 col-sm-2 col-xs-2'>
                                <h6>REG NO</h6>
                            </div>

                            <div class='col-md-1 col-sm-1 col-xs-1'>
                                <h6>Neatness</h6>
                            </div>

                            <div class='col-md-1 col-sm-1 col-xs-1'>
                                <h6>Musical Skills</h6>
                            </div>

                            <div class='col-md-1 col-sm-1 col-xs-1'>
                                <h6>Sports</h6>
                            </div>
                            
                            <div class='col-md-1 col-sm-1 col-xs-1'>
                                <h6>Attentiveness</h6>
                            </div>
                            
                            <div class='col-md-1 col-sm-1 col-xs-1'>
                                <h6>Punctuality</h6>
                            </div>
                            
                            <div class='col-md-1 col-sm-1 col-xs-1'>
                                <h6>Health</h6>
                            </div>
                            
                            <div class='col-md-1 col-sm-1 col-xs-1'>
                                <h6>Behavior</h6>
                            </div>
                        </div>

                        <form method='POST' action'upload.php?go_upload'>
                    ";
                    $i = 0;$k=1;
                    //echo $k.".  ";
                    while($result = mysqli_fetch_assoc($run_query)){
                        $students_reg_no = $result['reg_number'];
                        $fname = $result['firstname'];
                        $lname = $result['lastname'];
                        $oname = $result['othername'];
                        $name = $fname ." ". $lname ." ". $oname;
                        $student_class = $result['class'];
                        echo"
                            <div class='row'>
                                <div class='col-md-1 col-xs-1'>	
                                    <div class='input-group'>
                                        {$k}
                                    </div>
                                </div>

                                <div class='col-md-2 col-xs-2'>	
                                    <div class='input-group'>
                                        <input id='upload' type='text' name='student_name[]' value='{$name}' placeholder='' class='form-control' readonly />
                                    </div>
                                </div>

                                <div class='col-md-2 col-xs-2'>
                                    <div class='input-group'>
                                        <input id='upload' type='text' name='student_id[]' value='{$students_reg_no}' placeholder='' class='form-control' readonly />
                                    </div>
                                </div>

                                <input id='upload' type='hidden' name='student_class[]' value='{$class}' placeholder='' class='form-control' />

                                <input id='upload' type='hidden' name='behavioral_term[]' value='{$term}' placeholder='' class='form-control' />

                                <input id='upload' type='hidden' name='behavioral_session[]' value='{$session}' placeholder='' class='form-control'  />

                                <div class='col-md-1 col-xs-1'>
                                    <div class='input-group'>
                                        <select id='upload' type='text' name='hand_writing[]' required placeholder='' class='form-control'>
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                            <option>5</option>
                                        </select>
                                    </div>
                                </div>

                                <div class='col-md-1 col-xs-1'>
                                    <div class='input-group'>
                                        <select id='upload' type='text' name='musical_skills[]' required placeholder='' class='form-control'>
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                            <option>5</option>
                                        </select>
                                    </div>
                                </div>
                                
                                <div class='col-md-1 col-xs-1'>
                                    <div class='input-group'>
                                        <select id='upload' type='text' name='sports[]' required placeholder='' class='form-control'>
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                            <option>5</option>
                                        </select>
                                    </div>
                                </div>

                                <div class='col-md-1 col-xs-1'>
                                    <div class='input-group'>
                                        <select id='upload' type='text' name='attentiveness[]' required placeholder='' class='form-control'>
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                            <option>5</option>
                                        </select>
                                    </div>
                                </div>
                                
                                <div class='col-md-1 col-xs-1'>
                                    <div class='input-group'>
                                        <select id='upload' type='text' name='attitude_to_work[]' required placeholder='' class='form-control'>
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                            <option>5</option>
                                        </select>
                                    </div>
                                </div>
                                
                                <div class='col-md-1 col-xs-1'>
                                    <div class='input-group'>
                                        <select id='upload' type='text' name='health[]' required placeholder='' class='form-control'>
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                            <option>5</option>
                                        </select>
                                    </div>
                                </div>
                                
                                <div class='col-md-1 col-xs-1'>
                                    <div class='input-group'>
                                        <select id='upload' type='text' name='politeness[]' required placeholder='' class='form-control'>
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                            <option>5</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        ";
                        $i++;$k++;
                    }
                    echo "
                        <br />
                        <div class='row'>
                            <div class='col-md-1'>
                                <input type='hidden' name='total_num' value='{$i}' />
                            </div>
                            <div class='col-md-3'>
                                <input type='submit' name='behavioral_upload_btn' id='submit' value='Upload' class='btn btn-large btn-primary login_btn text-center noprint' />
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