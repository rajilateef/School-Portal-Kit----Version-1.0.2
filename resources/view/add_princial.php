<?php
    if(isset($_POST['principal_register_btn'])){
        $username = inject_checker($connection, $_POST['username']);
        $password = inject_checker($connection, $_POST['password']);
        $firstname = inject_checker($connection, ucfirst($_POST['firstname']));
        $lastname = inject_checker($connection, ucfirst($_POST['lastname']));
        $position = inject_checker($connection, ucwords($_POST['position']));
        $sex = inject_checker($connection, $_POST['sex']);
        $phone = inject_checker($connection, $_POST['phone']);
        $email = inject_checker($connection, strtolower($_POST['email']));
        $next_of_kin = inject_checker($connection, ucwords($_POST['next_of_kin']));
        $relationship = inject_checker($connection, ucfirst($_POST['relationship']));
        $next_of_kin_phone = inject_checker($connection, $_POST['next_of_kin_phone']);
        
        //Form Validation
        if(empty($username) || empty($password) || empty($firstname) || empty($lastname) || empty($position) || empty($sex) || empty($phone) || empty($email) || empty($next_of_kin) || empty($relationship) || empty($next_of_kin_phone)){
            $msg = "<p class='text-danger'><b>All fields are required</b></p>";
        }else{
            $query = " SELECT * FROM `principal` WHERE `username` = '{$username}' ";
            $run_query = mysqli_query($connection, $query);
            
            if(mysqli_num_rows($run_query) > 0){
                $msg = "<p class='text-danger'><b>Your username already exist</b></p>";
            }else{
                $query = " SELECT * FROM `principal` WHERE `email` = '{$email}' ";
                $run_query = mysqli_query($connection, $query);
                
                if(mysqli_num_rows($run_query) > 0){
                    $msg = "<p class='text-danger'><b>Your email already exist</b></p>";
                }else{
                    $query = " INSERT INTO `principal`(`username`, `password`, `firstname`, `lastname`, `position`, `sex`, `phone`, `email`, `next_of_kin`, `next_of_kin_relationship`, `next_of_kin_phone`, `date_registered`) 
                                        VALUES('{$username}', '{$password}', '{$firstname}', '{$lastname}', '{$position}', '{$sex}', '{$phone}', '{$email}', '{$next_of_kin}', '{$relationship}', '{$next_of_kin_phone}', '{$date}') ";
                    $run_query = mysqli_query($connection, $query);

                    if($run_query == true){
                        $msg = "<p class='text-success'><b>Principal Registration Successfull</b></p>";
                    }else{
                        $msg = "<p class='text-danger'><b>Registration of new principal failed</b></p>";
                    }
                }
            }
        }
    }
?>

<div class="page-title">
  <div>
    <h1><i class="fa fa-calendar"></i> Principal</h1>
    <p>Add new principal</p>
  </div>
  <div>
    <ul class="breadcrumb">
      <li><a href='modules.php'><i class="fa fa-home fa-lg"></i></a></li>
      <li><a href="#">Add principal</a></li>
    </ul>
  </div>
</div>
<div class="card">
    <?php
        if(isset($msg)){
            echo $msg;
        }
    ?>
    <form action='' method='POST'>
        <div class = 'panel panel-primary ch'>
            <div class = 'panel-heading'>					
                <h4 class='text-center'>Add New Principal</h4>
            </div>
            <div class = 'panel-body'>
                <div class='row'>
                    <div class='col-xs-12 col-sm-12 col-md-12'>
                        <table class='table table-striped'>
                            <tr>
                                <td>Username:</td>
                                <td>
                                    <input type='text' name='username' value = '' placeholder='username' class='form-control' required>
                                </td>
                            </tr>
                            <tr>
                                <td>Password:</td>
                                <td>
                                    <input type='password' value = ''name='password' placeholder='password' class='form-control' required>
                                </td>
                            </tr>
                            <tr>
                                <td>First Name:</td>
                                <td>
                                    <input type='text' value = ''name='firstname' placeholder='firstname' class='form-control' required>
                                </td>
                            </tr>
                            <tr>
                                <td>Last Name:</td>
                                <td>
                                    <input type='text' name='lastname' value = ''placeholder='Last Name' class='form-control' required>
                                </td>
                            </tr>
                            <tr>
                                <td>Position:</td>
                                <td>
                                    <input type='text' name='position' value = ''placeholder='Ex Headmaster' class='form-control' required>
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
                                <td>Phone Number:</td>
                                <td>
                                    <div class="input-group">
                                    <input name="phone" pattern="[0-9]+" title="Input must be a valid phone number" 
                                    value='' required="" class="form-control" placeholder="Phone Number" aria-describedby="basic-addon2" type="phone">
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>Email:</td>
                                <td>
                                    <input type='email' value='' name='email' placeholder='Email' class='form-control' required>
                                </td>
                            </tr>
                            <tr>
                                <td>Next Of Kin:</td>
                                <td>
                                    <input type='text' name='next_of_kin' value = ''placeholder='Next Of Kin' class='form-control' required>
                                </td>
                            </tr>
                            <tr>
                                <td>Relationship With Next Of Kin:</td>
                                <td>
                                    <input type='text' name='relationship' value = ''placeholder='Relationship With Next Of Kin' class='form-control' required>
                                </td>
                            </tr>
                            <tr>
                                <td>Next of Kin Phone Number:</td>
                                <td>
                                    <div class="input-group">
                                    <input name="next_of_kin_phone" pattern="[0-9]+" title="Input must be a valid phone number" 
                                    value = '' required="" class="form-control" placeholder="Phone Number" aria-describedby="basic-addon2" type="phone">
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <div class='col-xs-12 col-sm-12 col-md-6'></div>
                        <div class='col-xs-12 col-sm-12 col-md-6'>
                            <button type='submit' name='principal_register_btn' class='btn btn-primary'>Register</button>
                        </div><br><br>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>
