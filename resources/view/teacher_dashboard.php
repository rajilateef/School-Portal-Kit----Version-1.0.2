<?php
	ob_start();
?>
<?php
	require_once("../../public/teacher_session.php");
	require_once("../../public/connection.php");
	require_once("../../public/functions.php");
	//require_once("staff_dashboard_processor.php");
?>
<?php
    if(!isset($_SESSION['teacher'])){
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
	$query = " SELECT * FROM `teachers` WHERE id = '{$_SESSION['teacher']}' ";
	$run_query = mysqli_query($connection, $query);
	if(mysqli_num_rows($run_query) == 1){
		while($result = mysqli_fetch_assoc($run_query)){
			$teacher_id = $result['id'];
			$teacher_username = $result['username'];
			$teacher_fname = ucfirst($result['firstname']);
			$teacher_lname = ucfirst($result['lastname']);
			$teacher_address = ucwords($result['address']);
			$teacher_phone = $result['phone'];
			$teacher_state = ucwords($result['state']);
			$teacher_lga = ucwords($result['lga']);
			$teacher_country = ucwords($result['country']);
			$teacher_email = $result['email'];
            $teacher_status = $result['status'];
            $dob = $result['dob'];
            $mob = $result['mob'];
            $yob = $result['yob'];
            $sex =$result['sex'];
            $employment_date = $result['employment_date'];
            $position = $result['teacher_position'];
            $subject = $result['subject_to_teach'];
            $date_registered = $result['date_registered'];
            $date_of_birth = $dob ." ". $mob ." ". $yob;
			$name = $teacher_fname ." ". $teacher_lname;
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
            $admin_name = $result['school_name'];
            $admin_motto = $result['school_motto'];
            $admin_logo = $result['school_logo'];
            $admin_stamp = $result['school_stamp'];
            //echo "<img src='$admin_logo' />";
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
    <title><?php echo $name; ?> ~ School Portal Kit</title>
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
                  <li><a href='teacher_dashboard.php?logout'><i class='fa fa-sign-out fa-lg'></i> Logout</a></li>
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
            <div class='pull-left image'><img class='img-circle' src='../../img/teacher.png' alt='User Image'></div>
            <div class='pull-left info'>
              <p><?php echo $name; ?></p>
              <p class='designation text-center'><b>Teacher</b></p>
            </div>
          </div>
          <!-- Sidebar Menu-->
          <ul class='sidebar-menu'>
            <li class='active'><a href='teacher_dashboard.php?dashboard'><i class='fa fa-dashboard'></i><span>Dashboard</span></a></li>
            <li><a href='teacher_dashboard.php?teacher_profile'><i class='fa fa-user'></i><span>Profile</span></a></li>
            <li><a href='teacher_dashboard.php?class_attendance'><i class='fa fa-pie-chart'></i><span>Class Attendance</span></a></li>
            <li><a href='teacher_dashboard.php?view_attendance_records'><i class='fa fa-eye'></i><span>View Attendance Records</span></a></li>
            <li><a href='teacher_dashboard.php?view_students'><i class='fa fa-eye'></i><span>View Students</span></a></li>
            <li class='treeview'><a href='#'><i class='fa fa-edit'></i><span>Behavioral Analysis</span><i class='fa fa-angle-right'></i></a>
              <ul class='treeview-menu'>
                <li><a href='teacher_dashboard.php?students_conducts'><i class='fa fa-circle-o'></i> Manually Handled</a></li>
                <li><a href='teacher_dashboard.php?export_conduct_sheet'><i class='fa fa-circle-o'></i> Export Behavior Excel Sheet</a></li>
                <li><a href='teacher_dashboard.php?upload_conducts'><i class='fa fa-circle-o'></i> Upload Excel Behavioral</a></li>
                <li><a href='teacher_dashboard.php?view_conducts'><i class='fa fa-circle-o'></i> View Uploaded Behavioral</a></li>
              </ul>
            </li>
            <li class='treeview'><a href='#'><i class='fa fa-file-text'></i><span>Subject Management</span><i class='fa fa-angle-right'></i></a>
              <ul class='treeview-menu'>
                <li><a href='teacher_dashboard.php?register_student_subject'><i class='fa fa-circle-o'></i> Register Student Subject</a></li>
                <li><a href='teacher_dashboard.php?view_registered_subjects'><i class='fa fa-circle-o'></i> View Registered Subject</a></li>
              </ul>
            </li>
            <li class='treeview'><a href='#'><i class='fa fa-book'></i><span>Result Management</span><i class='fa fa-angle-right'></i></a>
              <ul class='treeview-menu'>
                <li><a href='teacher_dashboard.php?upload_result'><i class='fa fa-circle-o'></i> Upload Result Directly</a></li>
                <!-- <li><a href='teacher_dashboard.php?excel_result_upload'><i class='fa fa-circle-o'></i> Upload Result Via Excel</a></li> -->
				<li><a href='teacher_dashboard.php?view_uploaded_results'><i class='fa fa-circle-o'></i> View Uploaded Result</a></li>
			  </ul>
            </li>
            <li><a href='teacher_dashboard.php?calendar'><i class='fa fa-key'></i><span>Calendar</span></a></li>
            <li><a href='teacher_dashboard.php?teacher_reset_password'><i class='fa fa-key'></i><span>Password Reset</span></a></li>
          </ul>
        </section>
      </aside>
      <div class='content-wrapper'>
        <?php
            if(isset($_GET['teacher_profile'])){
                require("teacher_profile.php");
            }
            elseif(isset($_GET['view_students'])){
                require("teacher_view_students.php");
            }
            elseif(isset($_GET['slip'])){
                require("teacher_print_slip.php");
            }
            elseif(isset($_GET['class_attendance'])){
                require("class_attendance.php");
            }
            elseif(isset($_GET['view_attendance_records'])){
                require("view_attendance_records.php");
            }
            elseif(isset($_GET['students_conducts'])){
                require("student_conduct.php");
            }
            elseif(isset($_GET['export_conduct_sheet'])){
                require("teacher_export_conduct.php");
            }
            elseif(isset($_GET['upload_conducts'])){
                require("teacher_upload_conduct.php");
            }
            elseif(isset($_GET['view_conducts'])){
                require("view_conducts.php");
            }
            elseif(isset($_GET['register_student_subject'])){
                require("teacher_register_student_subject.php");
            }
            elseif(isset($_GET['view_registered_subjects'])){
                require("view_registered_subjects.php");
            }
            elseif(isset($_GET['upload_result'])){
                require("result_upload.php");
            }
            elseif(isset($_GET['excel_result_upload'])){
                require("teacher_excel_result_upload.php");
            }
            elseif(isset($_GET['view_uploaded_results'])){
                require("view_upload.php");
            }
            elseif(isset($_GET['calendar'])){
                require("calendar.php");
            }
            elseif(isset($_GET['teacher_reset_password'])){
                require("teacher_reset_password.php");
            }
            elseif(isset($_GET['logout'])){
                SESSION_UNSET(); // this unset every session and thus logs the user out
                redirect_to("../../login000/login.php");
            }
            else{
                echo"
                    <div class='page-title'>
                      <div>
                        <h1><i class='fa fa-graduation-cap'></i> {$admin_name}</h1>
                        <p class='text-center'>{$current_term} - {$current_session} Session</p>
                      </div>
                      <div>
                        <ul class='breadcrumb'>
                          <li><i class='fa fa-home fa-lg'></i></li>
                          <li><a href='teacher_dashboard.php?dashboard'>Dashboard</a></li>
                        </ul>
                      </div>
                    </div>

                    <div class='row'>
                        <div class='col-md-3'>
                            <a href='teacher_dashboard.php?teacher_profile'>
                                <div class='card'>
                                    <h4 class='card-title text-center'>My Profile</h4>
                                    <center><img src='../../img/stude.jpg' class='img-responsive' style='width: 30%;' /></center>
                                </div>
                            </a>
                        </div>

                        <div class='col-md-3'>
                            <a href='teacher_dashboard.php?students_conducts'>
                                <div class='card'>
                                    <h4 class='card-title text-center'>Student Conducts</h4>
                                    <center><img src='../../img/student5.jpg' class='img-responsive' style='width: 30%;' /></center>
                                </div>
                            </a>
                        </div>

                        <div class='col-md-3'>
                            <a href='teacher_dashboard.php?class_attendance'>
                                <div class='card'>
                                    <h4 class='card-title text-center'>Class Attendance</h4>
                                    <center><img src='../../img/class.png' class='img-responsive' style='width: 30%;' /></center>
                                </div>
                            </a>
                        </div>

                        <div class='col-md-3'>
                            <a href='teacher_dashboard.php?register_student_subject'>
                                <div class='card'>
                                    <h4 class='card-title text-center'>Subject Registration</h4>
                                    <center><img src='../../img/subject.png' class='img-responsive' style='width: 30%;' /></center>
                                </div>
                            </a>
                        </div>
                    </div>

                    <div class='row'>
                        <div class='col-md-3'>
                            <a href='teacher_dashboard.php?view_students'>
                                <div class='card'>
                                    <h4 class='card-title text-center'>View Student</h4>
                                    <center><img src='../../img/view user.jpg' class='img-responsive' style='width: 30%;' /></center>
                                </div>
                            </a>
                        </div>
                        
                        <div class='col-md-3'>
                            <a href='teacher_dashboard.php?upload_result'>
                                <div class='card'>
                                    <h4 class='card-title text-center'>Result Manager</h4>
                                    <center><img src='../../img/result5.jpg' class='img-responsive' style='width: 30%;' /></center>
                                </div>
                            </a>
                        </div>
                        
                        <div class='col-md-3'>
                            <a href='teacher_dashboard.php?calendar'>
                                <div class='card'>
                                    <h4 class='card-title text-center'>Calendar</h4>
                                    <center><img src='../../img/ah.png' class='img-responsive' style='width: 30%;' /></center>
                                </div>
                            </a>
                        </div>

                        <div class='col-md-3'>
                            <a href='teacher_dashboard.php?teacher_reset_password'>
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
    <!-- Javascripts-->
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