<?php
	ob_start();
?>
<?php
	require_once("../../public/principal_session.php");
	require_once("../../public/connection.php");
	require_once("../../public/functions.php");
	//require_once("staff_dashboard_processor.php");
?>
<?php
    if(!isset($_SESSION['principal'])){
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
	$query = " SELECT * FROM `principal` WHERE id = '{$_SESSION['principal']}' ";
	$run_query = mysqli_query($connection, $query);
	if(mysqli_num_rows($run_query) == 1){
		while($result = mysqli_fetch_assoc($run_query)){
			$principal_id = $result['id'];
            $principal_fname = ucfirst($result['firstname']);
            $principal_lname = ucfirst($result['lastname']);
            $principal_position = ucwords($result['position']);
            $principal_sex = ucfirst($result['sex']);
            $principal_phone = $result['phone'];
            $principal_email = $result['email'];
            $principal_nok = $result['next_of_kin'];
            $principal_nok_relationship = $result['next_of_kin_relationship'];
            $principal_nok_phone = $result['next_of_kin_phone'];
            $date_registered = $result['date_registered'];
            $name = $principal_fname ." ". $principal_lname;
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
<?php
    /////POST ACTION TO GET TOTAL NUMBER OF STUDENTS AND TEACHERS
    $query = " SELECT * FROM `students` WHERE `gender` = 'Male' ";
    $run_query = mysqli_query($connection, $query);

    $total_male = mysqli_num_rows($run_query);

    $query = " SELECT * FROM `students` WHERE `gender` = 'Female' ";
    $run_query = mysqli_query($connection, $query);

    $total_female = mysqli_num_rows($run_query);

    $query = " SELECT * FROM `students` ";
    $run_query = mysqli_query($connection, $query);

    $total_students = mysqli_num_rows($run_query);

    $query = " SELECT * FROM teachers ";
    $run_query = mysqli_query($connection, $query);

    $total_teachers = mysqli_num_rows($run_query);
?>
<?php
    ///POST ACTION TO GET TO NUMBER OF STUDENTS IN JSS1 CLASS
    $query = " SELECT * FROM `students` WHERE `gender` = 'Male' AND `class` = 'JSS1' ";
    $run_query = mysqli_query($connection, $query);

    $total_jss1_male = mysqli_num_rows($run_query);

    $query = " SELECT * FROM `students` WHERE `gender` = 'Female' AND `class` = 'JSS1' ";
    $run_query = mysqli_query($connection, $query);

    $total_jss1_female = mysqli_num_rows($run_query);

    $query = " SELECT * FROM `students` WHERE `class` = 'JSS1' ";
    $run_query = mysqli_query($connection, $query);

    $total_jss1 = mysqli_num_rows($run_query);
?>

<?php
    ///POST ACTION TO GET TO NUMBER OF STUDENTS IN JSS2 CLASS
    $query = " SELECT * FROM `students` WHERE `gender` = 'Male' AND `class` = 'JSS2' ";
    $run_query = mysqli_query($connection, $query);

    $total_jss2_male = mysqli_num_rows($run_query);

    $query = " SELECT * FROM `students` WHERE `gender` = 'Female' AND `class` = 'JSS2' ";
    $run_query = mysqli_query($connection, $query);

    $total_jss2_female = mysqli_num_rows($run_query);

    $query = " SELECT * FROM `students` WHERE `class` = 'JSS2' ";
    $run_query = mysqli_query($connection, $query);

    $total_jss2 = mysqli_num_rows($run_query);
?>

<?php
    ///POST ACTION TO GET TO NUMBER OF STUDENTS IN JSS3 CLASS
    $query = " SELECT * FROM `students` WHERE `gender` = 'Male' AND `class` = 'JSS3' ";
    $run_query = mysqli_query($connection, $query);

    $total_jss3_male = mysqli_num_rows($run_query);

    $query = " SELECT * FROM `students` WHERE `gender` = 'Female' AND `class` = 'JSS3' ";
    $run_query = mysqli_query($connection, $query);

    $total_jss3_female = mysqli_num_rows($run_query);

    $query = " SELECT * FROM `students` WHERE `class` = 'JSS3' ";
    $run_query = mysqli_query($connection, $query);

    $total_jss3 = mysqli_num_rows($run_query);
?>

<?php
    ///POST ACTION TO GET TO NUMBER OF STUDENTS IN SSS1 CLASS
    $query = " SELECT * FROM `students` WHERE `gender` = 'Male' AND `class` = 'SSS1' ";
    $run_query = mysqli_query($connection, $query);

    $total_sss1_male = mysqli_num_rows($run_query);

    $query = " SELECT * FROM `students` WHERE `gender` = 'Female' AND `class` = 'SSS1' ";
    $run_query = mysqli_query($connection, $query);

    $total_sss1_female = mysqli_num_rows($run_query);

    $query = " SELECT * FROM `students` WHERE `class` = 'SSS1' ";
    $run_query = mysqli_query($connection, $query);

    $total_sss1 = mysqli_num_rows($run_query);
?>

<?php
    ///POST ACTION TO GET TO NUMBER OF STUDENTS IN SSS2 CLASS
    $query = " SELECT * FROM `students` WHERE `gender` = 'Male' AND `class` = 'SSS2' ";
    $run_query = mysqli_query($connection, $query);

    $total_sss2_male = mysqli_num_rows($run_query);

    $query = " SELECT * FROM `students` WHERE `gender` = 'Female' AND `class` = 'SSS2' ";
    $run_query = mysqli_query($connection, $query);

    $total_sss2_female = mysqli_num_rows($run_query);

    $query = " SELECT * FROM `students` WHERE `class` = 'SSS2' ";
    $run_query = mysqli_query($connection, $query);

    $total_sss2 = mysqli_num_rows($run_query);
?>

<?php
    ///POST ACTION TO GET TO NUMBER OF STUDENTS IN SSS3 CLASS
    $query = " SELECT * FROM `students` WHERE `gender` = 'Male' AND `class` = 'SSS3' ";
    $run_query = mysqli_query($connection, $query);

    $total_sss3_male = mysqli_num_rows($run_query);

    $query = " SELECT * FROM `students` WHERE `gender` = 'Female' AND `class` = 'SSS3' ";
    $run_query = mysqli_query($connection, $query);

    $total_sss3_female = mysqli_num_rows($run_query);

    $query = " SELECT * FROM `students` WHERE `class` = 'SSS3' ";
    $run_query = mysqli_query($connection, $query);

    $total_sss3 = mysqli_num_rows($run_query);
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
                  <li><a href='principal_dashboard.php?logout'><i class='fa fa-sign-out fa-lg'></i> Logout</a></li>
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
            <div class='pull-left image'><img class='img-circle' src='../../img/avatar.gif' alt='User Image'></div>
            <div class='pull-left info'>
              <p class='text-center'><?php echo $name; ?></p>
              <p class='designation text-center'><b>Principal</b></p>
            </div>
          </div>
          <!-- Sidebar Menu-->
            <ul class="sidebar-menu">
            <li class="active"><a href="principal_dashboard.php?dashboard"><i class="fa fa-dashboard"></i><span>Dashboard</span></a></li>
            <li><a href="principal_dashboard.php?profile"><i class="fa fa-user"></i><span>Profile</span></a></li>
             <li class="treeview"><a href="#"><i class="fa fa-search"></i><span>Search Students</span><i class="fa fa-angle-right"></i></a>
              <ul class="treeview-menu">
                <li><a href="principal_dashboard.php?student_search_by_reg_no"><i class="fa fa-circle-o"></i> Reg No</a></li>
                <li><a href="principal_dashboard.php?student_search_by_class"><i class="fa fa-circle-o"></i> Class</a></li>
                <li><a href="principal_dashboard.php?student_search_by_name"><i class="fa fa-circle-o"></i> Name</a></li>
              </ul>
            </li>
			<li class="treeview"><a href="#"><i class="fa fa-th"></i><span>Fees Management</span><i class="fa fa-angle-right"></i></a>
              <ul class="treeview-menu">
                <li><a href="principal_dashboard.php?student_fee"><i class="fa fa-circle-o"></i> View a Student Fee Record</a></li>
                <li><a href="principal_dashboard.php?class_fee"><i class="fa fa-circle-o"></i> View Class Fee Record</a></li>
                <li><a href="principal_dashboard.php?session_fees"><i class="fa fa-circle-o"></i> View Fees Paid in a Session</a></li>
              </ul>
            </li>
			<li><a href="principal_dashboard.php?result_manager"><i class="fa fa-book"></i><span>Result Manager</span></a></li>
			<li><a href="principal_dashboard.php?teachers_profile"><i class="fa fa-user"></i><span>Teachers Profile</span></a></li>
			<li><a href="principal_dashboard.php?principal_password_reset"><i class="fa fa-unlock"></i><span>Change My Password</span></a></li>
			<li><a href="principal_dashboard.php?calendar"><i class="fa fa-calendar"></i><span>Calendar</span></a></li>
          </ul>
        </section>
      </aside>
      <div class='content-wrapper'>
        <?php
            if(isset($_GET['profile'])){
                require("principal_profile.php");
            }
            elseif(isset($_GET['student_search_by_reg_no'])){
                require("student_search_by_reg_no.php");
            }
            elseif(isset($_GET['student_search_by_class'])){
                require("student_search_by_class.php");
            }
            elseif(isset($_GET['student_search_by_name'])){
                require("student_search_by_name.php");
            }
            elseif(isset($_GET['student_fee'])){
                require("student_fee.php");
            }
            elseif(isset($_GET['class_fee'])){
                require("class_fee.php");
            }
            elseif(isset($_GET['session_fees'])){
                require("session_fees.php");
            }
            elseif(isset($_GET['result_manager'])){
                require("principal_result_manager.php");
            }
            elseif(isset($_GET['teachers_profile'])){
                require("teachers_profile.php");
            }
            elseif(isset($_GET['calendar'])){
                require("calendar.php");
            }
            elseif(isset($_GET['principal_password_reset'])){
                require("principal_password_reset.php");
            }
            elseif(isset($_GET['slip'])){
                require("principal_view_slip.php");
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
                          <li><a href='principal_dashboard.php'>Dashboard</a></li>
                        </ul>
                      </div>
                    </div>
                    
                     <div class='card'>
                        <div class = 'row'>
                            <div class = 'col-md-12 shift'>
                                <div class = 'panel panel-primary'>
                                    <div class = 'panel-heading'>
                                        <h4 class = 'says text-center'>SCHOOL POPULATION</h4>
                                    </div><br/>
                                    <div class = 'panel-body'>
                                        <div class='row'>
                                            <div class = 'col-xs-12 col-sm-6 col-md-3'>
                                                <div class='text-center card meee2'>
                                                    <p class='text-center what' style='padding-top:30px; color:#009688;font-weight:bold;'>{$total_students}</p>
                                                    <p class='text-center' style='color:#009688;font-weight:bold;'>Active Students</p>
                                                </div>
                                            </div>
                                            <div class = 'col-xs-12 col-sm-6 col-md-3'>
                                                <div class='text-center card meee2'>
                                                    <p class='text-center what' style='padding-top:30px; color:#009688;font-weight:bold;'>{$total_female}</p>
                                                    <p class='text-center' style='color:#009688;font-weight:bold;'>Active Female</p>
                                                </div>
                                            </div>
                                            <div class = 'col-xs-12 col-sm-6 col-md-3'>
                                                <div class='text-center card meee2'>
                                                    <p class='text-center what' style='padding-top:30px; color:#009688;font-weight:bold;'>{$total_male}</p>
                                                    <p class='text-center' style='color:#009688;font-weight:bold;'>Active Male</p>
                                                </div>
                                            </div>
                                            <div class = 'col-xs-12 col-sm-6 col-md-3 '>
                                                <div class='text-center card meee2'>
                                                    <p class='text-center what' style='padding-top:30px; color:#009688;font-weight:bold;'>{$total_teachers}</p>
                                                    <p class='text-center' style='color:#009688;font-weight:bold;'>Active Teachers</p>
                                                </div>
                                            </div>
                                        </div><br><br>
                                        <!--<div class='row'>
                                            <div class = 'col-xs-12 col-sm-12 col-md-12'>
                                                <p class='text-center yes' style='color:#009688;font-weight:bold;'>SECONDARY SCHOOL SUMMARY PANEL</p>
                                            </div>
                                        </div><br><br>
                                        <div class='row'>
                                        <div class = 'panel panel-primary' style='margin-left:30px;margin-right:30px;'>
                                            <div class = 'panel-body'>
                                            <div class = 'col-xs-12 col-sm-12 col-md-12'>
                                                <table class='table table-striped table-advance table-hover' width='100%'>
                                                    <tbody>
                                                        <tr>
                                                            <th style='color:#009688;font-weight:bold;'><i class='fa fa-book'></i> Class</th>
                                                            <th style='color:#009688;font-weight:bold;'><i class='fa fa-female'></i> FEMALE</th>
                                                            <th style='color:#009688;font-weight:bold;'><i class='fa fa-male'></i> MALE</th>
                                                            <th style='color:#009688;font-weight:bold;'><i class='fa fa-users'></i> TOTAL </th>
                                                        </tr>
                                                            
                                                            <tr><th style='color:#009688;font-weight:bold;'> JSS 1 </th>
                                                            <td><span class='badge'>{$total_jss1_female}</span></td>
                                                            <td><span class='badge bg-important'>{$total_jss1_male}</span></td>
                                                            <td><span class='badge bg-important'>{$total_jss1}</span></td></tr>

                                                            <tr><th style='color:#009688;font-weight:bold;'> JSS 2 </th>
                                                            <td><span class='badge bg-important'>{$total_jss2_female}</span></td>
                                                            <td><span class='badge bg-important'>{$total_jss2_male}</span></td>
                                                            <td><span class='badge bg-important'>{$total_jss2}</span></td></tr>

                                                            <tr><th style='color:#009688;font-weight:bold;'> JSS 3 </th>
                                                            <td><span class='badge bg-important'>{$total_jss3_female}</span></td>
                                                            <td><span class='badge bg-important'>{$total_jss3_male}</span></td>
                                                            <td><span class='badge bg-important'>{$total_jss3}</span></td></tr>

                                                            <tr><th style='color:#009688;font-weight:bold;'> SSS 1 </th>
                                                            <td><span class='badge bg-important'>{$total_sss1_female}</span></td>
                                                            <td><span class='badge bg-important'>{$total_sss1_male}</span></td>
                                                            <td><span class='badge bg-important'>{$total_sss1}</span></td></tr>

                                                            <tr><th style='color:#009688;font-weight:bold;'> SSS 2 </th>
                                                            <td><span class='badge bg-important'>{$total_sss2_female}</span></td>
                                                            <td><span class='badge bg-important'>{$total_sss2_male}</span></td>
                                                            <td><span class='badge bg-important'>{$total_sss2}</span></td></tr>


                                                            <tr><th style='color:#009688;font-weight:bold;'> SSS3 </th>
                                                            <td><span class='badge bg-important'>{$total_sss3_female}</span></td>
                                                            <td><span class='badge bg-important'>{$total_sss3_male}</span></td>
                                                            <td><span class='badge bg-important'>{$total_sss3}</span></td></tr>
                                                        </tbody>
                                                    </table>
                                            </div></div>
                                        </div><br><br>-->
                                    </div>
                                </div>
                            </div>
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