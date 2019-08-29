<?php
	require_once("../../public/connection.php");
	require_once("../../public/functions.php");
?>
<?php
	//////////////// DEFAULT NULL VALUES ///////////////
	$error = array();
	$date = date('d/M/Y');
	$select = "--select--";
	$year = date('Y');
?>

<?php
    if(isset($_POST['request_btn'])){
        $request_name = inject_checker($connection, $_POST['request_name']);
        $request_school_name = inject_checker($connection, $_POST['request_school_name']);
        $request_school_position = $_POST['request_school_position'];
        $request_email = inject_checker($connection, $_POST['request_email']);
        $request_phone = inject_checker($connection, $_POST['request_phone']);
        $request_msg = inject_checker($connection, $_POST['request_msg']);
        $date = date("Y-m-d H:i:s");
        
        if(empty($request_name) || empty($request_school_name) || empty($request_email) || empty($request_phone) || empty($request_msg)){
            $error_msg = "All fields are required";
        }else{
            $query = " INSERT INTO portal_request(name, school_name, position_held, email, phone, message, request_date)
                                    VALUES('{$request_name}', '{$request_school_name}', '{$request_school_position}', '{$request_email}', '{$request_phone}', '{$request_msg}', '{$date}') ";
            $run_query = mysqli_query($connection, $query);
            
            if($run_query == true){
                $msg = "Requset Sent";
            }else{
                $error_msg = "Error Sending Request";
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
    <link rel='stylesheet' type='text/css' href='../../assets/css/main.css'>
    <link rel='stylesheet' type='text/css' href='../../assets/css/defined.css'>
    <link rel="shortcut icon" href="../../img/ic.png">
    <!-- Font-icon css-->
    <link rel="stylesheet" href="../../assets/css/font-awesome-4.7.0/css/font-awesome.css">
    <title>Portal Demo Details</title>
    <link rel="shortcut icon" href="img/ic.png">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries-->
    <!--if lt IE 9
    script(src='https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js')
    script(src='https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js')
    -->
  </head>
  <body class="sidebar-mini fixed">
   <br />
    <div class="wrapper">
        <div class="row">
            <div class="col-md-3">
                
            </div>
          <div class="col-md-6">
            <?php
                if(isset($error_msg)){
                    echo"
                        <div class='alert alert-danger alert-dismissible' role='alert'>
                            <b style='font-family: Segoe UI;'>{$error_msg}</b>
                            <button type='button' class='close' data-dismiss='alert' aria-label='Close'>
                            <span aria-hidden='true'>&times;</span>
                            <span class='sr-only'>Close</span>
                            </button>
                        </div>
                    ";
                }

                if(isset($msg)){
                    echo"
                        <div class='alert alert-success alert-dismissible' role='alert'>
                            <b style='font-family: Segoe UI;'>{$msg}</b>
                            <button type='button' class='close' data-dismiss='alert' aria-label='Close'>
                            <span aria-hidden='true'>&times;</span>
                            <span class='sr-only'>Close</span>
                            </button>
                        </div>
                    ";
                }
            ?>
            <div class="card">
              <h3 class="card-title">Request Portal Demo Login Details</h3>
              <div class="card-body">
                <form method="POST" action="">
                  <div class="form-group">
                    <label class="control-label">Name</label>
                    <input class="form-control" name="request_name" type="text" placeholder="Enter full name">
                  </div>
                  <div class="form-group">
                    <label class="control-label">School Name</label>
                    <input class="form-control" name="request_school_name" type="text" placeholder="Enter full name">
                  </div>
                  <div class="form-group">
                    <label class="control-label">Position in School</label>
                    <select name="request_school_position" class="form-control">
                        <option>School Owner</option>
                        <option>Principal</option>
                        <option>Teacher</option>
                    </select>
                  </div>
                  <div class="form-group">
                    <label class="control-label">Email</label>
                    <input class="form-control" name="request_email" type="email" placeholder="Enter email address">
                  </div>
                  <div class="form-group">
                    <label class="control-label">Phone Number</label>
                    <input class="form-control" name="request_phone" type="number" placeholder="Enter email address">
                  </div>
                  <div class="form-group">
                    <label class="control-label">Message</label>
                    <textarea class="form-control" name="request_msg" rows="4" placeholder="Enter your address"></textarea>
                  </div>
                  
                  <div class='form-group btn-container'>
                    <button name="request_btn" class="btn btn-primary icon-btn"><i class="fa fa-fw fa-lg fa-check-circle"></i>Request</button>&nbsp;&nbsp;&nbsp;<a class="btn btn-default icon-btn" href="../../index.php"><i class="fa fa-fw fa-lg fa-times-circle"></i>Cancel</a>
                  </div>
                </form>
              </div>
            </div>
          </div>
          
            <div class="col-md-3">
                
            </div>
          
          <div class="clearix"></div>
        </div>
    </div>
    <!-- Javascripts-->
    <script src="js/jquery-2.1.4.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/plugins/pace.min.js"></script>
    <script src="js/main.js"></script>
  </body>
</html>