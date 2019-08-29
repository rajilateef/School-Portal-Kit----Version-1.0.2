<?php
	require_once("../public/connection.php");
	require_once("../public/functions.php");
?>
<?php
	//////////////// DEFAULT NULL VALUES ///////////////
	$error = array();
	$date = date('d/M/Y');
	$select = "--select--";
	$year = date('Y');
?>
<?php
    /// Query for Users to login /////
    if(isset($_POST['login_btn'])){
        $login_id = inject_checker($connection, $_POST['login_id']);
		$login_password = inject_checker($connection, $_POST['login_password']);
		$login_as = inject_checker($connection, $_POST['login_as']);
		
		if(empty($login_id)){
			$msg = "Email OR Reg no is Required";
		}
		elseif(empty($login_password)){
			$msg = "Password is Required";
		}
        elseif($login_as === $select){
            $msg = "Sorry! Choose who you want to login as";
        }
        elseif($login_as === "Admin"){
            $query = " SELECT * FROM `users` WHERE `email` = '{$login_id}' AND `password` = '{$login_password}' ";
			$run_query = mysqli_query($connection, $query);
			if(mysqli_num_rows($run_query) == 1){
				session_start();
				
				while($result = mysqli_fetch_assoc($run_query)){
					$user_id = $result['id'];
					$_SESSION['admin'] = $user_id;
					
					header("Location:../resources/view/modules.php");
				}
			}else{
                $msg = "Login failed! Incorrect user details";
            }
        }
        
        elseif($login_as === "Student"){
            $query = " SELECT * FROM `students` WHERE `reg_number` = '{$login_id}' AND `gen_password` = '{$login_password}' ";
			$run_query = mysqli_query($connection, $query);

			if(mysqli_num_rows($run_query) == 1){
				session_start();
				
				while($result = mysqli_fetch_assoc($run_query)){
					$student_id = $result['id'];
					$_SESSION['student'] = $student_id;
					
					header("Location:../resources/view/student_dashboard.php");
				}
			}else{
                $msg = "Login failed! Incorrect student details";
            }
        }
        
        elseif($login_as === "Accountant"){
            $query = " SELECT * FROM `accountants` WHERE `email` = '{$login_id}' AND `password` = '{$login_password}' ";
			$run_query = mysqli_query($connection, $query);
            
            if(mysqli_num_rows($run_query) == 1){
				session_start();
				
				while($result = mysqli_fetch_assoc($run_query)){
					$accountant_id = $result['id'];
					$_SESSION['accountant'] = $accountant_id;
					
					header("Location:../resources/view/accountant_dashboard.php");
				}
			}else{
                $msg = "Login failed! Incorrect student details";
            }
        }
        
        elseif($login_as === "Principal"){
            $query = " SELECT * FROM `principal` WHERE `username` = '{$login_id}' AND `password` = '{$login_password}' ";
			$run_query = mysqli_query($connection, $query);
            
            if(mysqli_num_rows($run_query) == 1){
				session_start();
				
				while($result = mysqli_fetch_assoc($run_query)){
					$principal_id = $result['id'];
					$_SESSION['principal'] = $principal_id;
					
					header("Location:../resources/view/principal_dashboard.php");
				}
			}else{
                $msg = "Login failed! Incorrect student details";
            }
        }
        
        elseif($login_as === "Teacher"){
            $query = " SELECT * FROM `teachers` WHERE `username` = '{$login_id}' AND `password` = '{$login_password}' ";
			$run_query = mysqli_query($connection, $query);
            
            if(mysqli_num_rows($run_query) == 1){
				session_start();
				
				while($result = mysqli_fetch_assoc($run_query)){
					$teacher_id = $result['id'];
					$_SESSION['teacher'] = $teacher_id;
					
					header("Location:../resources/view/teacher_dashboard.php");
				}
			}else{
                $msg = "Login failed! Incorrect student details";
            }
        }
    }
?>

<!DOCTYPE html>
<html>
  <head>
    <meta charset='utf-8'>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <!-- CSS-->
    <link rel='stylesheet' type='text/css' href='../assets/css/main.css'>
    <link rel="shortcut icon" href="../img/ic.png">
    <!-- Font-icon css-->
    <link rel="stylesheet" href="../assets/css/font-awesome-4.7.0/css/font-awesome.css">
    <title>SPK - Login</title>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries-->
    <!--if lt IE 9
    script(src='https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js')
    script(src='https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js')
    -->
  </head>
  <body>
    <section class='material-half-bg'>
      <div class='cover'></div>
    </section>
    <section class='login-content'>
      <div class='logo'>
        <h1>School Portal Kit</h1>
        <?php
            if(isset($msg)){
                echo "
                    <div class='alert alert-danger alert-dismissible' role='alert'>
                        <b style='font-family: Segoe UI;'>{$msg}</b>
                        <button type='button' class='close' data-dismiss='alert' aria-label='Close'>
                            <span aria-hidden='true'>&times;</span>
                            <span class='sr-only'>Close</span>
                        </button>
                    </div>
                ";
            }
        ?>
      </div>
      <div class='login-box'>
        <form method='POST' class='login-form' action='login.php'>
          <h3 class='login-head'><i class='fa fa-lg fa-fw fa-user'></i>SIGN IN</h3>
          <div class='form-group'>
            <label class='control-label'>USERNAME</label>
            <input name='login_id' class='form-control' type='text' placeholder='Email' autofocus>
          </div>
          <div class='form-group'>
            <label class='control-label'>PASSWORD</label>
            <input name='login_password' class='form-control' type='password' placeholder='Password'>
          </div>
          <div class='form-group'>
            <label class='control-label'>LOGIN AS</label>
            <select name='login_as' class='form-control' type='password' placeholder='Password'>
                <option><?php echo $select; ?></option>
                <option>Admin</option>
                <option>Student</option>
                <option>Principal</option>
                <option>Accountant</option>
                <option>Teacher</option>
            </select>
          </div>
          <div class='form-group'>
            <div class='utility'>
              <div class='animated-checkbox'>
                <label class='semibold-text'>
                    <a href="../index.php" class='label-text'><i class='fa fa-home'></i> Home</a>
                </label>
              </div>
              <p class='semibold-text mb-0'><a data-toggle='flip'>Forgot Password ?</a></p>
            </div>
          </div>
          <br />
          
          <div class='form-group btn-container'>
            <button name='login_btn' class='btn btn-primary btn-block'><i class='fa fa-sign-in fa-lg fa-fw'></i>SIGN IN</button>
          </div>
        </form>
        <form class='forget-form' action='index.html'>
          <h3 class='login-head'><i class='fa fa-lg fa-fw fa-lock'></i>Forgot Password ?</h3>
          <div class='form-group'>
            <label class='control-label'>EMAIL</label>
            <input class='form-control' type='text' placeholder='Email'>
          </div>
          <div class='form-group btn-container'>
            <button class='btn btn-primary btn-block'><i class='fa fa-unlock fa-lg fa-fw'></i>RESET</button>
          </div>
          <div class='form-group mt-20'>
            <p class='semibold-text mb-0'><a data-toggle='flip'><i class='fa fa-angle-left fa-fw'></i> Back to Login</a></p>
          </div>
        </form>
      </div>
    </section>
  </body>
  <script src='js/jquery-2.1.4.min.js'></script>
  <script src='js/bootstrap.min.js'></script>
  <script src='js/plugins/pace.min.js'></script>
  <script src='js/main.js'></script>
</html>