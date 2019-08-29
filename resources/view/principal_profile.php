<?php
    if(isset($_POST['update_btn'])){
        $username = inject_checker($connection, $_POST['username']);
        $firstname = inject_checker($connection, ucfirst($_POST['firstname']));
        $lastname = inject_checker($connection, ucfirst($_POST['lastname']));
        $position = inject_checker($connection, ucwords($_POST['position']));
        $sex = inject_checker($connection, $_POST['sex']);
        $phone = inject_checker($connection, $_POST['phone']);
        $email = inject_checker($connection, strtolower($_POST['email']));
        
        if(empty($username) || empty($firstname) || empty($lastname) || empty($position) || empty($phone) || empty($email)){
			$msg = "<p class='text-danger'><b>No Field Should be Empty</b></p>";
		}
        else{
            $query = " UPDATE principal SET
                                    username = '{$username}',
                                    firstname = '{$firstname}',
                                    lastname = '{$lastname}',
                                    position = '{$position}',
                                    sex = '{$sex}',
                                    phone = '{$phone}',
                                    email = '{$email}' WHERE id = '{$principal_id}' ";
            $run_query = mysqli_query($connection, $query);
            
            if($run_query == true){
                $msg = "<p class='text-success'><b>Details Updated Successfully</b></p>";
            }
        }
    }
?>
<div class="row user">
  <div class="col-md-12">
    <div class="profile">
      <div class="info"><img class='img-circle' src='../../img/avatar.gif' alt='User Image'>
        <h4><?php echo $name; ?></h4>
        <p>Principal</p>
      </div>
      <div class="cover-image"></div>
    </div>
  </div>
    
  <div class="col-md-9">
    <?php
        if(isset($msg)){
            echo $msg;
        }
    ?>
    <div class="tab-content">
      <div class="tab-pane active" id="user-timeline">
        <div class="timeline">
          <div class="post">
            <div class="post-media"><a href="#"></a>
              <div class="content">
                <h5><a href="#">Phone: <?php echo $principal_phone; ?></a></h5>
                <h5><a href="#">Email: <?php echo $principal_email; ?></a></h5>
                <h5><a href="#">Sex: <?php echo $principal_sex; ?></a></h5>
                <h5><a href="#">Position: <?php echo $principal_position; ?></a></h5>
                <h5><a href="#">Next of Kin: <?php echo $principal_nok; ?></a></h5>
                <h5><a href="#">Next of Kin Phone: <?php echo $principal_nok_phone; ?></a></h5>
                <h5><a href="#">Term: <?php echo $current_term; ?></a></h5>
                <h5><a href="#">Session: <?php echo $current_session; ?></a></h5>
                <p class="text-muted"><small>Date Registered: <?php echo $date_registered; ?> </small></p>
              </div>
            </div>
            <div class="post-content">
              <!--<p>
                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,	quis tion ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non	proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
              </p>-->
            </div>
          </div>

        </div>
      </div>

      <div class="tab-pane fade" id="user-settings">
        <div class="card user-settings">
          <h4 class="line-head">Settings</h4>
          <form method="post" action="">
            <div class="row mb-20">
              <div class="col-md-4">
                <label>Username</label>
                <input name="username" class="form-control" type="text">
              </div>
              <div class="col-md-4">
                <label>First Name</label>
                <input name="firstname" class="form-control" type="text">
              </div>
              <div class="col-md-4">
                <label>Last Name</label>
                <input name="lastname" class="form-control" type="text">
              </div>
            </div>
            <div class="row">
              <div class="col-md-5 mb-20">
                <label>Position</label>
                <input name="position" class="form-control" type="text">
              </div>
              <div class="col-md-3 mb-20">
                <label>Sex</label>
                <select name="sex" class="form-control">
                    <option>Male</option>
                    <option>Female</option>
                </select>
              </div>
              <div class="col-md-4 mb-20">
                <label>Phone</label>
                <input name="phone" class="form-control" type="text">
              </div>
              <div class="clearfix"></div>
              <div class="col-md-8 mb-20">
                <label>Email</label>
                <input name="email" class="form-control" type="text">
              </div>
              <div class="clearfix"></div>
            </div>
            <div class="row mb-10">
              <div class="col-md-12">
                <button name="update_btn" class="btn btn-primary" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i> Save</button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
  <div class="col-md-3">
    <div class="card p-0">
      <ul class="nav nav-tabs nav-stacked user-tabs">
        <li class="active"><a href="#user-timeline" data-toggle="tab">Timeline</a></li>
        <li><a href="#user-settings" data-toggle="tab">Settings</a></li>
      </ul>
    </div>
  </div>
</div>