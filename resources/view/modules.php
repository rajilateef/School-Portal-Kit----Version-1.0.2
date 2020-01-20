<?php
	ob_start();
?>
<?php
	require_once("../../public/staff_session.php");
	require_once("../../public/connection.php");
	require_once("../../public/functions.php");
	//require_once("staff_dashboard_processor.php");
?>
<?php
    if(!isset($_SESSION['admin'])){
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
	$query = " SELECT * FROM `users` WHERE id = '{$_SESSION['admin']}' ";
	$run_query = mysqli_query($connection, $query);
	if(mysqli_num_rows($run_query) == 1){
		while($result = mysqli_fetch_assoc($run_query)){
			$user_id = $result['id'];
			$user_title = $result['title'];
			$user_fullname = ucwords($result['fullname']);
			$user_address = ucwords($result['address']);
			$user_phone = $result['phone'];
			$user_state = ucwords($result['state']);
			$user_lga = ucwords($result['lga']);
			$user_nationality = ucwords($result['nationality']);
			$user_email = $result['email'];
		
			if($user_title === "mr"){
				$gender = "Male";
			}
			elseif($user_title === "mrs"){
				$gender = "Female";
			}
			elseif($user_title === "miss"){
				$gender = "Female";
			}
			
			$msg_fullname = $user_fullname;
			$msg_title = $user_title;
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
    <title><?php echo $user_fullname; ?> ~ School Portal Kit</title>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries-->
    <!--if lt IE 9
    script(src='https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js')
    script(src='https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js')
    -->
    <script src="../../assets/js/jquery-2.1.4.min.js"></script>
    <script type="text/javascript">
      $(function () {
        // add multiple select / deselect functionality
        $("#selectall").click(function () {
            $('.subgroup').attr('checked', this.checked);
        }); 
        // if all checkbox are selected, then check the select all checkbox
        // and viceversa
        $(".subgroup").click(function () {
            if ($(".subgroup").length == $(".subgroup:checked").length) {
              $("#selectall").attr("checked", "checked");
            } else {
              $("#selectall").removeAttr("checked");
            }
        });
    });
    </script>
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
    <style type="text/css">
      .print_div {
        /*width: 21cm;
        min-height: 29.7cm;
        padding: 2cm;
        margin: 1cm auto;
        border: 1px #D3D3D3 solid;
        border-radius: 5px;
        background: white;
        box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);*/
      }
      @page {
        size: A4;
        margin: 0;
      }

      @media print {
        .print_div {
          margin: 0;
          margin-top: -20%;
          padding-right: 4%;
          padding-left: 4%;
          border: 0;
          font-size: 12px;
          border-radius: 5px;
          /*width: 21cm;*/
          /*min-height: 29.7cm;*/
          box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
          background: white;
          page-break-after: always;
        }
      }
    </style>
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
              <li class='dropdown notification-menu'><a class='dropdown-toggle' href='#' data-toggle='dropdown' aria-expanded='false'><?php echo $date; ?> <span id='clockDisplay'></a>
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
                  <li><a href='modules.php?settings'><i class='fa fa-cog fa-lg'></i> Settings</a></li>
                  <li><a href='modules.php?staff_profile'><i class='fa fa-user fa-lg'></i> Profile</a></li>
                  <li><a href='modules.php?logout'><i class='fa fa-sign-out fa-lg'></i> Logout</a></li>
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
            <div class='pull-left image'><img class='img-circle' src='../../img/author-img.png' alt='User Image'></div>
            <div class='pull-left info'>
              <p><?php echo $user_fullname; ?></p>
              <p class='designation text-center'><b>Admin</b></p>
            </div>
          </div>
          <!-- Sidebar Menu-->
          <ul class='sidebar-menu'>
            <li class='active'><a href='modules.php?dashboard'><i class='fa fa-dashboard'></i><span>Dashboard</span></a></li>
            <li><a href='modules.php?portal_request'><i class='fa fa-comment'></i><span>Portal Request</span></a></li>
            <li><a href='modules.php?staff_profile'><i class='fa fa-user'></i><span>Profile</span></a></li>
            <li class='treeview'><a href='#'><i class='fa fa-laptop'></i><span>Administrative Manager</span><i class='fa fa-angle-right'></i></a>
              <ul class='treeview-menu'>
                <li><a href='modules.php?school_profile'><i class='fa fa-circle-o'></i> School Profile</a></li>
                <li><a href='modules.php?manage_school_info'><i class='fa fa-circle-o'></i> Save School Info</a></li>
                <li><a href='modules.php?view_school_info'><i class='fa fa-circle-o'></i> View School Info</a></li>
                <li><a href='modules.php?current_term'><i class='fa fa-circle-o'></i> Current Term</a></li>
                <li><a href='modules.php?current_session'><i class='fa fa-circle-o'></i> Current Session</a></li>
                <li><a href='modules.php?add_new_session'><i class='fa fa-circle-o'></i> Add New Session</a></li>
              </ul>
            </li>
            <li class='treeview'><a href='#'><i class='fa fa-laptop'></i><span>Student Management</span><i class='fa fa-angle-right'></i></a>
              <ul class='treeview-menu'>
                <li><a href='modules.php?add_new_student'><i class='fa fa-circle-o'></i> Register New Student</a></li>
                <li><a href='modules.php?promote_students'><i class='fa fa-circle-o'></i> Promote All Students</a></li>
                <li><a href='modules.php?promote_selected_students'><i class='fa fa-circle-o'></i> Promote Selected Students</a></li>
                <li><a href='modules.php?demote_students'><i class='fa fa-circle-o'></i> Demote Students</a></li>
                <li><a href='modules.php?view_students'><i class='fa fa-circle-o'></i> View Students</a></li>
              </ul>
            </li>
            <li><a href='modules.php?class_attendance'><i class='fa fa-pie-chart'></i><span>Class Attendance</span></a></li>
            <li><a href='modules.php?view_attendance_records'><i class='fa fa-eye'></i><span>View Attendance Records</span></a></li>
            <li class='treeview'><a href='#'><i class='fa fa-edit'></i><span>Behavioral Analysis</span><i class='fa fa-angle-right'></i></a>
              <ul class='treeview-menu'>
                <li><a href='modules.php?students_conducts'><i class='fa fa-circle-o'></i> Manually Handled</a></li>
                <li><a href='modules.php?export_conduct_sheet'><i class='fa fa-circle-o'></i> Export Behavior Excel Sheet</a></li>
                <li><a href='modules.php?upload_conducts'><i class='fa fa-circle-o'></i> Upload Excel Behavioral</a></li>
                <li><a href='modules.php?view_conducts'><i class='fa fa-circle-o'></i> View Uploaded Behavioral</a></li>
              </ul>
            </li>
            <li class='treeview'><a href='#'><i class='fa fa-th-list'></i><span>Class Management</span><i class='fa fa-angle-right'></i></a>
              <ul class='treeview-menu'>
                <li><a href='modules.php?add_class'><i class='fa fa-circle-o'></i> Add New Class</a></li>
                <li><a href='modules.php?view_classes'><i class='fa fa-circle-o'></i> View Added Class</a></li>
              </ul>
            </li>
            <li class='treeview'><a href='#'><i class='fa fa-file-text'></i><span>Subject Management</span><i class='fa fa-angle-right'></i></a>
              <ul class='treeview-menu'>
                <li><a href='modules.php?add_subjects'><i class='fa fa-circle-o'></i> Add a Subject</a></li>
                <li><a href='modules.php?view_added_subjects'><i class='fa fa-circle-o'></i> View Added Subject</a></li>
                <li><a href='modules.php?register_student_subject'><i class='fa fa-circle-o'></i> Register Student Subject</a></li>
                <li><a href='modules.php?view_registered_subjects'><i class='fa fa-circle-o'></i> View Registered Subject</a></li>
                <li><a href='modules.php?specify_junior'><i class='fa fa-circle-o'></i> Specify Junior Subject</a></li>
                <li><a href='modules.php?specify_senior'><i class='fa fa-circle-o'></i> Specify Senior Subject</a></li>
                <li><a href='modules.php?subject_number_specification'><i class='fa fa-circle-o'></i> No of Subject Specification</a></li>
              </ul>
            </li>
            <li class='treeview'><a href='#'><i class='fa fa-book'></i><span>Result Management</span><i class='fa fa-angle-right'></i></a>
              <ul class='treeview-menu'>
                <li><a href='modules.php?upload_result'><i class='fa fa-circle-o'></i> Upload Result Directly</a></li>
                <!-- <li><a href='modules.php?excel_result_upload'><i class='fa fa-circle-o'></i> Upload Result Via Excel</a></li> -->
				<li><a href='modules.php?view_uploaded_results'><i class='fa fa-circle-o'></i> View Uploaded Result</a></li>
                <li><a href='modules.php?save_resumption'><i class='fa fa-circle-o'></i> Save Resumption Date</a></li>
                <li><a href='modules.php?view_resumption'><i class='fa fa-circle-o'></i> View Resumption Date</a></li>
                <li><a href='modules.php?publish_result'><i class='fa fa-circle-o'></i> Publish Result</a></li>
                <li><a href='modules.php?view_published_result'><i class='fa fa-circle-o'></i> View Published Result</a></li>
                <!--<li><a href='modules.php?print_uploaded_result'><i class='fa fa-circle-o'></i> Print Uploaded Result</a></li>
                <li><a href=''><i class='fa fa-circle-o'></i> Asign Class Teachers</a></li>
                <li><a href=''><i class='fa fa-circle-o'></i> View Class Teachers</a></li>
				--><li><a href=''><i class='fa fa-circle-o'></i> Check Result</a></li>
				<li><a href=''><i class='fa fa-circle-o'></i> Generate Transcript</a></li>
			  </ul>
            </li>
			<li class='treeview'><a href='#'><i class='fa fa-tasks'></i><span>Fees Management</span><i class='fa fa-angle-right'></i></a>
              <ul class='treeview-menu'>
                <li><a href='modules.php?allocate_class_fee'><i class='fa fa-circle-o'></i> Allocate Class Fee</a></li>
                <!--<li><a href='modules.php?fee_payment'><i class='fa fa-circle-o'></i> Register Fee Payment</a></li>-->
                <li><a href='modules.php?outstanding_fees'><i class='fa fa-circle-o'></i> Outstanding Fee Payment</a></li>
				<!--<li><a href='adminpage.php?p=view_student_fee'><i class='fa fa-circle-o'></i> View Each Student Fee Record</a></li>-->
			  </ul>
            </li>
            <li class='treeview'><a href='#'><i class='fa fa-user'></i><span>Admin</span><i class='fa fa-angle-right'></i></a>
              <ul class='treeview-menu'>
                <li><a href='modules.php?add_admin'><i class='fa fa-circle-o'></i> Add an Admin</a></li>
                <li><a href='modules.php?view_all_admin'><i class='fa fa-circle-o'></i> View All Admins</a></li>
			  </ul>
            </li>
            <li class='treeview'><a href='#'><i class='fa fa-user'></i><span>Principal</span><i class='fa fa-angle-right'></i></a>
              <ul class='treeview-menu'>
                <li><a href='modules.php?add_princial'><i class='fa fa-circle-o'></i> Add New Principal</a></li>
                <li><a href='modules.php?view_all_principals'><i class='fa fa-circle-o'></i> View Principals</a></li>
			  </ul>
            </li>
            <li class='treeview'><a href='#'><i class='fa fa-user'></i><span>Accountant</span><i class='fa fa-angle-right'></i></a>
              <ul class='treeview-menu'>
                <li><a href='modules.php?add_accountant'><i class='fa fa-circle-o'></i> Add New Accountant</a></li>
                <li><a href='modules.php?view_accountants'><i class='fa fa-circle-o'></i> View Accountants</a></li>
			  </ul>
            </li>
            <li class='treeview'><a href='#'><i class='fa fa-user'></i><span>Teachers</span><i class='fa fa-angle-right'></i></a>
              <ul class='treeview-menu'>
                <li><a href='modules.php?add_teacher'><i class='fa fa-circle-o'></i> Add A Teacher</a></li>
                <li><a href='modules.php?assign_class_to_teacher'><i class='fa fa-circle-o'></i> Teachers and their Classes</a></li>
                <li><a href='modules.php?view_teachers_portfolio'><i class='fa fa-circle-o'></i> View Teachers Portfolio</a></li>
			  </ul>
            </li>
            <li><a href='modules.php?staff_reset_password'><i class='fa fa-key'></i><span>Password Reset</span></a></li>
            <li><a href='modules.php?mails'><i class='fa fa-envelope'></i><span>Mails</span></a></li>
            <li class='treeview'><a href='#'><i class='fa fa-user'></i><span>Generate Contacts</span><i class='fa fa-angle-right'></i></a>
              <ul class='treeview-menu'>
                <li><a href='modules.php?all_contact'><i class='fa fa-circle-o'></i> All Contacts</a></li>
			  </ul>
            </li>
          </ul>
        </section>
      </aside>
      <div class='content-wrapper'>
        <?php
            if(isset($_GET['portal_request'])){
                require_once("portal_request.php");
            }
            elseif(isset($_GET['staff_profile'])){
                require("staff_profile.php");
            }
            elseif(isset($_GET['manage_school_info'])){
                require("manage_school_info.php");
            }
            elseif(isset($_GET['view_school_info'])){
                require("view_school_info.php");
            }
            elseif(isset($_GET['current_term'])){
                require("current_term.php");
            }
            elseif(isset($_GET['current_session'])){
                require("current_session.php");
            }
            elseif(isset($_GET['add_new_session'])){
                require("new_session.php");
            }
            elseif(isset($_GET['add_new_student'])){
                require("add_new_student.php");
            }
            elseif(isset($_GET['promote_students'])){
                require("promote_students.php");
            }
            elseif(isset($_GET['promote_selected_students'])){
                require_once("promote_selected_students.php");
            }
            elseif(isset($_GET['demote_students'])){
                require("demote_student.php");
            }
            elseif(isset($_GET['view_students'])){
                require("view_students.php");
            }
            elseif(isset($_GET['class_attendance'])){
                require("class_attendance.php");
            }
            elseif(isset($_GET['view_attendance_records'])){
                require("view_attendance_records.php");
            }
            elseif(isset($_GET['add_class'])){
                require("add_class.php");
            }
            elseif(isset($_GET['view_classes'])){
                require("view_classes.php");
            }
            elseif(isset($_GET['students_conducts'])){
                require("student_conduct.php");
            }
            elseif(isset($_GET['export_conduct_sheet'])){
                require("export_conduct.php");
            }
            elseif(isset($_GET['upload_conducts'])){
                require("upload_conduct.php");
            }
            elseif(isset($_GET['view_conducts'])){
                require("view_conducts.php");
            }
            elseif(isset($_GET['add_subjects'])){
                require("add_subject.php");
            }
            elseif(isset($_GET['view_added_subjects'])){
                require("view_subject.php");
            }
            elseif(isset($_GET['register_student_subject'])){
                require("register_student_subject.php");
            }
            elseif(isset($_GET['view_registered_subjects'])){
                require("view_registered_subjects.php");
            }
            elseif(isset($_GET['subject_number_specification'])){
                require("specify_subject_number.php");
            }
            elseif(isset($_GET['specify_junior'])){
                require("specify_junior.php");
            }
            elseif(isset($_GET['specify_senior'])){
                require("specify_senior.php");
            }
            elseif(isset($_GET['upload_result'])){
                require("result_upload.php");
            }
            elseif(isset($_GET['excel_result_upload'])){
                require("excel_result_upload.php");
            }
            elseif(isset($_GET['view_uploaded_results'])){
                require("view_upload.php");
            }
            elseif(isset($_GET['save_resumption'])){
                require("save_resumption.php");
            }
            elseif(isset($_GET['view_resumption'])){
                require("view_resumption.php");
            }
            elseif(isset($_GET['publish_result'])){
                require("publish_result.php");
            }
            elseif(isset($_GET['view_published_result'])){
                require("view_published_result.php");
            }
            elseif(isset($_GET['allocate_class_fee'])){
                require("allocate_fees.php");
            }
            elseif(isset($_GET['fee_payment'])){
                require("fee_payment.php");
            }
            elseif(isset($_GET['outstanding_fees'])){
                require("outsatanding_bills.php");
            }
            elseif(isset($_GET['slip'])){
                require("slip.php");
            }
            elseif(isset($_GET['add_admin'])){
                require("add_admin.php");
            }
            elseif(isset($_GET['view_all_admin'])){
                require("view_all_admin.php");
            }
            elseif(isset($_GET['add_princial'])){
                require("add_princial.php");
            }
            elseif(isset($_GET['view_all_principals'])){
                require("view_all_principals.php");
            }
            elseif(isset($_GET['add_accountant'])){
                require("add_accountant.php");
            }
            elseif(isset($_GET['view_accountants'])){
                require("view_accountants.php");
            }
            elseif(isset($_GET['add_teacher'])){
                require("add_teacher.php");
            }
            elseif(isset($_GET['assign_class_to_teacher'])){
                require("assign_class_to_teacher.php");
            }
            elseif(isset($_GET['view_teachers_portfolio'])){
                require("view_teachers_portfolio.php");
            }
            elseif(isset($_GET['calendar'])){
                require("calendar.php");
            }
            elseif(isset($_GET['staff_reset_password'])){
                require("staff_reset_password.php");
            }
            elseif(isset($_GET['mails'])){
                require_once("mails.php");
            }
            elseif(isset($_GET['all_contact'])){
                require("all_contact.php");
            }
            elseif(isset($_GET['settings'])){
              require_once("settings.php");
            }
            elseif(isset($_GET['logout'])){
                SESSION_UNSET(); // this unset every session and thus logs the user out
                redirect_to("../../login000/login.php");
            }
            else{
                echo"
                    <div class='page-title'>
                      <div>
                        <h1><img src='{$admin_logo}' style='width: 20%;'> {$admin_name}</h1>
                        <p class='text-center'><b>{$current_term} - {$current_session} Session</b></p>
                      </div>
                      <div>
                        <ul class='breadcrumb'>
                          <li><i class='fa fa-home fa-lg'></i></li>
                          <li><a href='modules.php?dashboard'>Dashboard</a></li>
                        </ul>
                      </div>
                    </div>

                    <div class='row'>
                        <div class='col-md-3'>
                            <a href='modules.php?staff_profile'>
                                <div class='card'>
                                    <h4 class='card-title text-center'>My Profile</h4>
                                    <center><img src='../../img/stude.jpg' class='img-responsive' style='width: 30%;' /></center>
                                </div>
                            </a>
                        </div>

                        <div class='col-md-3'>
                            <a href='modules.php?view_students'>
                                <div class='card'>
                                    <h4 class='card-title text-center'>Student Manager</h4>
                                    <center><img src='../../img/student5.jpg' class='img-responsive' style='width: 30%;' /></center>
                                </div>
                            </a>
                        </div>

                        <div class='col-md-3'>
                            <a href='modules.php?view_classes'>
                                <div class='card'>
                                    <h4 class='card-title text-center'>Class Manager</h4>
                                    <center><img src='../../img/class.png' class='img-responsive' style='width: 30%;' /></center>
                                </div>
                            </a>
                        </div>

                        <div class='col-md-3'>
                            <a href='modules.php?view_added_subjects'>
                                <div class='card'>
                                    <h4 class='card-title text-center'>Subject Manager</h4>
                                    <center><img src='../../img/subject.png' class='img-responsive' style='width: 30%;' /></center>
                                </div>
                            </a>
                        </div>
                    </div>

                    <div class='row'>
                        <div class='col-md-3'>
                            <a href='modules.php?upload_result'>
                                <div class='card'>
                                    <h4 class='card-title text-center'>Result Manager</h4>
                                    <center><img src='../../img/result5.jpg' class='img-responsive' style='width: 30%;' /></center>
                                </div>
                            </a>
                        </div>

                        <div class='col-md-3'>
                            <a href='#'>
                            <div class='card'>
                                <h4 class='card-title text-center'>Fee Manager</h4>
                                <center><img src='../../img/fees.png' class='img-responsive' style='width: 30%;' /></center>
                            </div>
                            </a>
                        </div>

                        <div class='col-md-3'>
                            <a href='modules.php?view_teachers_portfolio'>
                                <div class='card'>
                                    <h4 class='card-title text-center'>Staff Manager</h4>
                                    <center><img src='../../img/staff.jpg' class='img-responsive' style='width: 30%;' /></center>
                                </div>
                            </a>
                        </div>

                        <div class='col-md-3'>
                            <a href='modules.php?view_all_admin'>
                                <div class='card'>
                                    <h4 class='card-title text-center'>View Users</h4>
                                    <center><img src='../../img/view%20user.jpg' class='img-responsive' style='width: 30%;' /></center>
                                </div>
                            </a>
                        </div>
                    </div>

                    <div class='row'>
                        <div class='col-md-3'>
                            <a href='modules.php?view_students'>
                                <div class='card'>
                                    <h4 class='card-title text-center'>Print Slip</h4>
                                    <center><img src='../../img/print.png' class='img-responsive' style='width: 30%;' /></center>
                                </div>
                            </a>
                        </div>

                        <div class='col-md-3'>
                            <a href='modules.php?calendar'>
                                <div class='card'>
                                    <h4 class='card-title text-center'>Calendar</h4>
                                    <center><img src='../../img/ah.png' class='img-responsive' style='width: 30%;' /></center>
                                </div>
                            </a>
                        </div>

                        <div class='col-md-3'>
                            <a href='modules.php?staff_reset_password'>
                                <div class='card'>
                                    <h4 class='card-title text-center'>Reset Password</h4>
                                    <center><img src='../../img/password.png' class='img-responsive' style='width: 30%;' /></center>
                                </div>
                            </a>
                        </div>

                        <div class='col-md-3'>
                            <a href='modules.php?mails'>
                                <div class='card'>
                                    <h4 class='card-title text-center'>Mails</h4>
                                    <center><img src='../../img/sms2.png' class='img-responsive' style='width: 30%;' /></center>
                                </div>
                            </a>
                        </div>
                    </div>
                ";
            }
        ?>
      </div>
        <footer class="noprint">
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