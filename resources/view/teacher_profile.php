<div class="row user">
  <div class="col-md-12">
    <div class="profile">
      <div class="info"><img class='img-circle' src='../../img/teacher.png' alt='User Image'>
        <h4><?php echo $name; ?></h4>
        <p>Teacher</p>
      </div>
      <div class="cover-image"></div>
    </div>
  </div>
  <div class="col-md-9">
    <div class="tab-content">
      <div class="tab-pane active" id="user-timeline">
        <div class="timeline">
          <div class="post">
            <div class="post-media"><a href="#"></a>
              <div class="content">
                <h5><a href="#">Teacher Status: <?php echo $teacher_status; ?></a></h5>
                <h5><a href="#">Username: <?php echo $teacher_username; ?></a></h5>
                <h5><a href="#">Phone: <?php echo $teacher_phone; ?></a></h5>
                <h5><a href="#">Email: <?php echo $teacher_email; ?></a></h5>
                <h5><a href="#">Date of Birth: <?php echo $date_of_birth; ?></a></h5>
                <h5><a href="#">Address: <?php echo $teacher_address; ?></a></h5>
                <h5><a href="#">Sex: <?php echo $sex; ?></a></h5>
                <h5><a href="#">Nationality: <?php echo $teacher_country; ?></a></h5>
                <h5><a href="#">State: <?php echo $teacher_state; ?></a></h5>
                <h5><a href="#">LGA: <?php echo $teacher_lga; ?></a></h5>
                <h5><a href="#">Term: <?php echo $current_term; ?></a></h5>
                <h5><a href="#">Session: <?php echo $current_session; ?></a></h5>
                <h5><a href="#">Employed On: <?php echo $employment_date; ?></a></h5>
                <h5><a href="#">Subject you are teaching: <?php echo $subject; ?></a></h5>
                <h5><a href="#">Position: <?php echo $position; ?></a></h5>
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
          <form>
            <div class="row mb-20">
              <div class="col-md-4">
                <label>First Name</label>
                <input class="form-control" type="text">
              </div>
              <div class="col-md-4">
                <label>Last Name</label>
                <input class="form-control" type="text">
              </div>
            </div>
            <div class="row">
              <div class="col-md-8 mb-20">
                <label>Email</label>
                <input class="form-control" type="text">
              </div>
              <div class="clearfix"></div>
              <div class="col-md-8 mb-20">
                <label>Mobile No</label>
                <input class="form-control" type="text">
              </div>
              <div class="clearfix"></div>
              <div class="col-md-8 mb-20">
                <label>Office Phone</label>
                <input class="form-control" type="text">
              </div>
              <div class="clearfix"></div>
              <div class="col-md-8 mb-20">
                <label>Home Phone</label>
                <input class="form-control" type="text">
              </div>
            </div>
            <div class="row mb-10">
              <div class="col-md-12">
                <button class="btn btn-primary" type="button"><i class="fa fa-fw fa-lg fa-check-circle"></i> Save</button>
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