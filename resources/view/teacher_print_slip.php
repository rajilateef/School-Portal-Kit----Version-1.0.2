<?php
	require_once("includes/teacher_session.php");
	require_once("includes/connection.php");
?>
<?php
	$query = " SELECT * FROM students WHERE id = '{$_SESSION['slip_id']}' ";
	$run_query = mysqli_query($connection, $query);
	if(mysqli_num_rows($run_query) == 1){
		while($result = mysqli_fetch_assoc($run_query)){
			$student_id = $result['id'];
            $student_gender = ucfirst($result['gender']);
            $surname = ucfirst($result['firstname']);
            $lastname = ucfirst($result['lastname']);
            $othername = ucfirst($result['othername']);
            $student_class = $result['class'];
            $reg_number = $result['reg_number'];
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
	$query = " SELECT * FROM `administratives` ";
	$run_query = mysqli_query($connection, $query);
	
	if(mysqli_num_rows($run_query) == 1){
		while($result = mysqli_fetch_assoc($run_query)){
			$school_logo = $result['school_logo'];
			$school_name = $result['school_name'];
			$school_address = $result['school_motto'];
			$school_stamp = $result['school_stamp'];
		}
	}
?>

<div class='panel panel-primary'>
    <div class='panel-body'>
        <div class='row'>
            <div class='col-xs-2 col-sm-2 col-md-2 text-center'>
                <img class='img-rounded img-responsive' src='<?php echo $school_logo; ?>' alt='logo'/>
            </div>

            <div class='col-xs-8 col-sm-8 col-md-8 text-center'>
                <h3><?php echo $school_name; ?></h3>
                <p class='text-danger'>
                <?php echo $school_address; ?><br/>
                </p>
            </div>

            <div class='col-xs-2 col-sm-2 col-md-2 text-center text-responsive'> 
                <img src='<?php echo $student_passport; ?>' class='img-rounded img-responsive' alt='logo' />
            </div>
        </div>
        <hr />

        <div class='row'>
            <div class='col-xs-4 col-md-4'>
                <legend>Bio-Data</legend>
                <p>Surname: <?php echo $surname; ?></p>
                <p>First Name: <?php echo $lastname; ?></p>
                <p>Other Name: <?php echo $othername; ?></p>
                <p>Sex: <?php echo $student_gender; ?></p>
                <p>State: <?php echo $student_state; ?></p>
                <p>Nationality: <?php echo $student_nationality; ?></p>
                <p>Father Name: <?php echo $father_name; ?></p>
                <p>Mother Name: <?php echo $mother_name; ?></p>
            </div>
            <div class='col-xs-4 col-md-4'>
                <legend>Birthday</legend>
                <p>Age: <?php echo $student_age; ?></p>
                <p>Date: <?php echo $student_dob; ?></p>
                <p>Month: <?php echo $student_mob; ?></p>
                <p>Year: <?php echo $student_yob; ?></p>
            </div>
            <div class='col-xs-4 col-md-4'>
                <legend>Contact</legend>
                <p>Student Phone: <?php echo $student_contact_phone; ?></p>
                <p>Nearest Contact1: <?php echo $nearest_contact1; ?></p>
                <p>Nearest Contact2: <?php echo $nearest_contact2; ?></p>
                <p>Nearest Contact3: <?php echo $nearest_contact3; ?></p>
                <p>Health Conditions: <?php echo $health_conditions; ?></p>
                <p>Home Address: <?php echo $student_address; ?></p>
                <p>Father's Phone: <?php echo $father_phone; ?></p>
                <p>Mother's Phone: <?php echo $mother_phone; ?></p>
                <p>Father Occupation: <?php echo $father_occupation; ?></p>
                <p>Mother Occupation: <?php echo $mother_occupation; ?></p>
            </div>
        </div>
        <br />

        <div class='row'>
            <div class='col-xs-4 col-md-4'>
                <legend>Academics</legend>
                <p>Registration No: <?php echo $student_reg_number; ?></p>
                <p>Password: <?php echo $student_password; ?></p>
                <p>Class: <?php echo $student_class; ?></p>
            </div>
            <div class='col-xs-4 col-md-4'>
                <legend>Sponsor:</legend>
                <p>Name: <?php echo $student_sponsor_name; ?></p>
                <p>Phone: <?php echo $student_sponsor_phone; ?></p>
                <p>Relationship: <?php echo $student_sponsor_relationship; ?></p>
            </div>
            <div class='col-xs-4 col-md-4'>
                <legend>Registered</legend>
                <p>Date: <?php echo $student_reg_day; ?></p>
                <p>Month: <?php echo $student_reg_month; ?></p>
                <p>Year: <?php echo $student_reg_year; ?></p>
            </div>
        </div>
        <br/>
        <hr/>

        <div class='row'>
            <div class='col-xs-12 col-md-12 text-center'>
                <em>
                    <strong>NOTE:</strong> Print this slip and keep it safe, you will require this for effective service of your school portal. 
                    We are always ready to asisst in any way we can. 
                    <br/>
                    <span class='fa fa-phone'></span> 2347036798652,&nbsp;&nbsp;
                    <span class='fa fa-envelope'></span> support@toxaswift.com &nbsp;&nbsp;
                    <button type='button' class='btn btn-primary noprint' onclick='window.print()' value='print a div!'><i class='fa fa-print'></i> Print</button>
                    <a class='noprint btn btn-danger' href='teacher_dashboard.php?view_students'><i class='fa fa-remove'></i> Close Slip</a> 
                </em>
            </div>
        </div>

    </div>
</div>