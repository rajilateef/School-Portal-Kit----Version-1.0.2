<?php
    if(isset($_POST['pwd_reset_btn'])){
        $old_pwd = inject_checker($connection, $_POST['old_pwd']);
        $new_pwd = inject_checker($connection, $_POST['new_pwd']);
        $confirm_new_pwd = inject_checker($connection, $_POST['confirm_new_pwd']);
        
        if(empty($old_pwd) || empty($new_pwd) || empty($confirm_new_pwd)){
            $msg = "<p class='text-danger'><b>All fields required</b></p>";
        }
        elseif($new_pwd !== $confirm_new_pwd){
            $msg = "<p class='text-danger'><b>Password Mismatch</b></p>";
        }else{
            $query = " SELECT * FROM `principal` WHERE `id` = '{$principal_id}' ";
            $run_query = mysqli_query($connection, $query);
            
            if(mysqli_num_rows($run_query) == 1){
                while($result = mysqli_fetch_assoc($run_query)){
                    $principal_old_password = $result['password'];
                }
            }
            
            if($old_pwd !== $principal_old_password){
                $msg = "<p class='text-danger'><b>The old password you typed is incorrect</b></p>";
            }else{
                $query = " UPDATE `principal` SET 
                                `password` = '{$new_pwd}' WHERE `id` = '{$principal_id}' ";
                $run_query = mysqli_query($connection, $query);
                
                if($run_query){
                    $msg = "<p class='text-success'><b>Password Reset Successfull</b></p>";
                }else{
                    $msg = "<p class='text-danger'><b>Password Reset Failed</b></p>";
                }
            }
        }
    }
?>
<div class="page-title">
  <div>
    <h1><i class="fa fa-calendar"></i> Reset Password</h1>
    <p>Change Default Password to your own prefered password</p>
  </div>
  <div>
    <ul class="breadcrumb">
      <li><a href='student_dashboard.php'><i class="fa fa-home fa-lg"></i></a></li>
      <li><a href="#">Reset Your Password</a></li>
    </ul>
  </div>
</div>

<div class="card">
    <?php
        if(isset($msg)){
            echo $msg;
        }
    ?>
    <div class='row'>
        <div class='col-xs-12 col-sm-12 col-md-6'>
			<div class='panel panel-primary'>
                <div class='panel-heading'>
                    <h3 class='log-text'>Reset Your Password</h3>
                </div>
                <div class='panel-body'>
                    <form method='POST' action=''>
                        <div class='input-group'>
                            <span class='input-group-addon' id='basic-addon2'>Old Password</span>
                            <input type='password' name='old_pwd' value='' placeholder='Type Current Password' class='form-control' required />
                        </div>
                        <br />

                        <div class='input-group'>
                            <span class='input-group-addon' id='basic-addon2'>New Password</span>
                            <input type='password' name='new_pwd' placeholder='Type New Password' class='form-control' required />
                        </div>
                        <br />
                        
                        <div class='input-group'>
                            <span class='input-group-addon' id='basic-addon2'>Confirm Password</span>
                            <input type='password' name='confirm_new_pwd' placeholder='Re-type New Password' class='form-control' required />
                        </div>
                        <br />

                        <p id='btnsubmit'><input type='submit' name='pwd_reset_btn' id='submit' value='Reset' class='btn btn-large btn-primary login_btn text-center' /></p>
                    </form>
                </div>		
            </div>
        </div>
    </div>
</div>