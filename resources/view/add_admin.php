<?php
	///////////////////////// POST ACTION TO REGISTER NEW USER WHEN REGISTER BUTTON IS CLICKED /////////////////////////////////
	if(isset($_POST['user_reg_btn'])){
		$control_access = inject_checker($connection, strtolower($_POST['control_access']));
		$user_title = inject_checker($connection, $_POST['user_title']);
		$user_fullname = inject_checker($connection, $_POST['user_fullname']);
		$user_address = inject_checker($connection, $_POST['user_address']);
		$user_phone = inject_checker($connection, $_POST['user_phone']);
		$user_state = inject_checker($connection, $_POST['user_state']);
		$user_lga = inject_checker($connection, $_POST['user_lga']);
		$user_nationality = inject_checker($connection, $_POST['user_nationality']);
		$user_email = inject_checker($connection, $_POST['user_email']);
		$user_password = inject_checker($connection, $_POST['user_password1']);
		$confirm_password = inject_checker($connection, $_POST['user_password2']);
		
		////////////////// ERROR-CHECKING IF SPECIFIED FIELD IS EMPTY ////////////////////
		if(empty($control_access)){
			$msg = "<p class='text-danger'><b>Error: You Need Control Access to Add Another User</b></p>";
		}
		elseif(empty($user_title)){
			$msg = "<p class='text-danger'><b>Error: Title required</b></p>";
		}
		elseif(empty($user_fullname)){
			$msg = "<p class='text-danger'><b>Error: Fullname required</b><p>";
		}
		elseif(empty($user_phone)){
			$msg = "<p class='text-danger'><b>Error: Phone required</b></p>";
		}
        elseif(empty($user_email)){
			$msg = "<p class='text-danger'><b>Error: Email Address Required</b></p>";
		}
		elseif(!empty($user_email)){
			if(single_email_validator($user_email)){
				$query = " SELECT * FROM `users` WHERE `email` = '{$user_email}' ";
				$run_query = mysqli_query($connection, $query);
				if(mysqli_num_rows($run_query) > 0){
					$msg = "<p class='text-danger'><b>Error: Email address already exist !</b></p>";
				}else{
                    if(empty($user_password)){
                        $msg = "<p class='text-danger'><b>Error: Password required</b></p>";
                    }
                    elseif($user_password !== $confirm_password){
                            $msg = "<p class='text-danger'><b>Error: Password do not match !</b></p>";
                    }else{
                        $query = " SELECT * FROM `access` WHERE `control_access` ='{$control_access}' ";
                        $run_query = mysqli_query($connection, $query);

                        if(mysqli_num_rows($run_query) == 1){
                            $query = "INSERT INTO `users`(`title`, `fullname`, `address`, `phone`, `state`, `lga`, `nationality`, `email`, `password`, `date_of_reg`)
                                    VALUES('$user_title', '$user_fullname','$user_address', '$user_phone', '$user_state', '$user_lga', '$user_nationality', '$user_email', '$user_password', '$date') ";

                            $run_query = mysqli_query($connection, $query);
                            if($run_query == true){
                                $msg = "<p class='text-success'><b>Admin Registration Successfull</b></p>";
                            }else{
                                $msg = "<p class='text-danger'><b>... Error: Registration not successfull ...</b></p>";
                            }
                        }else{
                            $msg = "<p class='text-danger'><b>Incorrect Control Access</b></p>";
                        }
                    }
                }
			}else{
				$msg = "<p class='text-danger'><b>Error: Invalid Email address entered !</b></p>";
			}
		}
		
	}
?>

<div class="page-title">
  <div>
    <h1><i class="fa fa-calendar"></i> Admin</h1>
    <p>Add New Admin</p>
  </div>
  <div>
    <ul class="breadcrumb">
      <li><a href='modules.php'><i class="fa fa-home fa-lg"></i></a></li>
      <li><a href="#">Add New Admin</a></li>
    </ul>
  </div>
</div>

<div class="card">
    <?php
        if(isset($msg)){
            echo $msg;
        }
    ?>
    <div class='panel panel-primary'>
        <div class='panel-heading'>
            <h4 class='log-text'>Register New Admin</h4>
        </div>

        <div class='panel-body'>
            <p class='text-warning'><b>NOTE: To Register a new Admin or User, You Need a Control Access. Please Contact SPK User Support ...</b></p>
            <form method='POST' action=''>
                <div class='input-group'>
                    <span class='input-group-addon' id='basic-addon2'>Control Access</span>
                    <input type='password' name='control_access' placeholder='Type Admin Control Access to enable you create a new admin! ...' class='form-control' />
                </div>
                <br />
                <div>
                    <label class='checkbox-inline'>
                        <input type='radio' name='user_title' id='title1' value='mr' checked /> Mr
                    </label>

                    <label class='checkbox-inline'>
                        <input type='radio' name='user_title' id='title2' value='mrs' /> Mrs
                    </label>

                    <label class='checkbox-inline'>
                        <input type='radio' name='user_title' id='title3' value='miss' /> Miss
                    </label>
                </div>
                <br />
                <div class='input-group'>
                    <span class='input-group-addon' id='basic-addon2'>Fullname</span>
                    <input type='text' placeholder='Type Your Fullname' class='form-control' name='user_fullname' />
                </div>
                <br />

                <div class='input-group'>
                    <span class='input-group-addon' id='basic-addon2'>Home Address:</span>
                    <textarea rows='3' name='user_address' required class='form-control' placeholder='...' aria-describedby='basic-addon2'></textarea>
                </div>
                <br/>

                <div class='input-group'>
                    <span class='input-group-addon' id='basic-addon2'>Phone</span>
                    <input type='text' placeholder='Type Phone Number' class='form-control' name='user_phone' />
                </div>
                <br />

                <div class='input-group'>
                    <span class='input-group-addon' id='basic-addon2'>State:</span>
                    <select class='form-control' name='user_state'>
                        <option selected ><?php echo $select; ?></option>
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
                    <textarea rows='' name='user_lga' required class='form-control' placeholder='...' aria-describedby='basic-addon2'></textarea>
                </div>
                <br/>

                <div class='input-group'>
                    <span class='input-group-addon' id='basic-addon2'>Nationality:</span>
                    <select class='form-control' name='user_nationality'>
                        <option selected ><?php echo $select; ?></option>
                        <option>Nigerian</option>
                        <option>Non-nigerian</option>
                    </select>
                </div>
                <br />

                <div class='input-group'>
                    <span class='input-group-addon' id='basic-addon2'>Email</span>
                    <input type='text' placeholder='Type Email Address' class='form-control' name='user_email' />
                </div>
                <br />

                <div class='input-group'>
                    <span class='input-group-addon' id='basic-addon2'>Password</span>
                    <input type='password' placeholder='Type password' class='form-control' name='user_password1' />
                </div>
                <br />

                <div class='input-group'>
                    <span class='input-group-addon' id='basic-addon2'>Confirm Password</span>
                    <input type='password' placeholder='Retype Password' class='form-control' name='user_password2' />
                </div>
                <br />
                <p id='btnsubmit'><input type='submit' name='user_reg_btn' id='submit' value='Register' class='btn btn-large btn-primary login_btn text-center' /></p>
            </form>
            <button type='button' class='btn btn-default' onclick='window.print()' value='print a div!'><span class='glyphicon glyphicon-print'></span> Print</button>
        </div>

    </div>
</div>
