<?php
	///////////////////////// POST ACTION TO REGISTER NEW ACCOUNTANT WHEN REGISTER BUTTON IS CLICKED /////////////////////////////////
	if(isset($_POST['accountant_reg_btn'])){
		$control_access = inject_checker($connection, strtolower($_POST['control_access']));
		$accountant_title = inject_checker($connection, $_POST['accountant_title']);
		$accountant_fullname = inject_checker($connection, $_POST['accountant_fullname']);
		$accountant_address = inject_checker($connection, $_POST['accountant_address']);
		$accountant_phone = inject_checker($connection, $_POST['accountant_phone']);
		$accountant_state = inject_checker($connection, $_POST['accountant_state']);
		$accountant_lga = inject_checker($connection, $_POST['accountant_lga']);
		$accountant_nationality = inject_checker($connection, $_POST['accountant_nationality']);
		$accountant_email = inject_checker($connection, $_POST['accountant_email']);
		$accountant_password = inject_checker($connection, $_POST['accountant_password1']);
		$confirm_password = inject_checker($connection, $_POST['accountant_password2']);
		
		////////////////// ERROR-CHECKING IF SPECIFIED FIELD IS EMPTY ////////////////////
		if(empty($control_access)){
			$msg = "<p class='text-danger'><b>Error: You Need Control Access to Add Another Accountant</b></p>";
		}
		elseif(empty($accountant_title)){
			$msg = "<p class='text-danger'><b>Error: Title required</b></p>";
		}
		elseif(empty($accountant_fullname)){
			$msg = "<p class='text-danger'><b>Error: Fullname required</b></p>";
		}
		elseif(empty($accountant_phone)){
			$msg = "<p class='text-danger'><b>Error: Phone required</b></p>";
		}
		elseif(empty($accountant_email)){
			$msg = "<p class='text-danger'><b>Error: Email Address Required</b></p>";
		}
		elseif(empty($accountant_password)){
			$msg = "<p class='text-danger'><b>Error: Password required</b></p>";
		}
		elseif($accountant_password !== $confirm_password){
			$msg = "<p class='text-danger'><b>Error: Password do not match !</b></p>";
		}else{
			$query = " SELECT * FROM `access` WHERE `control_access` ='{$control_access}' ";
			$run_query = mysqli_query($connection, $query);
			
			if(mysqli_num_rows($run_query) == 1){
				$query = " SELECT * FROM `accountants` WHERE `email` = '{$accountant_email}' ";
				$run_query = mysqli_query($connection, $query);
				if(mysqli_num_rows($run_query) > 0){
					$msg = "<p class='text-danger'><b>Error: Email address already exist !</b></p>";
				}else{
					$query = "INSERT INTO `accountants`(`title`, `fullname`, `address`, `phone`, `state`, `lga`, `nationality`, `email`, `password`, `date_of_reg`)
						VALUES('$accountant_title', '$accountant_fullname','$accountant_address', '$accountant_phone', '$accountant_state', '$accountant_lga', '$accountant_nationality', '$accountant_email', '$accountant_password', '$date')";
						
					$run_query = mysqli_query($connection, $query);
					if($run_query == true){
						$msg = "<p class='text-success'><b>Accountant Registration Successful</b></p>";
					}else{
						$msg = "<p class='text-danger'><b>... Error: Registration not successfull ...</b></p>";
					}
				}
			}else{
				$msg = "<p class='text-danger'><b>Incorrect Control Access</b></p>";
			}
		}
	}
?>
 

<div class="page-title">
  <div>
    <h1><i class="fa fa-calendar"></i> Accountant</h1>
    <p>Add new accountant</p>
  </div>
  <div>
    <ul class="breadcrumb">
      <li><a href='modules.php'><i class="fa fa-home fa-lg"></i></a></li>
      <li><a href="#">Add accountant</a></li>
    </ul>
  </div>
</div>

<div class="card">
    <?php
        if(isset($msg)){
            echo $msg;
        }
    ?>
    <div class = 'panel panel-primary ch'>
        <div class = 'panel-heading'>					
            <h4 class='text-center'>Register a new accountant</h4>
        </div>
        <div class = 'panel-body'>
            <p class='text-warning'><b>NOTE: To Register a new Accountant, You Need a Control Access. Please Contact Our User Support ...</b></p>
            <form method='POST' action=''>
                <div class='input-group'>
                    <span class='input-group-addon' id='basic-addon2'>Control Access</span>
                    <input type='password' name='control_access' placeholder='Type Admin Control Access to enable you create a new admin! ...' class='form-control' />
                </div>
                <br />
                <div>
                    <label class='checkbox-inline'>
                        <input type='radio' name='accountant_title' id='title1' value='mr' checked /> Mr
                    </label>

                    <label class='checkbox-inline'>
                        <input type='radio' name='accountant_title_title' id='title2' value='mrs' /> Mrs
                    </label>

                    <label class='checkbox-inline'>
                        <input type='radio' name='accountant_title' id='title3' value='miss' /> Miss
                    </label>
                </div>
                <br />
                <div class='input-group'>
                    <span class='input-group-addon' id='basic-addon2'>Fullname</span>
                    <input type='text' placeholder='Type Your Fullname' class='form-control' name='accountant_fullname' />
                </div>
                <br />

                <div class='input-group'>
                    <span class='input-group-addon' id='basic-addon2'>Home Address:</span>
                    <textarea rows='3' name='accountant_address' required class='form-control' placeholder='...' aria-describedby='basic-addon2'></textarea>
                </div>
                <br/>

                <div class='input-group'>
                    <span class='input-group-addon' id='basic-addon2'>Phone</span>
                    <input type='text' placeholder='Type Phone Number' class='form-control' name='accountant_phone' />
                </div>
                <br />

                <div class='input-group'>
                    <span class='input-group-addon' id='basic-addon2'>State:</span>
                    <select class='form-control' name='accountant_state'>
                        <option selected ><? echo $select; ?></option>
                        <?php
                            $state_array = array("Abia", "Adamawa", "Akwa ibom", "Anambra", "Bauchi", "Bayelsa", "Benue", "Borno", "Cross River", "Delta", "Ebonyi", "Edo", "Ekiti", "Enugu", "Gombe", "Imo", "Jigawa", "Kaduna", "Kano", "Katsina", "Kebbi", "Kogi", "Kwara", "Lagos", "Nasarawa", "Niger", "Ogun", "Ondo", "Osun", "Oyo", "Plateau", "Rivers", "Sokoto", "Taraba", "Yobe", "Zamfara", "FCT Abuja");

                            foreach($state_array as $state){
                                echo "<option>{$state}</option><br>";
                            }
                        ?>
                    </select>
                </div>
                <br />

                <div class='input-group'>
                    <span class='input-group-addon' id='basic-addon2'>LGA:</span>
                    <input type='text' name='accountant_lga' placeholder='Type Your LGA' class='form-control' />
                </div>
                <br/>

                <div class='input-group'>
                    <span class='input-group-addon' id='basic-addon2'>Nationality:</span>
                    <select class='form-control' name='accountant_nationality'>
                        <option selected ><?php echo $select; ?></option>
                        <option>Nigerian</option>
                        <option>Non-nigerian</option>
                    </select>
                </div>
                <br />

                <div class='input-group'>
                    <span class='input-group-addon' id='basic-addon2'>Email</span>
                    <input type='text' placeholder='Type Email Address' class='form-control' name='accountant_email' />
                </div>
                <br />

                <div class='input-group'>
                    <span class='input-group-addon' id='basic-addon2'>Password</span>
                    <input type='password' placeholder='Type password' class='form-control' name='accountant_password1' />
                </div>
                <br />

                <div class='input-group'>
                    <span class='input-group-addon' id='basic-addon2'>Confirm Password</span>
                    <input type='password' placeholder='Retype Password' class='form-control' name='accountant_password2' />
                </div>
                <br />
                <p id='btnsubmit'><input type='submit' name='accountant_reg_btn' id='submit' value='Register' class='btn btn-large btn-primary login_btn text-center' /></p>
            </form>
            <button type='button' class='btn btn-default' onclick='window.print()' value='print a div!'><span class='glyphicon glyphicon-print'></span> Print</button>
        </div>
    </div>
</div>
