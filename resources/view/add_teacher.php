<?php
    if(isset($_POST['teacher_register_btn'])){
        $username = inject_checker($connection, $_POST['username']);
        $password = inject_checker($connection, $_POST['password']);
        $firstname = inject_checker($connection, ucfirst($_POST['firstname']));
        $lastname = inject_checker($connection, ucfirst($_POST['lastname']));
        $employment_date = inject_checker($connection, ucwords($_POST['employment_date']));
        $position = inject_checker($connection, ucwords($_POST['position']));
        $subject_to_teach = inject_checker($connection, ucwords($_POST['subject_to_teach']));
        $lga = inject_checker($connection, ucwords($_POST['lga']));
        $state = inject_checker($connection, ucwords($_POST['state']));
        $country = inject_checker($connection, ucwords($_POST['country']));
        $sex = inject_checker($connection, $_POST['sex']);
        $dob = inject_checker($connection, $_POST['dob']);
        $mob = inject_checker($connection, $_POST['mob']);
        $yob = inject_checker($connection, $_POST['yob']);
        $address = inject_checker($connection, ucwords($_POST['address']));
        $phone = inject_checker($connection, $_POST['phone']);
        $email = inject_checker($connection, strtolower($_POST['email']));
        $status = "Active";
        
        //Form Validation
        if(empty($username) || empty($password) || empty($firstname) || empty($lastname) || empty($employment_date) || empty($position) || empty($subject_to_teach) || empty($lga) || empty($state) || empty($country) || empty($sex) || empty($dob) || empty($mob) || empty($yob) || empty($address) || empty($phone) || empty($email)){
            $msg = "<p class='text-danger'><b>All fields required</b></p>";
        }else{
            $query = " SELECT * FROM `teachers` WHERE `username` = '{$username}' ";
            $run_query = mysqli_query($connection, $query);
            
            if(mysqli_num_rows($run_query) > 0){
                $msg = "<p class='text-danger'><b>Your username already exist</b></p>";
            }else{
                $query = " SELECT * FROM `teachers` WHERE `email` = '{$email}' ";
                $run_query = mysqli_query($connection, $query);
                
                if(mysqli_num_rows($run_query) > 0){
                    $msg = "<p class='text-danger'><b>Your email already exist</b></p>";
                }else{
                    $query = " INSERT INTO `teachers`(`username`, `password`, `firstname`, `lastname`, `employment_date`, `teacher_position`, `subject_to_teach`, `lga`, `state`, `country`, `sex`, `dob`, `mob`, `yob`, `address`, `phone`, `email`, `status`, `date_registered`) 
                                            VALUES('{$username}', '{$password}', '{$firstname}', '{$lastname}', '{$employment_date}', '{$position}', '{$subject_to_teach}', '{$lga}', '{$state}', '{$country}', '{$sex}', '{$dob}', '{$mob}', '{$yob}', '{$address}', '{$phone}', '{$email}', '{$status}', '{$date}') ";
                    $run_query = mysqli_query($connection, $query);
                    
                    if($run_query == true){
                        $msg = "<p class='text-success'><b>Teacher Registration Successfull</b></p>";
                    }else{
                        $msg = "<p class='text-danger'><b>Teacher Registration Failed</b></p>";
                    }
                }
            }
        }
        
    }
?>

<div class="page-title">
  <div>
    <h1><i class="fa fa-calendar"></i> Teachers</h1>
    <p>Add a new teacher</p>
  </div>
  <div>
    <ul class="breadcrumb">
      <li><a href='modules.php'><i class="fa fa-home fa-lg"></i></a></li>
      <li><a href="#">Add teachers</a></li>
    </ul>
  </div>
</div>
<div class="card">
    <?php
        if(isset($msg)){
            echo $msg;
        }
    ?>
    <form action='' method='POST' enctype = "multipart/form-data">
        <div class = 'panel panel-primary ch'>
            <div class = 'panel-heading'>					
                <h4 class='text-center'>Add new teachers</h4>
            </div>
            <div class = 'panel-body'>
                <div class='row'>
                    <div class='col-xs-12 col-sm-12 col-md-12'>
                        <table class='table table-striped'>
                            <tr>
                                <td>Username</td>
                                <td>
                                    <input type='text' value = ''name='username' placeholder='username' class='form-control' required>
                                </td>
                            </tr>
                            <tr>
                                <td>Password</td>
                                <td>
                                    <input type='password' value = ''name='password' placeholder='password' class='form-control' required>
                                </td>
                            </tr>
                            <tr>
                                <td>First Name</td>
                                <td>
                                    <input type='text' value = ''name='firstname' placeholder='First Name' class='form-control' required>
                                </td>
                            </tr>
                            <tr>
                                <td>Last Name</td>
                                <td>
                                    <input type='text' value = ''name='lastname' placeholder='Last Name' class='form-control' required>
                                </td>
                            </tr>
                            <tr>
                                <td>Employment Date</td>
                                <td>
                                    <input type='text' value = ''name='employment_date' placeholder='Date Of Employment e.g 21/07/2016' class='form-control' required>
                                </td>
                            </tr>
                            <tr>
                                <td>Teacher Position</td>
                                <td>
                                    <input type='text' value = ''name='position' placeholder='e.g Head of Department' class='form-control' required>
                                </td>
                            </tr>
                            <tr>
                                <td>Subject to teach</td>
                                <td>
                                    <select name='subject_to_teach' class='form-control' required>
                                        <?php
                                            $query = " SELECT * FROM `school_subjects` ";
                                            $run_query = mysqli_query($connection, $query);

                                            if(mysqli_num_rows($run_query) > 0){
                                                while($result = mysqli_fetch_assoc($run_query)){
                                                    $subject = $result['subjects'];
                                                    echo "<option>{$subject}</option>";
                                                }
                                            }
                                        ?>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>LGA</td>
                                <td>
                                    <input type='text' value = ''name='lga' placeholder='LGA' class='form-control' required>
                                </td>
                            </tr>
                            <tr>
                                <td>State</td>
                                <td>
                                    <input type='text' value = ''name='state' placeholder='State' class='form-control' required>
                                </td>
                            </tr>
                            <tr>
                                <td>Country</td>
                                <td>
                                    <input type='text' value = '' name='country' placeholder='Country' class='form-control' required>
                                </td>
                            </tr>
                            <tr>
                                <td>Sex:</td>
                                <td>
                                    <select name='sex' class='form-control' required>
                                        <option>Male</option>
                                        <option>Female</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>Date Of Birth</td>
                                <td>
                                    <div class='col-xs-12 col-sm-12 col-md-4'>
                                        <select name='dob' class='form-control' style='width:80px;' required>
                                            <option>Day</option>
                                            <?php
                                                for($dob = 1; $dob <= 31; $dob++){
                                                    echo "<option>{$dob}</option>";
                                                }
                                            ?>
                                        </select>
                                    </div>
                                    <div class='col-xs-12 col-sm-12 col-md-4'>
                                        <select name='mob' class='form-control' style='width:90px;' required>
                                            <?php
                                                $month_array = array("January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December");
													
                                                foreach($month_array as $month){
                                                    echo "<option>{$month}</option><br>";
                                                }
                                            ?>
                                        </select>
                                    </div>
                                    <div class='col-xs-12 col-sm-12 col-md-4'>
                                        <select name='yob' class='form-control' style='width:100px;' required>
                                            <?php
                                                for($year = 2017; $year >= 1960; $year--){
                                                    echo"<option>{$year}</option>";
                                                }
                                            ?>
                                        </select>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>Staff Address</td>
                                <td>
                                    <input type='text' name='address' placeholder='Staff Address' class='form-control' 
                                    value = ''
                                    required>
                                </td>
                            </tr>
                            <tr>
                                <td>Staff Phone Number</td>
                                    <td>
                                    <div class="input-group">
                                    <input name="phone" pattern="[0-9]+" title="Input must be a valid phone number" value='' required="" class="form-control" placeholder="Phone Number" aria-describedby="basic-addon2" type="phone">
                                </div></td>
                            </tr>
                            <tr>
                                <td>Staff Email</td>
                                <td>
                                    <input type='email' name='email' placeholder='Staff Email e.g me@gmail.com' class='form-control' value = ''required>
                                </td>
                            </tr>
                        </table>
                        <div class='col-xs-12 col-sm-12 col-md-6'></div>
                        <div class='col-xs-12 col-sm-12 col-md-6'>
                            <button type='submit' name='teacher_register_btn' class='btn btn-primary'>Register</button>
                        </div>
                        <br><br>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>
