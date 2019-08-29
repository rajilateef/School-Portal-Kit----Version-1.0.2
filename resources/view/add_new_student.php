<?php
	//////////////// DEFAULT NULL VALUES ///////////////
	$error = array();
	$date = date('d/M/Y');
	$select = "--select--";
	$time = date('h:m:s');
?>
<?php
	/////////////// POST ACTION TO REGISTER STUDENTS WHEN THE REGISTER BUTTON IS CLICKED //////////////////
	if(isset($_POST['student_reg_btn'])){
		$reg_student_gender = inject_checker($connection, $_POST['reg_student_gender']);
		$reg_student_firstname = inject_checker($connection, $_POST['reg_student_firstname']);
		$reg_student_lastname = inject_checker($connection, $_POST['reg_student_lastname']);
		$reg_student_othername = inject_checker($connection, $_POST['reg_student_othername']);
		$reg_student_dob = inject_checker($connection, $_POST['reg_student_dob']);
		$reg_student_mob = inject_checker($connection, $_POST['reg_student_mob']);
		$reg_student_yob = inject_checker($connection, $_POST['reg_student_yob']);
		$reg_student_phone = inject_checker($connection, $_POST['reg_student_phone']);
        $nearest_contact1 = inject_checker($connection, $_POST['nearest_contact1']);
        $nearest_contact2 = inject_checker($connection, $_POST['nearest_contact2']);
        $nearest_contact3 = inject_checker($connection, $_POST['nearest_contact3']);
        $health_conditions = inject_checker($connection, $_POST['health_conditions']);
		$reg_student_address = inject_checker($connection, $_POST['reg_student_address']);
		$father_name = inject_checker($connection, ucwords($_POST['father_name']));
		$father_occupation = inject_checker($connection, ucwords($_POST['father_occupation']));
		$father_phone = inject_checker($connection, $_POST['father_phone']);
		$mother_name = inject_checker($connection, ucwords($_POST['mother_name']));
		$mother_occupation = inject_checker($connection, ucwords($_POST['mother_occupation']));
		$mother_phone = inject_checker($connection, $_POST['mother_phone']);
		$reg_student_state = inject_checker($connection, $_POST['reg_student_state']);
		$reg_student_lga = inject_checker($connection, $_POST['reg_student_lga']);
		$reg_student_city = inject_checker($connection, $_POST['reg_student_city']);
		$reg_student_nationality = inject_checker($connection, $_POST['reg_student_nationality']);
		$reg_sponsor_name = inject_checker($connection, $_POST['reg_sponsor_name']);
		$reg_sponsor_phone = inject_checker($connection, $_POST['reg_sponsor_phone']);
		$reg_sponsor_address = inject_checker($connection, $_POST['reg_sponsor_address']);
		$reg_sponsor_occupation = inject_checker($connection, $_POST['reg_sponsor_occupation']);
		$reg_sponsor_relationship = inject_checker($connection, $_POST['reg_sponsor_relationship']);
		$previous_school = inject_checker($connection, ucwords($_POST['previous_school']));
		$last_class_passed = inject_checker($connection, strtoupper($_POST['last_class_passed']));
		$reg_student_tc = inject_checker($connection, $_POST['reg_student_tc']);
		//$file = $_POST['file'];
		
		$query = " SELECT * FROM `current_season` ";
		$run_query = mysqli_query($connection, $query);
		
		if(mysqli_num_rows($run_query) == 1){
			while($result = mysqli_fetch_assoc($run_query)){
				$current_session = $result['current_session'];
				$current_term = $result['current_term'];
			}
		}
		
		if($current_term == "First Term"){
			$term_code = 1;
		}
		elseif($current_term == "Second Term"){
			$term_code = 2;
		}
		elseif($current_term == "Third Term"){
			$term_code == 3;
		}
		
		$session_of_reg = substr($current_session, 0, 4);
		$school_name = "SJSS";
		$gen_password = "sjs";
        ////////////////// ERROR-CHECKING IF SPECIFIED FIELD IS EMPTY ////////////////////
        if($reg_student_gender === $select){
            $msg = "<p class='text-danger'><b>Error: Gender Field Required</b></p>";
        }
        elseif(empty($reg_student_firstname)){
            $msg = "<p class='text-danger'><b>Error: Firstname Field Required</b></p>";
        }
        elseif(empty($reg_student_lastname)){
            $msg = "<p class='text-danger'><b>Error: Lastname Field Required</b></p>";
        }
        elseif($reg_student_dob === "Day"){
            $msg = "<p class='text-danger'><b>Error: Day of Birth Required</b></p>";
        }
        elseif($reg_student_mob === "Month"){
            $msg = "<p class='text-danger'><b>Error: Month of Birth Required</b></p>";
        }
        elseif($reg_student_yob === "Year"){
            $msg = "<p class='text-danger'><b>Error: Year of Birth Required</b></p>";
        }
        elseif(empty($health_conditions)){
            $msg = "<p class='text-danger'><b>Error: Health Conditions Field Required</b></p>";
        }
        elseif(empty($reg_student_address)){
            $msg = "<p class='text-danger'><b>Error: Address Field Required</b></p>";
        }
        elseif($reg_student_state === "States"){
            $msg = "<p class='text-danger'><b>Error: State of origin Required</b></p>";
        }
        elseif($reg_student_nationality === "Country"){
            $msg = "<p class='text-danger'><b>Error: Your Nationality is Required</b></p>";
        }
        elseif(empty($reg_sponsor_name)){
            $msg = "<p class='text-danger'><b>Error: Sponsor Name Required</b></p>";
        }
        elseif(empty($reg_sponsor_phone)){
            $msg = "<p class='text-danger'><b>Error: Sponsor Phone Required</b></p>";
        }
        elseif($reg_sponsor_relationship === $select){
            $msg = "<p class='text-danger'><b>Error: Sponsor Relationship is Required</b></p>";
        }
        elseif($reg_student_tc === "Select Class"){
            $msg = "<p class='text-danger'><b>Error: Target Class is Required</b></p>";
        }else{
            ////////////// ATION TO UPLOAD IMAGE INTO DB FROM STUDENT REGISTRATION PAGE ///////////
            $name = $_FILES['file']['name'];
            $tmp_name = $_FILES['file']['tmp_name'];

            if(isset($name)){
                if(!empty($name)){
                $location = 'image/';
                    if(move_uploaded_file($tmp_name, $location.$name)){
                        $image_location = $location.$name;
                    }else{
                        $image_location = "image/none.jpg";
                    }

                }
            }

            ///////////////////// DEFINING CLASS CODE TO GET A UNIQUE REG NUMBER /////////////////
            switch ($reg_student_tc){
                case $reg_student_tc === "JSS1": $class_code = 4 .$reg_student_tc;
                break;
                case $reg_student_tc === "JSS2": $class_code = 5 .$reg_student_tc;
                break;
                case $reg_student_tc === "JSS3": $class_code = 6 .$reg_student_tc;
                break;
                case $reg_student_tc === "SSS1": $class_code = 7 .$reg_student_tc;
                break;
                case $reg_student_tc === "SSS2": $class_code = 8 .$reg_student_tc;
                break;
                case $reg_student_tc === "SSS3": $class_code = 9 .$reg_student_tc;
                break;
                default: $msg = "Please Select Maths Operator";
            }

            //////////////// CHECKING NUMBER OF STUDENT ALREADY EXISTING IN DATABASE WITH SPECIFIED CLASS AND ADDING 1 TO THE EXISTING NUMBER OF STUDENT TO AUTOMATICALLY INCREMENT THE REG NUMBER BY 1 /////////////////////////////////
            /*$query = " SELECT * FROM `students` WHERE `class` = '{$reg_student_tc}' ";
            $run_query = mysqli_query($connection, $query);
            $number_of_reg_student = mysqli_num_rows($run_query);
            $increase_student = $number_of_reg_student + 1;*/

            $query = " INSERT INTO `students`(`gender`, `firstname`, `lastname`, `othername`, `dob`, `mob`, `yob`, `contact_phone`, `nearest_contact1`, `nearest_contact2`, `nearest_contact3`, `health_conditions`, `address`, `father_name`, `father_occupation`, `father_phone`, `mother_name`, `mother_occupation`, `mother_phone`, `state`, `lga`, `city`, `nationality`, `sponsor_name`, `sponsor_phone`, `sponsor_address`, `sponsor_occupation`, `relationship`, `previous_school`, `last_class_passed`, `class`, `gen_password`, `passport`, `date_of_reg`)
                    VALUES('{$reg_student_gender}', '{$reg_student_firstname}', '{$reg_student_lastname}', '{$reg_student_othername}', '{$reg_student_dob}', '{$reg_student_mob}', '{$reg_student_yob}', '{$reg_student_phone}', '{$nearest_contact1}', '{$nearest_contact2}', '{$nearest_contact3}', '{$health_conditions}', '{$reg_student_address}', '{$father_name}', '{$father_occupation}', '{$father_phone}', '{$mother_name}', '{$mother_occupation}', '{$mother_phone}', '{$reg_student_state}', '{$reg_student_lga}', '{$reg_student_city}', '{$reg_student_nationality}', '{$reg_sponsor_name}', '{$reg_sponsor_phone}', '{$reg_sponsor_address}', '{$reg_sponsor_occupation}', '{$reg_sponsor_relationship}', '{$previous_school}', '{$last_class_passed}', '{$reg_student_tc}', '{$gen_password}', '{$image_location}', '{$date}') ";

            $run_query = mysqli_query($connection, $query);
            if($run_query == true){

                $query = " SELECT * FROM `students` ";
                $run_query = mysqli_query($connection, $query);

                if(mysqli_num_rows($run_query) > 0){
                    while ($result = mysqli_fetch_assoc($run_query)) {
                        $lastId = $result['id'];
                    }

                    $reg_number = $session_of_reg .$term_code .$school_name .$lastId;

                    $query = " UPDATE students SET 
                                      reg_number = '{$reg_number}' WHERE id = '{$lastId}' ";
                    $run_query = mysqli_query($connection, $query);

                    if($run_query == true){
                        $msg = "
                            <div class='alert alert-success alert-dismissible' role='alert'>
                                <b>Registration successfull &nbsp&nbsp&nbsp|&nbsp&nbsp&nbsp Reg no: {$reg_number} &nbsp&nbsp&nbsp|&nbsp&nbsp&nbsp Password: {$gen_password}</b>
                                <button type='button' class='close' data-dismiss='alert' aria-label='Close'>
                                    <span aria-hidden='true'>&times;</span>
                                    <span class='sr-only'>Close</span>
                                </button>
                            </div>
                        ";
                    }else{
                        $msg = "
                            <div class='alert alert-danger alert-dismissible' role='alert'>
                                <b>... Error: Registration not successfull in Reg number update ...</b>
                                <button type='button' class='close' data-dismiss='alert' aria-label='Close'>
                                    <span aria-hidden='true'>&times;</span>
                                    <span class='sr-only'>Close</span>
                                </button>
                            </div>
                        ";
                    }
                }

            }else{
                $msg = "
                        <div class='alert alert-danger alert-dismissible' role='alert'>
                            <b>... Error: Registration not successfull ...</b>
                            <button type='button' class='close' data-dismiss='alert' aria-label='Close'>
                                <span aria-hidden='true'>&times;</span>
                                <span class='sr-only'>Close</span>
                            </button>
                        </div>
                    ";
            }

        }
	}
?>
 <div class='page-title'>
  <div>
    <h1><i class='fa fa-laptop'></i> Student Management</h1>
    <p>Add New Student</p>
  </div>
  <div>
    <ul class='breadcrumb'>
      <li><i class='fa fa-home fa-lg'></i></li>
      <li><a href='#'>Student Management</a></li>
      <li><a href='#'>Add New Student </a></li>
    </ul>
  </div>
</div>

<div class='card'>
    <?php
        if(isset($msg)){
            echo $msg;
        }
    ?>
    <form action='' method='POST' enctype='multipart/form-data'>
        <div class = 'panel panel-primary ch'>
            <div class = 'panel-heading'>					
                <h4 class='text-center'>Student Online Registration</h4>
            </div>
            <div class = 'panel-body'>
                <div class='row'>
                    <div class='col-xs-12 col-sm-12 col-md-12'>
                            <table class='table table-striped'>
                                <tr>
                                    <td>Student Upload Image</td>
                                    <td>
                                        <div>
                                            <input type='file' name='file' class='form-control' required>
                                        </div>
                                    </td>
                                </tr>
                                <!--<tr>
                                    <td>Enrollment</td>
                                    <td>
                                        <select name='enrollment' class='form-control' style='float:left;' required>
                                            <option>Nursery</option>
                                            <option>Primary</option>
                                            <option>Secondary</option>
                                        </select>
                                    </td>
                                </tr>-->
                                <tr>
                                    <td>Class</td>
                                    <td>
                                        <select name='reg_student_tc' class='form-control' required>
                                            <option>Select Class</option>
                                            <?php
                                                $query = " SELECT * FROM `classes` ";
                                                $run_query = mysqli_query($connection, $query);
                                                if(mysqli_num_rows($run_query) > 0){
                                                    while($result = mysqli_fetch_assoc($run_query)){
                                                        $publish_result_classes = $result['classes'];
                                                        echo"
                                                            <option>{$publish_result_classes}</option>
                                                        ";
                                                    }
                                                }
                                            ?>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Previous School Attended</td>
                                    <td>
                                        <div class='col-xs-12 col-sm-12 col-md-6'>
                                            <input name='previous_school' value = '' required='' class='form-control' placeholder='Name of your previous school you attended' aria-describedby='basic-addon2' type='text'>
                                        </div>
                                        <div class='col-xs-12 col-sm-12 col-md-6'>
                                            <input name='last_class_passed' value = '' required='' class='form-control' placeholder='Last Class Passed e.g (Primary 6, JSS 1, JSS3, SSS1)' aria-describedby='basic-addon2' type='text'>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Lastname</td>
                                    <td>
                                        <input type='text' name='reg_student_firstname' placeholder='Lastname' class='form-control' value = '' required>
                                    </td>
                                </tr>
                                <tr>
                                    <td>First Name</td>
                                    <td>
                                        <input type='text' name='reg_student_lastname' placeholder='First name' class='form-control' value = ''required>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Middle Name</td>
                                    <td>
                                        <input type='text' name='reg_student_othername' placeholder='Middle Name' class='form-control' value = ''required>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Sex</td>
                                    <td>
                                        <select name='reg_student_gender' class='form-control' required>
                                            <option>Male</option>
                                            <option>Female</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Date Of Birth</td>
                                    <td>
                                        <div class='col-xs-12 col-sm-12 col-md-4'>
                                            <select name='reg_student_dob' class='form-control' required>
                                                <option selected>Day</option>
                                                <?php
                                                    for($dob = 1; $dob <= 31; $dob++){
                                                        echo "<option>{$dob}</option>";
                                                    }
                                                ?>
                                            </select>
                                        </div>
                                        <div class='col-xs-12 col-sm-12 col-md-4'>
                                            <select name='reg_student_mob' class='form-control' required>
                                                <option selected>Month</option>
                                                <?php
                                                    $month_array = array("January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December");

                                                    foreach($month_array as $month){
                                                        echo "<option>{$month}</option><br>";
                                                    }
                                                ?>
                                            </select>
                                        </div>
                                        <div class='col-xs-12 col-sm-12 col-md-4'>
                                            <select name='reg_student_yob' class='form-control' required>
                                                <option selected>Year</option>
                                                <?php
                                                    for($year = 2016; $year >= 1960; $year--){
                                                        echo "<option>{$year}</option>";
                                                    }
                                                ?>
                                            </select>
                                        </div>
                                    </td>
                                </tr>
                                <!--<tr>
                                    <td>Blood Group</td>
                                    <td>
                                        <select name='blood_group' class='form-control' required>
                                            <option>A+</option>
                                            <option>A-</option>
                                            <option>B-</option>
                                            <option>AB+</option>
                                            <option>AB-</option>
                                            <option>O+</option>
                                            <option>O-</option>								
                                        </select>
                                    </td>
                                </tr>

                                <tr>
                                    <td>Genotype</td>
                                    <td>
                                        <select name='genotype' class='form-control'  required>
                                            <option>AA</option>
                                            <option>AS</option>
                                            <option>SS</option>
                                        </select>
                                    </td>
                                </tr>-->
                                <tr>
                                <td>Nationality</td>
                                <td>
                                    <select name='reg_student_nationality' class='form-control'>
                                        <option>Country</option>
                                        <?php
                                            $country_array = array("Argentina", "Japan", "Ethopia", "Nigeria", "Brazil", "Congo", "Ghana", "Portugal", "Spain", "Germany", "Italy", "France");

                                            foreach($country_array as $country){
                                                echo "<option>{$country}</option><br>";
                                            }
                                        ?>
                                    </select>			
                                </td>
                            </tr>
                            <tr>
                                <td>State</td>
                                <td>
                                    <select name='reg_student_state' class='form-control' >
                                        <option selected>States</option>
                                        <?php
                                            $state_array = array("Abia", "Adamawa", "Akwa ibom", "Anambra", "Bauchi", "Bayelsa", "Benue", "Borno", "Cross River", "Delta", "Ebonyi", "Edo", "Ekiti", "Enugu", "Gombe", "Imo", "Jigawa", "Kaduna", "Kano", "Katsina", "Kebbi", "Kogi", "Kwara", "Lagos", "Nasarawa", "Niger", "Ogun", "Ondo", "Osun", "Oyo", "Plateau", "Rivers", "Sokoto", "Taraba", "Yobe", "Zamfara", "FCT Abuja");
												
                                            foreach($state_array as $state){
                                                echo "<option>{$state}</option><br>";
                                            }
                                        ?>
                                    </select>			
                                </td>
                            </tr>
                            <tr>
                                <td>LGA</td>
                                <td>
                                    <input type='text' class='form-control' name='reg_student_lga' placeholder='LGA' value = ''required>	
                                </td>
                            </tr>
                            <tr>
                                <td>City</td>
                                <td>
                                    <input type='text' class='form-control'  name='reg_student_city' placeholder='Your City' value = ''required>
                                </td>
                            </tr>
                            <tr>
                                <td>Student Address</td>
                                <td>
                                    <input type='text' class='form-control'  name='reg_student_address' placeholder='Student address' value='' required>
                                </td>
                            </tr>
                            <tr>
                                <td>Student Phone Number</td>
                                <td>
                                    <div class='input-group'>
                                        <input name='reg_student_phone' pattern='[0-9]+' title='Input must be a valid phone number' value = '' required='' class='form-control' placeholder='Phone Number' aria-describedby='basic-addon2' type='phone'>
                                    </div>
                                </td>	
                            </tr>
                            <tr>
                                <td>Nearest Contact Numbers(Optional)</td>
                                <td>
                                    <div class='col-xs-12 col-sm-12 col-md-4'>
                                        <div class='input-group'>
                                            <input name='nearest_contact1' pattern='[0-9]+' title='Input must be a valid phone number' value = '' required='' class='form-control' placeholder='Nearesr Number1' aria-describedby='basic-addon2' type='phone'>
                                        </div>
                                    </div>
                                    <div class='col-xs-12 col-sm-12 col-md-4'>
                                        <div class='input-group'>
                                            <input name='nearest_contact2' pattern='[0-9]+' title='Input must be a valid phone number' value = '' required='' class='form-control' placeholder='Nearest Number2' aria-describedby='basic-addon2' type='phone'>
                                        </div>
                                    </div>
                                    <div class='col-xs-12 col-sm-12 col-md-4'>
                                        <div class='input-group'>
                                            <input name='nearest_contact3' pattern='[0-9]+' title='Input must be a valid phone number' value = '' required='' class='form-control' placeholder='Nearest Number3' aria-describedby='basic-addon2' type='phone'>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            
                            <tr>
                                <td>Health Conditions</td>
                                <td>
                                    <input name='health_conditions' title='Type health conditions id any' value = '' required='' class='form-control' placeholder='Type health condition if any or None...' aria-describedby='basic-addon2' type='phone'>
                                </td>
                            </tr>
                            
                            <tr>
                                <td>Father's Details</td>
                                <td>
                                    <div class='col-xs-12 col-sm-12 col-md-4'>
                                        <input name='father_name' value = '' required='' class='form-control' placeholder='Father Name' aria-describedby='basic-addon2' type='text'>
                                    </div>
                                    <div class='col-xs-12 col-sm-12 col-md-4'>
                                        <input name='father_occupation' value = '' required='' class='form-control' placeholder='Father Occupation' aria-describedby='basic-addon2' type='text'>
                                    </div>
                                    <div class='col-xs-12 col-sm-12 col-md-4'>
                                        <input name='father_phone' pattern='[0-9]+' title='Input must be a valid phone number' value = '' required='' class='form-control' placeholder='Phone Number' aria-describedby='basic-addon2' type='phone'>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>Mother's Details</td>
                                <td>
                                    <div class='col-xs-12 col-sm-12 col-md-4'>
                                        <input name='mother_name' value = '' required='' class='form-control' placeholder='Mother Name' aria-describedby='basic-addon2' type='text'>
                                    </div>
                                    <div class='col-xs-12 col-sm-12 col-md-4'>
                                        <input name='mother_occupation' value = '' required='' class='form-control' placeholder='Mother Occupation' aria-describedby='basic-addon2' type='text'>
                                    </div>
                                    <div class='col-xs-12 col-sm-12 col-md-4'>
                                        <input name='mother_phone' pattern='[0-9]+' title='Input must be a valid phone number' value = '' required='' class='form-control' placeholder='Phone Number' aria-describedby='basic-addon2' type='phone'>
                                    </div>
                                </td>
                            </tr>
                            <!--<tr>
                                <td>Student Email</td>
                                <td>
                                    <input type='email' class='form-control'  name='studentemail' placeholder='Student Email' value = ''required>	
                                </td>
                            </tr>-->
                            <tr>
                                <td>Sponsor Name</td>
                                <td>
                                    <input type='text' value = ''class='form-control'  name='reg_sponsor_name' placeholder='Sponsor Name' required>	
                                </td>
                            </tr>
                            <tr>
                                <td>Sponsor Phone Number</td>
                                <td>
                                    <div class='input-group'>
                                        <input name='reg_sponsor_phone' pattern='[0-9]+' title='Input must be a valid phone number' 
                                        value = '' required='' class='form-control' placeholder='Phone Number' aria-describedby='basic-addon2' type='phone'>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>Sponsor Address</td>
                                <td>
                                    <input type='text' value='' class='form-control'  name='reg_sponsor_address' placeholder='Sponsor address' required>
                                </td>
                            </tr>
                            <tr>
                                <td>Sponsor Occupation</td>
                                <td>
                                    <input type='text' value='' name='reg_sponsor_occupation' placeholder='Sponsor Occupation' class='form-control' required>
                                </td>
                            </tr>
                            <tr>
                                <td>Relationship With Sponsor</td>
                                <td>
                                    <input type='text' value = '' name='reg_sponsor_relationship' placeholder='Relationship With Sponsor' class='form-control' required>
                                </td>
                            </tr>
                        </table>
						<div class='col-xs-12 col-sm-12 col-md-6'>
						</div>
						<div class='col-xs-12 col-sm-12 col-md-6'>
							<button class='btn btn-primary' style='border-radius:10px;' name='student_reg_btn' type='submit'>Submit Registration</button>
						</div><br><br>
					</div>
                </div>
            </div>
        </div>
    </form>
</div>