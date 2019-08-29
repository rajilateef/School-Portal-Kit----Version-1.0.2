<?php
	require_once("public/connection.php");
	require_once("public/functions.php");
?>

<?php
    $date = date('d/m/Y');
    $year = date('Y');
?>

<?php
    if(isset($_POST['msg_btn'])){
        $name = inject_checker($connection, $_POST['name']);
        $email = inject_checker($connection, $_POST['email']);
        $message = inject_checker($connection, $_POST['message']);
        $date = date("Y-m-d H:i:s");
        
        if(empty($name) || empty($email) || empty($message)){
            $error_msg = "All fields are required";
        }else{
            $query = " INSERT INTO mail(name, email, message, mail_date) VALUES('{$name}', '{$email}', '{$message}', '{$date}') ";
            $run_query = mysqli_query($connection, $query);
            
            if($run_query == true){
                $msg = "Message Sent";
            }else{
                $error_msg = "Sending Message Failed";
            }
        }
    }
?>
<!DOCTYPE html>
<html>
	<head>
		<title>School Portal Kit</title>
		<!--Let browsers know website is optimized for mobile-->
		<meta charset="utf-8"/>
		<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	    <meta http-equiv="x-ua-compatible" content="ie=edge">
	    <!-- Font Awesome -->
	    <link rel="stylesheet" href="assets/css/font-awesome-4.7.0/css/font-awesome.css">
		<!--Import Google Icon Font-->
		<link rel="stylesheet" href="https://font.googleapis.com/icon?family=Material+Icons">
		<!--Import Materialize.css-->
		<link rel="stylesheet" type="text/css" href="assets/css/materialize.min.css" media = "screen,projection"/>
		<link rel="shortcut icon" href="img/ic.png">
		
	</head>
	<body>
        <div class="navbar-fixe">
            <nav class="nav-extended">
                <div class="nav-wrapper teal darken-2">
                    <a href="index.html" class="brand-logo" style="margin-left: 20px; font-family: Segoe UI; font-weight: bold; letter-spacing: 4px;">SPK</a>

                    <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="fa fa-chevron-circle-left" style="font-size: 30px;"></i></a>
                    
                    <ul id="nav-mobile" class="right hide-on-med-and-down">
                        <li><a href="#about">About</a></li>
                        <li><a href="#features">Features</a></li>
                        <li><a href="#">FAQs</a></li>
                        <li><a href="resources/view/login_request.php">Request for Demo Login</a></li>
                        <a class="waves-effect waves-light btn green lighten-5 teal-text" style="font-weight: bold; border-radius: 0;" href="login000/login.php">SPK DEMO</a>
                        <!--<a class="waves-effect waves-light btn orange black-text " style="font-weight: bold;" href="create_account.html">Sign Up</a> -->
                    </ul>
                    
                    <ul class="side-nav teal" id="mobile-demo">
                        <li><a class="white-text" href="#about">About</a></li>
                        <li><a class="white-text" href="#features">Features</a></li>
                        <li><a class="white-text" href="#">FAQs</a></li>
                        <li><a class="white-text" href="resources/view/login_request.php">Request for Demo Login</a></li>
                         <a class="waves-effect waves-light btn green lighten-5 teal-text" style="font-weight: bold; border-radius: 0;" href="login000/login.php">SPK DEMO</a>
                    </ul>
                </div>
            </nav>
        </div>
		<div>
			<div>
				<div class="slider">
				    <ul class="slides">
				      <li>
				        <img src="img/index1.jpg"> <!-- random image -->
				      </li>
				      <li>
				        <img src="img/index3.jpg"> <!-- random image -->
				      </li>
				      <li>
				        <img src="img/index4.jpg"> <!-- random image -->
				      </li>
				      <li>
				        <img src="img/index5.jpg"> <!-- random image -->
				      </li>
				    </ul>
				  </div>
			</div>
		</div>
		<main>
			<div>
				<div class="row lighten-5" id="about" style="margin-top: 2%;">
			        <div class="col s12 m12 l12">
			          <div class="">
			            <div class="card-content black-text">
			              	<span class="card-title"><h5 class="teal-text text-darken-4" style="font-weight: bold; text-align: center;">ABOUT</h5></span>
			            	<p style="text-align: center;">
			            	    School Portal Kit is dedicated to providing improved education solution through the use of innovative technology. Our mission is to leverage on ICT to bring educational services to improve learning, enhance proper management and accountability in schools as well as supply of ICT equipment and hands-on practical training to students.
			          		</p>
			            </div>
			          </div>
			        </div>
			    </div>
			    <div class="row blue-grey darken-4">
			    	<div class="col s12 m12 l12" id="features">
			    		<div class="">
			    			<div class="white-text">
			    				<span class="card-title"><h5 style="text-align: center; font-weight: bold; margin-top: 50px;">VISION</h5></span>
			    				<p style="text-align: center;">
			    					We aspire to alleviate schools, teachers and school owners from the stress involved in managing their schools. These stress ranging from result computation and errors, students accountabilty and management records, influx of money in the school system, expenses management, staff payment, school fee management, class attendance online management etc. We want the educational system to be more stable by enabling teachers give in their best in making sure that students get the best and quality education they deserve.
			    				</p>
			    			</div>
			    		</div>
			    	</div>
			    </div>
			    <div class="teal lighten-5" id="invest">
			    	<h5 class="teal-text text-darken-4" style="text-align: center; font-weight: bold; padding-top: 10px;">AMAZING FEATURES</h5>
                    <div class="row">
                        <div class="col s12 m6">
                            <div class="card z-depth-4">
                                <div class="card-content black-text">
                                    <span class="card-title">User Friendly Dashboard</span>
                                    <div class="card-image">
                                      <img src="img/admin.PNG">
                                    </div>
                                    <p>
                                        Elegant interface to access all tools and modules at a glance.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col s12 m6">
                            <div class="card z-depth-4">
                                <div class="card-content black-text">
                                    <span class="card-title">Behavioral Analysis</span>
                                    <div class="card-image">
                                      <img src="img/behavior.PNG">
                                    </div>
                                    <p>
                                        Analyse and record student behavioral qualities and attributes.
                                    </p>
                                </div>
                              </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col s12 m6">
                            <div class="card z-depth-4">
                                <div class="card-content black-text">
                                    <span class="card-title">Mobile Responsive</span>
                                    <div class="card-image">
                                      <img src="img/mobile.jpg">
                                    </div>
                                    <p>
                                        Design automatically adjust to fit in any device.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col s12 m6">
                            <div class="card z-depth-4">
                                <div class="card-content black-text">
                                    <span class="card-title">School Fee Management and Tracking</span>
                                    <div class="card-image">
                                      <img src="img/fee.PNG">
                                    </div>
                                    <p>
                                        Monitor fee payment and check oustanding payments.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col s12 m6">
                            <div class="card z-depth-4">
                                <div class="card-content black-text">
                                    <span class="card-title">Class Attendance Management</span>
                                    <div class="card-image">
                                      <img src="img/attendance.PNG">
                                    </div>
                                    <p>
                                        Process students class attendance automatically online.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col s12 m6">
                            <div class="card z-depth-4">
                                <div class="card-content black-text">
                                    <span class="card-title">Student Population and Statistic</span>
                                    <div class="card-image">
                                      <img src="img/popu.PNG">
                                    </div>
                                    <p>
                                        Know how many students are in your school at a glance.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
			    </div>
			</div>
		</main>
		<div class="fixed-action-btn">
		    <a class="btn-floating btn-large teal darken-2">
		      <i class="fa fa-hand-o-up"></i>
		    </a>
		    <ul>
		      <li><a class="btn-floating red"><i class="fa fa-youtube"></i></a></li>
		      <li><a class="btn-floating blue darken-4"><i class="fa fa-facebook"></i></a></li>
		      <li><a class="btn-floating green"><i class="fa fa-google-plus"></i></a></li>
		      <li><a class="btn-floating blue lighten-3"><i class="fa fa-twitter"></i></a></li>
		    </ul>
		</div>
		<footer class="page-footer  grey darken-4">
          	<div class="container">
            	<div class="row">
              		<div class="col l6 s12">
                        <?php
                            if(isset($msg)){
                                echo "<p><b>{$msg}</b></p>";
                            }

                            if(isset($error_msg)){
                                echo "<p><b>{$error_msg}</b></p>";
                            }
                        ?>
                		<h5 class="teal-text text-accent-4">Contact Us</h5>
                		<form method="POST" action="">
							<div class="input-field">
								<input type="text" name="name" class="validate" id="first_name" required="true">
								<label for="name">Name</label>
							</div>
							<div class="input-field">
								<input type="email" name="email" class="validate" id="email" required="true">
								<label for="email">Email</label>
							</div>
							<div class="input-field">
                                <textarea type="text" name="message" class="materialize-textarea" required="true" id="acct_number"></textarea>
								<label for="message">Message</label>
							</div>
							<input type="submit" name="msg_btn" value="Send" class="waves-effect waves-light btn teal">
						</form><br>
                		<!--<p class="grey-text text-lighten-4" style="font-size: 12px;">Contracts for Difference ("CFDs") are leveraged products and carry a significant risk of loss to your capital, as prices may move rapidly against you and you may be required to make further payments to keep any trades open. These products are not suitable for all clients, therefore please ensure you fully understand the risks and seek independent advice.</p>-->
              		</div>
              		<div class="col l4 offset-l2 s12">
                		<h5 class="teal-text text-accent-4">Site Map</h5>
                		<ul>
                  			<li><a class="grey-text text-lighten-3" href="#about">About</a></li>
                  			<li><a class="grey-text text-lighten-3" href="#features">Features</a></li>
                  			<li><a class="grey-text text-lighten-3" href="#!">FAQs</a></li>
                  			<li><a class="grey-text text-lighten-3" href="login.php">Get Started</a></li>
                		</ul>
              		</div>
            	</div>
          	</div>
          	<div class="footer-copyright blue-grey darken-4">
           		<div class="container teal-text text-accent-4">
            		&#169; <?php echo $year; ?> Copyright School Portal Kit ~~~ Product of <a class="orange-text" href="http://www.toxaswift.com">Toxaswift Solutions</a>
            		<a class="right teal-text text-accent-4" href="#!"><b>More Links</b></a>
            	</div>
        	</div>
        </footer>
		
		<!-- /Start your project here-->

	    <!-- SCRIPTS -->
	    <!-- JQuery -->
	    <script type="text/javascript" src="assets/js/jquery-3.1.1.min.js"></script>
		<script type="text/javascript" src="assets/js/materialize.js"></script>
		<script>
			$(document).ready(function(){
		      $('.slider').slider();
			  $(".dropdown-button").dropdown();
			  $(".button-collapse").sideNav();
            
		    });
		</script>
		<script type="text/javascript" src="js/particles.min.js"></script>
	</body>
</html>