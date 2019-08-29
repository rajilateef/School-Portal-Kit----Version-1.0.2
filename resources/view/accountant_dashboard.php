<?php
	ob_start();
?>
<?php
    require_once("../../public/accountant_session.php");
	require_once("../../public/connection.php");
	require_once("../../public/functions.php");
	//require_once("staff_dashboard_processor.php");
?>
<?php
    if(!isset($_SESSION['accountant'])){
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
	$query = " SELECT * FROM `accountants` WHERE id = '{$_SESSION['accountant']}' ";
	$run_query = mysqli_query($connection, $query);
	if(mysqli_num_rows($run_query) == 1){
		while($result = mysqli_fetch_assoc($run_query)){
			$accountant_id = $result['id'];
            $accountant_name = ucwords($result['fullname']);
            $accountant_address = ucwords($result['address']);
            $accountant_phone = $result['phone'];
            $accountant_state = ucfirst($result['state']);
            $accountant_lga = ucfirst($result['lga']);
            $accountant_nationality = ucfirst($result['nationality']);
            $accountant_email = $result['email'];
            $date_registered = $result['date_of_reg'];
            $accountant_title = $result['title'];
            
            if($accountant_title === "mr"){
				$gender = "Male";
			}
			elseif($accountant_title === "mrs"){
				$gender = "Female";
			}
			elseif($user_title === "miss"){
				$gender = "Female";
			}
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
    <title><?php echo $accountant_name; ?> ~ School Portal Kit</title>
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
                  <li><a href='accountant_dashboard.php?logout'><i class='fa fa-sign-out fa-lg'></i> Logout</a></li>
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
            <div class='pull-left image'><img class='img-circle' src='../../img/avatar.jpg' alt='User Image'></div>
            <div class='pull-left info'>
              <p class='text-center'><?php echo $accountant_name; ?></p>
              <p class='designation text-center'><b>Accountant</b></p>
            </div>
          </div>
          <!-- Sidebar Menu-->
            <ul class='sidebar-menu'>
            <li class='active'><a href='accountant_dashboard.php?dashboard'><i class='fa fa-dashboard'></i><span>Dashboard</span></a></li>
            <li><a href='accountant_dashboard.php?profile'><i class='fa fa-user'></i><span>Profile</span></a></li>
            <li><a href='accountant_dashboard.php?allocate_fees'><i class='fa fa-book'></i><span>Allocate Fees</span></a></li>
            <li><a href='accountant_dashboard.php?fee_payment'><i class='fa fa-upload'></i><span>Fee Payment</span></a></li>
            <li><a href='accountant_dashboard.php?outsatanding_bills'><i class='fa fa-eye'></i><span>Outstanding Bills</span></a></li>
            <li><a href='accountant_dashboard.php?manage_expenses'><i class='fa fa-print'></i><span>Manage Expenses</span></a></li>
            <li><a href='accountant_dashboard.php?manage_debtors'><i class='fa fa-users'></i><span>Manage Debtors</span></a></li>
            <li><a href='accountant_dashboard.php?manage_inventory'><i class='fa fa-users'></i><span>Manage Inventory</span></a></li>
            <li><a href='accountant_dashboard.php?staff_payroll'><i class='fa fa-users'></i><span>Staff Payroll</span></a></li>
            <li><a href='accountant_dashboard.php?calendar'><i class='fa fa-calendar'></i><span>Calendar</span></a></li>
            <li><a href='accountant_dashboard.php?accountant_reset_password'><i class='fa fa-key'></i><span>Password Reset</span></a></li>
            </ul>
        </section>
      </aside>
      <div class='content-wrapper'>
        <?php
            if(isset($_GET['profile'])){
                require("accountant_profile.php");
            }
            elseif(isset($_GET['allocate_fees'])){
                require("allocate_fees.php");
            }
            elseif(isset($_GET['fee_payment'])){
                require("fee_payment.php");
            }
            elseif(isset($_GET['outsatanding_bills'])){
                require("outsatanding_bills.php");
            }
            elseif(isset($_GET['manage_expenses'])){
                require("manage_expenses.php");
            }
            elseif(isset($_GET['manage_debtors'])){
                require("manage_debtors.php");
            }
            elseif(isset($_GET['manage_inventory'])){
                require("manage_inventory.php");
            }
            elseif(isset($_GET['staff_payroll'])){
                require("staff_payroll.php");
            }
            elseif(isset($_GET['calendar'])){
                require("calendar.php");
            }
            elseif(isset($_GET['accountant_reset_password'])){
                require("accountant_reset_password.php");
            }
            elseif(isset($_GET['result'])){
                require("result.php");
            }
            elseif(isset($_GET['school_fee_receipt'])){
                echo"

                    <div class='col-md-12 card'>";
                        $query_receipt = " SELECT * FROM `fee_payment` WHERE `id` = '{$_SESSION['transaction']}' ";
                        $run_query_receipt = mysqli_query($connection, $query_receipt);

                        if(mysqli_num_rows($run_query_receipt) > 0){
                            while ($result = mysqli_fetch_assoc($run_query_receipt)) {
                                $transaction_id = $result['id'];
                                $std_class = $result['student_class'];
                                $std_type = $result['student_type'];
                                $std_name = $result['student_name'];
                                $std_regno = $result['reg_number'];
                                $payment_term = $result['fee_term'];
                                $payment_session = $result['fee_session'];
                                $fee_amount_paid = number_format($result['amount_paid']);
                                $fee_payment_balance = number_format($result['student_balance']);
                                $payment_status = $result['payment_status'];
                                $transaction_date = $result['date_of_upload'];
                            }
                        }

                        echo "
                            <br />
                            <div class='row'>
                                <div class='col-md-3 col-xs-3'>

                                </div>

                                <div class='col-md-6 col-xs-6'>
                                    <div class='alert alert-success'>
                                        <p>Transaction ID:  <b>000{$transaction_id}</b></p>
                                        <p>Transaction Date: <b>{$transaction_date}</b></p>
                                        <p>Student Type: <b>{$std_type}</b></p>
                                        <p>Student reg no: <b>{$std_regno}</b></p>
                                        <p>Student Name: <b>{$std_name}</b></p>
                                        <p>Class: <b>{$std_class}</b></p>
                                        <p>Term: <b>{$payment_term}</b></p>
                                        <p>Session: <b>{$payment_session}</b></p>
                                        <p>Amount paid: <b>NGN{$fee_amount_paid}</b></p>
                                        <p>Balance: <b>NGN{$fee_payment_balance}</b></p>
                                        <p>Payment status: <b>{$payment_status}</b></p>
                                        <br />
                                        <button type='button' class='btn btn-default btn-xs noprint' onclick='window.print()' value='print a div!'><span class='glyphicon glyphicon-print'></span> Print</button>
                                        <a href='accountant_dashboard.php?fee_payment' class='btn btn-warning btn-xs noprint' value='print a div!'><span class='glyphicon glyphicon-arrow-left'></span> Return</a>
                                    </div>
                                </div>

                                <div class='col-md-3 col-xs-3'>

                                </div>
                            </div>
                        ";
                    echo"
                    </div>

                ";
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
                          <li><a href='accountant_dashboard.php'>Dashboard</a></li>
                        </ul>
                      </div>
                    </div>

                    <div class='row'>
                        <div class='col-md-3'>
                            <a href='accountant_dashboard.php?profile'>
                                <div class='card'>
                                    <h4 class='card-title text-center'>My Profile</h4>
                                    <center><img src='../../img/stude.jpg' class='img-responsive' style='width: 30%;' /></center>
                                </div>
                            </a>
                        </div>

                        <div class='col-md-3'>
                            <a href='accountant_dashboard.php?allocate_fees'>
                                <div class='card'>
                                    <h4 class='card-title text-center'>Fee Allocation</h4>
                                    <center><img src='../../img/allocate.png' class='img-responsive' style='width: 30%;' /></center>
                                </div>
                            </a>
                        </div>

                        <div class='col-md-3'>
                            <a href='accountant_dashboard.php?fee_payment'>
                                <div class='card'>
                                    <h4 class='card-title text-center'>Fee Payment</h4>
                                    <center><img src='../../img/school_fees.png' class='img-responsive' style='width: 30%;' /></center>
                                </div>
                            </a>
                        </div>

                        <div class='col-md-3'>
                            <a href='accountant_dashboard.php?outsatanding_bills'>
                                <div class='card'>
                                    <h4 class='card-title text-center'>Outstanding Bills</h4>
                                    <center><img src='../../img/bills.png' class='img-responsive' style='width: 30%;' /></center>
                                </div>
                            </a>
                        </div>
                    </div>

                    <div class='row'>
                        <div class='col-md-3'>
                            <a href='accountant_dashboard.php?manage_expenses'>
                                <div class='card'>
                                    <h4 class='card-title text-center'>Manage Expenses</h4>
                                    <center><img src='../../img/expenses.png' class='img-responsive' style='width: 30%;' /></center>
                                </div>
                            </a>
                        </div>

                        <div class='col-md-3'>
                            <a href='accountant_dashboard.php?manage_debtors'>
                            <div class='card'>
                                <h4 class='card-title text-center'>Manage Debtors</h4>
                                <center><img src='../../img/debtors.png' class='img-responsive' style='width: 30%;' /></center>
                            </div>
                            </a>
                        </div>

                        <div class='col-md-3'>
                            <a href='accountant_dashboard.php?manage_inventory'>
                                <div class='card'>
                                    <h4 class='card-title text-center'>Manage Inventory</h4>
                                    <center><img src='../../img/inventory.png' class='img-responsive' style='width: 30%;' /></center>
                                </div>
                            </a>
                        </div>

                        <div class='col-md-3'>
                            <a href='accountant_dashboard.php?staff_payroll'>
                                <div class='card'>
                                    <h4 class='card-title text-center'>Staff Payroll</h4>
                                    <center><img src='../../img/payrol.png' class='img-responsive' style='width: 30%;' /></center>
                                </div>
                            </a>
                        </div>
                    </div>
                    
                    <div class='row'>
                        <div class='col-md-3'>
                            <a href='accountant_dashboard.php?calendar'>
                                <div class='card'>
                                    <h4 class='card-title text-center'>Calendar</h4>
                                    <center><img src='../../img/ah.png' class='img-responsive' style='width: 30%;' /></center>
                                </div>
                            </a>
                        </div>

                        <div class='col-md-3'>
                            <a href='accountant_dashboard.php?accountant_reset_password'>
                            <div class='card'>
                                <h4 class='card-title text-center'>Resst Password</h4>
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