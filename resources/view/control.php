<?php
    ob_start();
?>
<?php
	require_once("../../public/control_session.php");
	require_once("../../public/connection.php");
	require_once("../../public/functions.php");
	//require_once("staff_dashboard_processor.php");
?>
<?php
	//////////////// DEFAULT NULL VALUES ///////////////
	$error = array();
	$failed = array();
	$date = date('d/M/Y');
	$select = "--select--";
?>
<!DOCTYPE html>
<html>
    <head>
    <meta charset='utf-8'>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <!-- CSS-->
    <link rel='stylesheet' type='text/css' href='../../assets/css/main.css'>
    <link rel='stylesheet' type='text/css' href='../../assets/css/defined.css'>
    <link rel='stylesheet' type='text/css' href='../../assets/css/defined.css'>
    <link rel="shortcut icon" href="../../img/ic.png">
    <!-- Font-icon css-->
    <link rel="stylesheet" href="../../assets/css/font-awesome-4.7.0/css/font-awesome.css">
    <title>SPK - CONTROL</title>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries-->
    <!--if lt IE 9
    script(src='https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js')
    script(src='https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js')
    -->
    <script type="text/javascript">
        window.onload = initClock;

        function initClock() {
          var now = new Date();
          var hr  = now.getHours();
          var min = now.getMinutes();
          var sec = now.getSeconds();
          if (min < 10) min = "0" + min;  // insert a leading zero
          if (sec < 10) sec = "0" + sec;
          document.getElementById('clockDisplay').innerHTML
                = hr + ":" + min + ":" + sec;
          setTimeout('initClock()', 500);
        }
    </script>
  </head>
	<!--<head>
		<meta charset='utf-8' />
		<meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0' />
		<meta name='description" content="student registration' />
		<link type='text/css' rel='stylesheet' href='css/bootstrap.css' />
		<link type='text/css' rel='stylesheet' href='css/font-awesome.css' />
        <link rel="shortcut icon" href="img/icon.png">
		<link rel='stylesheet' href='css/defined.css' />
		<script type='text/javascript' src='js/jquery-1.11.3.min.js'></script>
		<script src='js/bootstrap.js'></script>
	</head>-->
	<body>
		<div class='container-fluid'>
			<header class='row' id='header'>
				<div class='col-md-2'>
				
				</div>
				
				<div class='col-md-8 text-center'>
					<h1 style='color: #fff;'>School Portal Kit</h1>
				</div>
				
				<div class='col-md-2'>
				
				</div>
			</header>
			<div class='container'>
				<br />
				<div class='row'>
					<div class='col-md-3'>
					
					</div>
					
					<div class='col-md-6'>
						<?php
							///////////// POST ACTION TO GENERATE OR UPDATE CONTROL ACCESS /////////////
							if(isset($_POST['control_access_btn'])){
								$control_access = inject_checker($connection, $_POST['control_access']);
								
								if(empty($control_access)){
									echo "<p class='text-danger'><b>Please This Field can not be empty</b></p>";
								}else{
									$query = " SELECT * FROM `access` ";
									$run_query = mysqli_query($connection, $query);
									if(mysqli_num_rows($run_query) == 1){
										$query = " UPDATE `access` SET `control_access` = '{$control_access}' ";
										$run_query = mysqli_query($connection, $query);
										
										if($run_query == true){
											echo "<p class='text-success'><b>Control Access Changed Successfully</b></p>";
										}else{
											echo "<p class='text-danger'><b>Changing of Control Access Failed</b></p>";
										}
									}else{
										$query = " INSERT INTO `access`(`control_access`, `date_created`) VALUES('$control_access', '$date') ";
										$run_query = mysqli_query($connection, $query);
										
										if($run_query == true){
											echo "<p class='text-success'><b>Control Access Created Successfully</b></p>";
										}else{
											echo "<p class='text-danger'><b>Creating of Control Access Failed</b></p>";
										}
									}
								}
							}
						?>
						<div class='panel panel-success'>
							<div class='panel-heading'>
								<h3>Manage Control Access</h3>
							</div>
							<div class='panel-body'>
								<form method='POST' action='control.php'>
									<div class='input-group'>
										<span class='input-group-addon' id='basic-addon2'>CONTROL ACCESS:</span>
										<input type='password' name='control_access' placeholder='Generate and Update Control Access' class='form-control' />
									</div>
									<br />
									
									<div>
										<input type='submit' name='control_access_btn' value='Create' class='btn btn-success' />
										<input type='submit' name='end_access_btn' value='Terminate Access' class='btn btn-warning' />
									</div>
								</form>
								<?php
									if(isset($_POST['end_access_btn'])){
										unset($_SESSION['control']);
										header("Location:../../login000/secured.php");
										exit;
									}
								?>
							</div>
						</div>
					</div>
					
					<div class='col-md-3'>
					
					</div>
				</div>
			</div>
		</div>
	</body>
</html>