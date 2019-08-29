<?php
	ob_start();
?>
<?php
	require_once("../../public/student_session.php");
	require_once("../../public/connection.php");
	require_once("../../public/functions.php");
	//require_once("staff_dashboard_processor.php");
?>
<?php
    if(!isset($_SESSION['student'])){
        exit('STOP DOING THAT');
    }
?>
<?php
	//////////////// DEFAULT NULL VALUES ///////////////
	date_default_timezone_set('Africa/Lagos');
	$date = date('d-M-Y');
	$select = "--select--";
	$oge = time();
	$time = date('H:i:s', $oge);
	$error = array();
	$year = date('Y');
?>
<?php
	//////////////////// GET USERS DATA FROM DATABASE AND DISPLAY IT ON DASHBOARD IF LOGIN IS SUCCESSFUL USING SESSION FROM LOGIN PAGE ////////////////
	$query = " SELECT * FROM `students` WHERE id = '{$_SESSION['student']}' ";
	$run_query = mysqli_query($connection, $query);
	if(mysqli_num_rows($run_query) == 1){
		while($result = mysqli_fetch_assoc($run_query)){
			$student_id = $result['id'];
            $student_gender = ucfirst($result['gender']);
            $surname = ucfirst($result['firstname']);
            $lastname = ucfirst($result['lastname']);
            $othername = ucfirst($result['othername']);
            $student_class = $result['class'];
            $student_dob = $result['dob'];
			$student_mob = $result['mob'];
			$student_yob = $result['yob'];
			$student_contact_phone = $result['contact_phone'];
            $nearest_contact1 = $result['nearest_contact1'];
            $nearest_contact2 = $result['nearest_contact2'];
            $nearest_contact3 = $result['nearest_contact3'];
            $health_conditions = $result['health_conditions'];
			$student_address = ucwords($result['address']);
			$student_state = ucwords($result['state']);
			$student_nationality = ucwords($result['nationality']);
			$student_class = $result['class'];
			$student_reg_number = $result['reg_number'];
			$student_sponsor_name = ucwords($result['sponsor_name']);
			$student_sponsor_phone = $result['sponsor_phone'];
			$student_sponsor_relationship = ucfirst($result['relationship']);
			$father_name = $result['father_name'];
			$father_occupation = $result['father_occupation'];
			$father_phone = $result['father_phone'];
			$mother_name = $result['mother_name'];
			$mother_occupation = $result['mother_occupation'];
			$mother_phone = $result['mother_phone'];
			$previous_school = $result['previous_school'];
			$last_class_passed = $result['last_class_passed'];
			$student_password = $result['gen_password'];
			$student_passport = "./".$result['passport'];
			$student_reg_date = $result['date_of_reg'];
			$student_reg_day = substr($student_reg_date, 0, 2);
			$student_reg_month = substr($student_reg_date, 3, 3);
			$student_reg_year = substr($student_reg_date, 7, 4);
			$current_year = date('Y');
			$student_age = $current_year - $student_yob;
			
		}
	}
?>
<?php
    ////////// POST ACTION TO VIEW ALL THE UPLOADED ADMINISTRATIVE INFORMATION ////////////
    $query = " SELECT * FROM `administratives` ";
    $run_query = mysqli_query($connection, $query);

    if(mysqli_num_rows($run_query) > 0){
        while($result = mysqli_fetch_assoc($run_query)){
            $administratives_id = $result['id'];
            $school_name = $result['school_name'];
            $school_address = $result['school_motto'];
            $school_logo = $result['school_logo'];
            $school_stamp = $result['school_stamp'];
        }
    }
?>
<?php
    $query = " SELECT * FROM `current_season` ";
    $run_query = mysqli_query($connection, $query);
    if(mysqli_num_rows($run_query) == 1){
        while($result = mysqli_fetch_assoc($run_query)){
            $current_term = $result['current_term'];
            $current_session = $result['current_session'];
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
    <title><?php echo $lastname; ?> ~ School Portal Kit</title>
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
  <body class='sidebar-mini fixed'>
    <div class='wrapper'>
      <!-- Navbar-->
      <header class='main-header hidden-print'><a class='logo' href='index.html'>School Portal Kit</a>
        <nav class='navbar navbar-static-top'>
          <!-- Sidebar toggle button--><a class='sidebar-toggle' href='#' data-toggle='offcanvas'></a>
          <!-- Navbar Right Menu-->
          <div class='navbar-custom-menu'>
            <ul class='top-nav'>
              <!--Notification Menu-->
              <li class='dropdown notification-menu'><a class='dropdown-toggle' href='#' data-toggle='dropdown' aria-expanded='false'><?php echo $date; ?> <span id='clockDisplay'></span></a>
                <ul class='dropdown-menu'>
                  <li class='not-head'>You have 4 new notifications.</li>
                  <li><a class='media' href='javascript:;'><span class='media-left media-icon'><span class='fa-stack fa-lg'><i class='fa fa-circle fa-stack-2x text-primary'></i><i class='fa fa-envelope fa-stack-1x fa-inverse'></i></span></span>
                      <div class='media-body'><span class='block'>Lisa sent you a mail</span><span class='text-muted block'>2min ago</span></div></a></li>
                  <li><a class='media' href='javascript:;'><span class='media-left media-icon'><span class='fa-stack fa-lg'><i class='fa fa-circle fa-stack-2x text-danger'></i><i class='fa fa-hdd-o fa-stack-1x fa-inverse'></i></span></span>
                      <div class='media-body'><span class='block'>Server Not Working</span><span class='text-muted block'>2min ago</span></div></a></li>
                  <li><a class='media' href='javascript:;'><span class='media-left media-icon'><span class='fa-stack fa-lg'><i class='fa fa-circle fa-stack-2x text-success'></i><i class='fa fa-money fa-stack-1x fa-inverse'></i></span></span>
                      <div class='media-body'><span class='block'>Transaction xyz complete</span><span class='text-muted block'>2min ago</span></div></a></li>
                  <li class='not-footer'><a href='#'>See all notifications.</a></li>
                </ul>
              </li>
              <!-- User Menu-->
              <li class='dropdown'><a class='dropdown-toggle' href='#' data-toggle='dropdown' role='button' aria-haspopup='true' aria-expanded='false'><i class='fa fa-user fa-lg'></i></a>
                <ul class='dropdown-menu settings-menu'>
                  <li><a href='page-user.html'><i class='fa fa-cog fa-lg'></i> Settings</a></li>
                  <li><a href='page-user.html'><i class='fa fa-user fa-lg'></i> Profile</a></li>
                  <li><a href='student_dashboard.php?logout'><i class='fa fa-sign-out fa-lg'></i> Logout</a></li>
                </ul>
              </li>
            </ul>
          </div>
        </nav>
      </header>
      <!-- Side-Nav-->
      <aside class='main-sidebar hidden-print'>
        <section class='sidebar'>
          <div class='user-panel'>
            <div class='pull-left image'><img class='img-circle' src='<?php echo $student_passport; ?>' alt='User Image'></div>
            <div class='pull-left info'>
              <p class='text-center'><?php echo $surname ." " .$lastname ; ?></p>
              <p class='designation text-center'><b>Student</b></p>
            </div>
          </div>
          <!-- Sidebar Menu-->
            <ul class='sidebar-menu'>
            <li class='active'><a href='student_dashboard.php?dashboard'><i class='fa fa-dashboard'></i><span>Dashboard</span></a></li>
            <li><a href='student_dashboard.php?profile'><i class='fa fa-user'></i><span>Profile</span></a></li>
            <li><a href='student_dashboard.php?subjects_to_offer'><i class='fa fa-book'></i><span>Subjects you are to offer</span></a></li>
            <li><a href='student_dashboard.php?student_register_subject'><i class='fa fa-upload'></i><span>Register Subjects</span></a></li>
            <li><a href='student_dashboard.php?student_check_result'><i class='fa fa-eye'></i><span>Check Result</span></a></li>
            <li><a href='student_dashboard.php?student_print_slip'><i class='fa fa-print'></i><span>Print Slip</span></a></li>
            <li><a href='student_dashboard.php?view_class_members'><i class='fa fa-users'></i><span>My Class Members</span></a></li>
            <li><a href='student_dashboard.php?calendar'><i class='fa fa-calendar'></i><span>Calendar</span></a></li>
            <li><a href='student_dashboard.php?student_reset_password'><i class='fa fa-key'></i><span>Password Reset</span></a></li>
            </ul>
        </section>
      </aside>
      <div class='content-wrapper'>
        <?php
            if(isset($_GET['profile'])){
                require("student_profile.php");
            }
            elseif(isset($_GET['subjects_to_offer'])){
                require("subjects_to_offer.php");
            }
            elseif(isset($_GET['student_register_subject'])){
                require("student_register_subject.php");
            }
            elseif(isset($_GET['student_check_result'])){
                require("student_check_result.php");
            }
            elseif(isset($_GET['student_print_slip'])){
                require("student_print_slip.php");
            }
            elseif(isset($_GET['view_class_members'])){
                require("view_class_members.php");
            }
            elseif(isset($_GET['calendar'])){
                require("calendar.php");
            }
            elseif(isset($_GET['student_reset_password'])){
                require("student_reset_password.php");
            }
            elseif(isset($_GET['result'])){
                require("result.php");
            }
            elseif(isset($_GET['logout'])){
                SESSION_UNSET(); // this unset every session and thus logs the user out
                redirect_to("../../login000/login.php");
            }
            else{
                echo"
                    <div class='page-title'>
                      <div>
                        <h1><i class='fa fa-graduation-cap'></i> {$school_name}</h1>
                        <p class='text-center'>{$current_term} - {$current_session} Session</p>
                      </div>
                      <div>
                        <ul class='breadcrumb'>
                          <li><i class='fa fa-home fa-lg'></i></li>
                          <li><a href='student_dashboard.php?dashboard'>Dashboard</a></li>
                        </ul>
                      </div>
                    </div>

                    <div class='row'>
                        <div class='col-md-3'>
                            <a href='student_dashboard.php?profile'>
                                <div class='card'>
                                    <h4 class='card-title text-center'>My Profile</h4>
                                    <center><img src='../../img/stude.jpg' class='img-responsive' style='width: 30%;' /></center>
                                </div>
                            </a>
                        </div>

                        <div class='col-md-3'>
                            <a href='student_dashboard.php?subjects_to_offer'>
                                <div class='card'>
                                    <h4 class='card-title text-center'>Subject to Offer</h4>
                                    <center><img src='../../img/subject.png' class='img-responsive' style='width: 30%;' /></center>
                                </div>
                            </a>
                        </div>

                        <div class='col-md-3'>
                            <a href='student_dashboard.php?student_register_subject'>
                                <div class='card'>
                                    <h4 class='card-title text-center'>Register Subjects</h4>
                                    <center><img src='../../img/subject_reg.png' class='img-responsive' style='width: 30%;' /></center>
                                </div>
                            </a>
                        </div>

                        <div class='col-md-3'>
                            <a href='student_dashboard.php?student_check_result'>
                                <div class='card'>
                                    <h4 class='card-title text-center'>Check Result</h4>
                                    <center><img src='../../img/result5.jpg' class='img-responsive' style='width: 30%;' /></center>
                                </div>
                            </a>
                        </div>
                    </div>

                    <div class='row'>
                        <div class='col-md-3'>
                            <a href='student_dashboard.php?student_print_slip'>
                                <div class='card'>
                                    <h4 class='card-title text-center'>Print Slip</h4>
                                    <center><img src='../../img/print.png' class='img-responsive' style='width: 30%;' /></center>
                                </div>
                            </a>
                        </div>

                        <div class='col-md-3'>
                            <a href='student_dashboard.php?view_class_members'>
                            <div class='card'>
                                <h4 class='card-title text-center'>View Classmates</h4>
                                <center><img src='../../img/classmates.jpg' class='img-responsive' style='width: 30%;' /></center>
                            </div>
                            </a>
                        </div>

                        <div class='col-md-3'>
                            <a href='student_dashboard.php?calendar'>
                                <div class='card'>
                                    <h4 class='card-title text-center'>Calendar</h4>
                                    <center><img src='../../img/ah.png' class='img-responsive' style='width: 30%;' /></center>
                                </div>
                            </a>
                        </div>

                        <div class='col-md-3'>
                            <a href='student_dashboard.php?student_reset_password'>
                                <div class='card'>
                                    <h4 class='card-title text-center'>Reset Password</h4>
                                    <center><img src='../../img/password.png' class='img-responsive' style='width: 30%;' /></center>
                                </div>
                            </a>
                        </div>
                    </div>
                ";
            }
        ?>
      </div>
        <footer>
            <div class='container-fluid'>
                <p class='text-center' style='color: #666;'>Copyright &#169; <?php echo $year ?> | Product of <a href='http://www.toxaswift.com'>Toxaswift Nigeria</a> | <span class='glyphicon glyphicon-envelope'></span> toxaswift2000@gmail.com</p>
            </div>
        </footer>    
    </div>
    <script src="../../assets/js/jquery-2.1.4.min.js"></script>
    <script src="../../assets/js/bootstrap.min.js"></script>
    <script src="../../assets/js/plugins/pace.min.js"></script>
    <script src="../../assets/js/main.js"></script>
    <script type="text/javascript" src="../../assets/js/plugins/moment.min.js"></script>
    <script type="text/javascript" src="../../assets/js/plugins/jquery-ui.custom.min.js"></script>
    <script type="text/javascript" src="../../assets/js/plugins/fullcalendar.min.js"></script>
    <script type="text/javascript">
      $(document).ready(function() {
      
      	$('#external-events .fc-event').each(function() {
      
      		// store data so the calendar knows to render an event upon drop
      		$(this).data('event', {
      			title: $.trim($(this).text()), // use the element's text as the event title
      			stick: true // maintain when user navigates (see docs on the renderEvent method)
      		});
      
      		// make the event draggable using jQuery UI
      		$(this).draggable({
      			zIndex: 999,
      			revert: true,      // will cause the event to go back to its
      			revertDuration: 0  //  original position after the drag
      		});
      
      	});
      
      	$('#calendar').fullCalendar({
      		header: {
      			left: 'prev,next today',
      			center: 'title',
      			right: 'month,agendaWeek,agendaDay'
      		},
      		editable: true,
      		droppable: true, // this allows things to be dropped onto the calendar
      		drop: function() {
      			// is the "remove after drop" checkbox checked?
      			if ($('#drop-remove').is(':checked')) {
      				// if so, remove the element from the "Draggable Events" list
      				$(this).remove();
      			}
      		}
      	});
      
      
      });
    </script>
  </body>
</html>