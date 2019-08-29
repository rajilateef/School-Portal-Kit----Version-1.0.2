<?php
    if(isset($_POST['change_password_btn'])){
        $username = inject_checker($connection, $_POST['username']);
        $new_password = inject_checker($connection, $_POST['new_password']);
        
        if(empty($username) || empty($new_password)){
            $msg = "<p class='text-danger'><b>All fields are required</b></p>";
        }
        else{
            $query = " SELECT * FROM `users` WHERE `email` = '{$username}' ";
            $run_query = mysqli_query($connection, $query);
            
            if(mysqli_num_rows($run_query) == 1){
                $query = " UPDATE `users` SET 
                                        `password` = '{$new_password}' 
                                        WHERE `email` = '{$username}' ";
                $run_query = mysqli_query($connection, $query);
                if($run_query == true){
                    $msg = "<p class='text-success'><b>Admin Password reset Successfull</p></p>";
                }else{
                    $msg = "<p class='text-danger'><b>Admin Password reset failed</p></p>";
                }
            }else{
                $query = " SELECT * FROM `students` WHERE `reg_number` = '{$username}' ";
                $run_query = mysqli_query($connection, $query);
                
                if(mysqli_num_rows($run_query) == 1){
                    $query = " UPDATE `students` SET 
                                        `gen_password` = '{$new_password}' 
                                        WHERE `reg_number` = '{$username}' ";
                    $run_query = mysqli_query($connection, $query);
                    
                    if($run_query == true){
                        $msg = "<p class='text-success'><b>Student Password reset Successfull</p></p>";
                    }else{
                        $msg = "<p class='text-danger'><b>Student Password reset failed</p></p>";
                    }
                }else{
                    $msg = "<p class='text-danger'><b>User Does not exist</p></p>";
                }
            }
        }
    }
?>

<div class='page-title'>
    <div>
        <h1><i class='fa fa-graduation-cap'></i> Reset Password</h1>
        <p class='text-center'>Recover forgotten password</p>
    </div>
    <div>
        <ul class='breadcrumb'>
            <li><a href='modules.php'><i class='fa fa-home fa-lg'></i></a></li>
            <li><a href='modules.php?dashboard'>Recover Password</a></li>
        </ul>
    </div>
</div>

<div class="card">
    <?php
        if(isset($msg)){
            echo $msg;
        }
    ?>
    <form method = 'POST' action = ''>	
        <section>
            <div class = 'row'>
                <div class = 'col-xs-12 col-sm-12 col-md-12 shift'>
                    <div class = 'panel panel-primary ch'>
                        <div class = 'panel-heading'>
                            <h4 class = 'txt'>Staff/Student Password Reset</h4>
                        </div><br/>
                        <div class = 'panel-body'>
                            <div class='row'>
                                <div class = 'col-xs-12 col-sm-12 col-md-5'>
                                    <div class = 'input-group'>
                                        <span class = 'input-group-addon' id = 'sizing-addon2'>Username/Reg Number:</span>
                                        <input type='text' name='username' class='form-control' value='' required>
                                    </div><br/>
                                </div>
                                
                                <div class = 'col-xs-12 col-sm-12 col-md-4'>
                                    <div class = 'input-group'>
                                        <span class = 'input-group-addon' id = 'sizing-addon2'>New Password:</span>
                                        <input type='text' name='new_password' class='form-control' value='' required>
                                    </div><br/>
                                </div>
                                
                                <div class = 'col-xs-12 col-sm-12 col-md-3'>
                                    <button type = 'submit' name = 'change_password_btn' class = 'btn btn-primary btn-md' style=''><span class = 'glyphicon glyphicon-user'></span>&nbsp; Reset Password</button><br/> 
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class = 'col-xs-12 col-sm-12 col-md-4'></div>
            </div>
        </section>
    </form>
</div>
