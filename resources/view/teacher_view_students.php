<?php
    //////////////// POST ACTION TO DELETE REGISTERED STUDENT FROM A PARTICULAR CLASS, BUT IT'S NOT WORKING FOR NOW //////
    if(isset($_POST['student_delete_btn'])){
        $delete_id = $_POST['student_hidden_id'];

        $query = " DELETE FROM `students` WHERE `id` = '{$delete_id}' ";
        $run_query = mysqli_query($connection, $query);

        if($run_query == true){
            $msg = "<p class='text-success'><b>Student Deleted Successfully</b></p>";
        }else{
            $msg = "<p><b>Error! Could Not Delete Record</b></p>";
        }
    }
?>
<?php
    //////////////////////////// POST ACTION TO EDIT AND UPDATE A PARTICULAR STUDENT'S INFO INTO DB //////////
    if(isset($_POST['student_edit_btn'])){
        $one_student_hidden_id = $_POST['one_student_hidden_id'];
        $edit_student_gender = inject_checker($connection, $_POST['edit_student_gender']);
        $edit_student_firstname = inject_checker($connection, $_POST['edit_student_firstname']);
        $edit_student_lastname = inject_checker($connection, $_POST['edit_student_lastname']);
        $edit_othername = inject_checker($connection, $_POST['edit_student_othername']);
        $edit_student_dob = inject_checker($connection, $_POST['edit_student_dob']);
        $edit_student_mob = inject_checker($connection, $_POST['edit_student_mob']);
        $edit_student_yob = inject_checker($connection, $_POST['edit_student_yob']);
        $edit_student_phone = inject_checker($connection, $_POST['edit_student_phone']);
        $edit_student_address = inject_checker($connection, $_POST['edit_student_address']);
        $edit_father_name = inject_checker($connection, $_POST['edit_father_name']);
        $edit_father_occupation = inject_checker($connection, $_POST['edit_father_occupation']);
        $edit_father_phone = inject_checker($connection, $_POST['edit_father_phone']);
        $edit_mother_name = inject_checker($connection, $_POST['edit_mother_name']);
        $edit_mother_occupation = inject_checker($connection, $_POST['edit_mother_occupation']);
        $edit_mother_phone = inject_checker($connection, $_POST['edit_mother_phone']);
        $edit_student_state = $_POST['edit_student_state'];
        $edit_student_lga = $_POST['edit_student_lga'];
        $edit_student_city = $_POST['edit_student_city'];
        $edit_student_nationality = $_POST['edit_student_nationality'];
        $edit_sponsor_name = inject_checker($connection, $_POST['edit_sponsor_name']);
        $edit_sponsor_phone = inject_checker($connection, $_POST['edit_sponsor_phone']);
        $edit_sponsor_address = inject_checker($connection, $_POST['edit_sponsor_address']);
        $edit_sponsor_occupation = inject_checker($connection, $_POST['edit_sponsor_occupation']);
        $edit_sponsor_relationship = $_POST['edit_sponsor_relationship'];
        $edit_previous_school = inject_checker($connection, $_POST['edit_previous_school']);
        $edit_last_class_passed = inject_checker($connection, $_POST['edit_last_class_passed']);
        $edit_student_tc = $_POST['edit_student_tc'];

        $query = " UPDATE `students` SET
                                      `gender` = '{$edit_student_gender}',
                                      `firstname` = '{$edit_student_firstname}',
                                      `lastname` = '{$edit_student_lastname}',
                                      `othername` = '{$edit_othername}',
                                      `dob` = '{$edit_student_dob}',
                                      `mob` = '{$edit_student_mob}',
                                      `yob` = '{$edit_student_yob}',
                                      `contact_phone` = '{$edit_student_phone}',
                                      `address` = '{$edit_student_address}',
                                      `father_name` = '{$edit_father_name}',
                                      `father_occupation` = '{$edit_father_occupation}',
                                      `father_phone` = '{$edit_father_phone}',
                                      `mother_name` = '{$edit_mother_name}',
                                      `mother_occupation` = '{$edit_mother_occupation}',
                                      `mother_phone` = '{$edit_mother_phone}',
                                      `state` = '{$edit_student_state}',
                                      `lga` = '{$edit_student_lga}',
                                      `city` = '{$edit_student_city}',
                                      `nationality` = '{$edit_student_nationality}',
                                      `sponsor_name` = '{$edit_sponsor_name}',
                                      `sponsor_phone` = '{$edit_sponsor_phone}',
                                      `sponsor_address` = '{$edit_sponsor_address}',
                                      `sponsor_occupation` = '{$edit_sponsor_occupation}',
                                      `relationship` = '{$edit_sponsor_relationship}',
                                      `previous_school` = '{$edit_previous_school}',
                                      `last_class_passed` = '{$edit_last_class_passed}',
                                      `class` = '{$edit_student_tc}' WHERE `id` = '{$one_student_hidden_id}' ";
        $run_query = mysqli_query($connection, $query);

        if($run_query == true){
            echo "<p class='text-success'><b>Student Info Updated</b></p>";
        }else{
            echo "<p class='text-danger><b>Student Info Update Failed</b></p>";
        }
    }
?>
 
<?php
    if(isset($_POST['print_student_slip'])){
        $print_id = $_POST['student_hidden_id'];
        
        $query = " SELECT * FROM `students` WHERE `id` = '{$print_id}' ";
        $run_query = mysqli_query($connection, $query);
        
        if(mysqli_num_rows($run_query) == 1){
            while($result = mysqli_fetch_assoc($run_query)){
                $student_id = $result['id'];
                $_SESSION['slip_id'] = $student_id;
                
                redirect_to("teacher_dashboard.php?slip");
            }
        }
    }
?>

 <div class='page-title'>
  <div>
    <h1><i class='fa fa-laptop'></i> Student Management</h1>
    <p>View Students in Class</p>
  </div>
  <div>
    <ul class='breadcrumb'>
      <li><i class='fa fa-home fa-lg'></i></li>
      <li><a href='#'>Student Management</a></li>
      <li><a href='#'>View Students in Class </a></li>
    </ul>
  </div>
</div>

<div class="card">
    <?php
        if(isset($msg)){
            echo $msg;
        }
    ?>
    <div class = 'row'>
        <div class = 'col-xs-12 col-sm-12 col-md-12'>
            <div class = 'panel panel-primary ch'>
                <div class = 'panel-heading'>
                    <h4 class = 'txt'>VIEW STUDENTS IN CLASS</h4>
                </div>
                <br/>
                
                <div class = 'panel-body'>
                    <form method = 'POST' action = ''>
                        <div class='row'>
                            <div class = 'col-xs-12 col-sm-12 col-md-8'>
                                <div class = 'input-group'>
                                    <span class = 'input-group-addon' id = 'sizing-addon2'>CLASS</span>
                                    <select name='reg_no_class' class='form-control' required>
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
                                </div>
                                <br/>
                            </div>
                            <div class = 'col-xs-12 col-sm-12 col-md-4'>
                                <button type = 'submit' name = 'get_reg_no_btn' class ='btn btn-primary btn-md' style='margin-left:20px;'><span class = 'glyphicon glyphicon-user'></span>&nbsp; VIEW MEMBERS</button>
                                <br/> 
                            </div>
                        </div>
                        <br />
                    </form>
                    
                    <?php
                        //////////////////// POST ACTION TO GET ALL STUDENTS NAMES AND REGISTRATION NUMBER FROM A PARTICULAR CLASS //////////////////////
                        if(isset($_POST['get_reg_no_btn'])){
                            $reg_no_class = inject_checker($connection, $_POST['reg_no_class']);

                            if($reg_no_class == "Select Class"){
                                $reg_msg = "<h4 class='text-danger'><b>!!! Please select class to get registration number.</b></h4>";
                                echo $reg_msg;
                            }
                            else{
                                $query = " SELECT * FROM `students` WHERE `class` = '{$reg_no_class}' ORDER BY `firstname` ASC ";
                                $run_query = mysqli_query($connection, $query);
                                if($run_query == true){
                                    if(mysqli_num_rows($run_query) > 0){
                                        $i = 0;
                                        echo"
                                            <div class='table-responsive'>
                                                <table class='table table-hover table-bordered'>
                                                    <thead>
                                                        <tr>
                                                            <th>S/N</th>
                                                            <th>STUDENT NAME</th>
                                                            <th>SEX</th>
                                                            <th>CLASS</th>
                                                            <th>PHONE</th>
                                                            <th>REG NUMBER</th>
                                                            <!--<th>PASSWORD</th>-->
                                                            <th>ACTION</th>
                                                        </tr>
                                                    </thead>
                                                ";
                                        while($result = mysqli_fetch_array($run_query)){
                                            $i++;
                                            $reg_no_id = $result['id'];
                                            $reg_no_firstname = $result['firstname'];
                                            $reg_no_lastname = $result['lastname'];
                                            $reg_no_othername = $result['othername'];
                                            $reg_no_class = $result['class'];
                                            $reg_reg_number = $result['reg_number'];
                                            $reg_phone = $result['contact_phone'];
                                            $reg_password = $result['gen_password'];
                                            $reg_sex = ucfirst($result['gender']);

                                            $reg_name = ucwords("{$reg_no_firstname} {$reg_no_lastname} {$reg_no_othername}");
                                            echo"
                                                <tr>
                                                    <td>{$i}</td>
                                                    <td>{$reg_name}</td>
                                                    <td>{$reg_sex}</td>
                                                    <td>{$reg_no_class}</td>
                                                    <td>{$reg_phone}</td>
                                                    <td>{$reg_reg_number}</td>
                                                    <!--<td>{$reg_password}</td>-->
                                                    <td>
                                                        <form method='POST' action=''>
                                                            <input type='hidden' name='student_hidden_id' value='{$reg_no_id}' />
                                                            <!--<input type='submit' name='edit_btn' value='Edit' class='btn btn-xs btn-primary' />
                                                            <input type='submit' name='student_delete_btn' id='demoSwal' value='Delete' class='btn btn-xs btn-danger' />-->
                                                            <input type='submit' name='print_student_slip' class='btn btn-xs btn-info' value='slip' />
                                                        </form>
                                                    </td>
                                                </tr>
                                            ";
                                        }
                                        echo"</table>
                                        </div>";
                                    }else{
                                        $reg_msg = "<h4 class='text-danger'><b>!!! No Records Found in {$reg_no_class}</b></h4>";
                                        echo $reg_msg;
                                    }
                                }
                            }
                        }
                        
                        
                    
                        /////////////////////////////// POST ACTION TO GET A PATICULAR STUDENT DETAILS IF EDIT BUTTON IS CLICKED ///////////////////////////
                        if(isset($_POST['edit_btn'])){
                            $edit_id = $_POST['student_hidden_id'];

                            $query = " SELECT * FROM `students` WHERE `id` = '{$edit_id}' ";
                            $run_query = mysqli_query($connection, $query);

                            if(mysqli_num_rows($run_query) == 1){
                                while($result = mysqli_fetch_assoc($run_query)){
                                    $id = $result['id'];
                                    $gender = $result['gender'];
                                    $firstname = $result['firstname'];
                                    $lastname = $result['lastname'];
                                    $othername = $result['othername'];
                                    $dob = $result['dob'];
                                    $mob = $result['mob'];
                                    $yob = $result['yob'];
                                    $contact_phone = $result['contact_phone'];
                                    $address = $result['address'];
                                    $father_name = $result['father_name'];
                                    $father_occupation = $result['father_occupation'];
                                    $father_phone = $result['father_phone'];
                                    $mother_name = $result['mother_name'];
                                    $mother_occupation = $result['mother_occupation'];
                                    $mother_phone = $result['mother_phone'];
                                    $state = $result['state'];
                                    $lga = $result['lga'];
                                    $city = $result['city'];
                                    $nationality = $result['nationality'];
                                    $sponsor_name = $result['sponsor_name'];
                                    $sponsor_phone = $result['sponsor_phone'];
                                    $sponsor_address = $result['sponsor_address'];
                                    $sponsor_occupation = $result['sponsor_occupation'];
                                    $relationship = $result['relationship'];
                                    $previous_school = $result['previous_school'];
                                    $last_class_passed = $result['last_class_passed'];
                                    $class = $result['class'];
                                    $passport = $result['passport'];
                                }

                                echo"
                                    <form action='' method='POST' enctype='multipart/form-data'>
                                        <div class = 'panel panel-primary ch'>
                                            <div class = 'panel-heading'>					
                                                <h4 class='text-center'>Edit Student Info</h4>
                                            </div>
                                            <div class = 'panel-body'>
                                                <div class='row'>
                                                    <div class='col-xs-12 col-sm-12 col-md-12'>
                                                            <table class='table table-striped'>
                                                                <tr>
                                                                    <td>Student Upload Image</td>
                                                                    <td>
                                                                        <div>
                                                                            <input type='file' name='file' value='{$passport}' class='form-control' required>
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
                                                                        <select name='edit_student_tc' class='form-control' required>
                                                                            <option selected >{$class}</option>";

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
                                                                            echo"
                                                                        </select>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Previous School Attended</td>
                                                                    <td>
                                                                        <div class='col-xs-12 col-sm-12 col-md-6'>
                                                                            <input name='edit_previous_school' value='{$previous_school}' required='' class='form-control' placeholder='Name of your previous school you attended' aria-describedby='basic-addon2' type='text'>
                                                                        </div>
                                                                        <div class='col-xs-12 col-sm-12 col-md-6'>
                                                                            <input name='edit_last_class_passed' value='{$last_class_passed}' required='' class='form-control' placeholder='Last Class Passed e.g (Primary 6, JSS 1, JSS3, SSS1)' aria-describedby='basic-addon2' type='text'>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Lastname</td>
                                                                    <td>
                                                                        <input type='text' name='edit_student_firstname' value='{$firstname}' placeholder='Lastname' class='form-control' value = '' required>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>First Name</td>
                                                                    <td>
                                                                        <input type='text' name='edit_student_lastname' value='{$lastname}' placeholder='First name' class='form-control' value = ''required>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Middle Name</td>
                                                                    <td>
                                                                        <input type='text' name='edit_student_othername' value='{$othername}' placeholder='Middle Name' class='form-control' value = ''required>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Sex</td>
                                                                    <td>
                                                                        <select name='edit_student_gender' class='form-control' required>
                                                                            <option selected >"; echo ucfirst($gender); echo "</option>
                                                                            <option>Male</option>
                                                                            <option>Female</option>
                                                                        </select>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Date Of Birth</td>
                                                                    <td>
                                                                        <div class='col-xs-12 col-sm-12 col-md-4'>
                                                                            <select name='edit_student_dob' class='form-control' required>
                                                                                <option selected>"; echo $dob; echo "</option>";

                                                                                    for($dob = 1; $dob <= 31; $dob++){
                                                                                        echo "<option>{$dob}</option>";
                                                                                    }
                                                                                echo"
                                                                            </select>
                                                                        </div>
                                                                        <div class='col-xs-12 col-sm-12 col-md-4'>
                                                                            <select name='edit_student_mob' class='form-control' required>
                                                                                <option selected>"; echo $mob;  echo "</option>";
                                                                                    $month_array = array("January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December");

                                                                                    foreach($month_array as $month){
                                                                                        echo "<option>{$month}</option><br>";
                                                                                    }

                                                                                echo"
                                                                            </select>
                                                                        </div>
                                                                        <div class='col-xs-12 col-sm-12 col-md-4'>
                                                                            <select name='edit_student_yob' class='form-control' required>
                                                                                <option selected>"; echo $yob; echo"</option>";

                                                                                    for($year = 2016; $year >= 1960; $year--){
                                                                                        echo "<option>{$year}</option>";
                                                                                    }
                                                                                echo"
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
                                                                    <select name='edit_student_nationality' class='form-control'>
                                                                        <option selected>"; echo $nationality; echo "</option>";

                                                                            $country_array = array("Argentina", "Japan", "Ethopia", "Nigeria", "Brazil", "Congo", "Ghana", "Portugal", "Spain", "Germany", "Italy", "France");

                                                                            foreach($country_array as $country){
                                                                                echo "<option>{$country}</option><br>";
                                                                            }
                                                                        echo"
                                                                    </select>			
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>State</td>
                                                                <td>
                                                                    <select name='edit_student_state' class='form-control' >
                                                                        <option selected >"; echo $state; echo "</option>";

                                                                            $state_array = array("Abia", "Adamawa", "Akwa ibom", "Anambra", "Bauchi", "Bayelsa", "Benue", "Borno", "Cross River", "Delta", "Ebonyi", "Edo", "Ekiti", "Enugu", "Gombe", "Imo", "Jigawa", "Kaduna", "Kano", "Katsina", "Kebbi", "Kogi", "Kwara", "Lagos", "Nasarawa", "Niger", "Ogun", "Ondo", "Osun", "Oyo", "Plateau", "Rivers", "Sokoto", "Taraba", "Yobe", "Zamfara", "FCT Abuja");

                                                                            foreach($state_array as $state){
                                                                                echo "<option>{$state}</option><br>";
                                                                            }
                                                                        echo"
                                                                    </select>			
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>LGA</td>
                                                                <td>
                                                                    <input type='text' class='form-control' name='edit_student_lga' placeholder='LGA' value='{$lga}' required>	
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>City</td>
                                                                <td>
                                                                    <input type='text' class='form-control'  name='edit_student_city' placeholder='Your City' value='{$city}' required>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Student Address</td>
                                                                <td>
                                                                    <input type='text' class='form-control'  name='edit_student_address' placeholder='Student address' value='{$address}' required>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Student Phone Number</td>
                                                                <td>
                                                                    <div class='input-group'>
                                                                        <input name='edit_student_phone' value='{$contact_phone}' pattern='[0-9]+' title='Input must be a valid phone number' value = '' required='' class='form-control' placeholder='Phone Number' aria-describedby='basic-addon2' type='phone'>
                                                                    </div>
                                                                </td>	
                                                            </tr>
                                                            <tr>
                                                                <td>Father's Details</td>
                                                                <td>
                                                                    <div class='col-xs-12 col-sm-12 col-md-4'>
                                                                        <input name='edit_father_name' value='{$father_name}' required='' class='form-control' placeholder='Father Name' aria-describedby='basic-addon2' type='text'>
                                                                    </div>
                                                                    <div class='col-xs-12 col-sm-12 col-md-4'>
                                                                        <input name='edit_father_occupation' value='{$father_occupation}' required='' class='form-control' placeholder='Father Occupation' aria-describedby='basic-addon2' type='text'>
                                                                    </div>
                                                                    <div class='col-xs-12 col-sm-12 col-md-4'>
                                                                        <input name='edit_father_phone' value='{$father_phone}' pattern='[0-9]+' title='Input must be a valid phone number' required='' class='form-control' placeholder='Phone Number' aria-describedby='basic-addon2' type='phone'>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Mother's Details</td>
                                                                <td>
                                                                    <div class='col-xs-12 col-sm-12 col-md-4'>
                                                                        <input name='edit_mother_name' value='{$mother_name}' required='' class='form-control' placeholder='Mother Name' aria-describedby='basic-addon2' type='text'>
                                                                    </div>
                                                                    <div class='col-xs-12 col-sm-12 col-md-4'>
                                                                        <input name='edit_mother_occupation' value='{$mother_occupation}' required='' class='form-control' placeholder='Mother Occupation' aria-describedby='basic-addon2' type='text'>
                                                                    </div>
                                                                    <div class='col-xs-12 col-sm-12 col-md-4'>
                                                                        <input name='edit_mother_phone' value='{$mother_phone}' pattern='[0-9]+' title='Input must be a valid phone number' required='' class='form-control' placeholder='Phone Number' aria-describedby='basic-addon2' type='phone'>
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
                                                                    <input type='text' class='form-control' name='edit_sponsor_name' value='{$sponsor_name}' placeholder='Sponsor Name' required>	
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Sponsor Phone Number</td>
                                                                <td>
                                                                    <div class='input-group'>
                                                                        <input name='edit_sponsor_phone' value='{$sponsor_phone}' pattern='[0-9]+' title='Input must be a valid phone number' required='' class='form-control' placeholder='Phone Number' aria-describedby='basic-addon2' type='phone'>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Sponsor Address</td>
                                                                <td>
                                                                    <input type='text' value='{$sponsor_address}' class='form-control'  name='edit_sponsor_address' placeholder='Sponsor address' required>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Sponsor Occupation</td>
                                                                <td>
                                                                    <input type='text' value='{$sponsor_occupation}' name='edit_sponsor_occupation' placeholder='Sponsor Occupation' class='form-control' required>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Relationship With Sponsor</td>
                                                                <td>
                                                                    <input type='text' value='{$relationship}' name='edit_sponsor_relationship' placeholder='Relationship With Sponsor' class='form-control' required>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <div class='col-xs-12 col-sm-12 col-md-6'>
                                                        </div>
                                                        <div class='col-xs-12 col-sm-12 col-md-6'>
                                                            <input type='hidden' name='one_student_hidden_id' value='{$id}' />
                                                            <button class='btn btn-primary' style='border-radius:10px;' name='student_edit_btn' type='submit'>Save Changes</button>
                                                        </div><br><br>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                ";
                            }
                        }
                    ?>
                </div>
            </div>
        </div>
    </div>
</div>