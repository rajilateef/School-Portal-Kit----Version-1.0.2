<div class="page-title">
      <div>
        <h1><i class="fa fa-envelope-o"></i> Mailbox</h1>
      </div>
      <div>
        <ul class="breadcrumb">
          <li><i class="fa fa-home fa-lg"></i></li>
          <li><a href="#">Mailbox</a></li>
        </ul>
      </div>
    </div>
    <div class="row">
      <div class="col-md-3"><a class="mb-20 btn btn-primary btn-block" href="">Compose Mail</a>
        <div class="card p-0">
          <h4 class="card-title folder-head">Folders</h4>
          <div class="card-body">
            <ul class="nav nav-pills nav-stacked mail-nav">
              <li class="active"><a href="#"><i class="fa fa-inbox fa-fw"></i> Inbox<span class="label label-primary pull-right">12</span></a></li>
              <li><a href="#"><i class="fa fa-envelope-o fa-fw"></i> Sent</a></li>
              <li><a href="#"><i class="fa fa-file-text-o fa-fw"></i> Drafts</a></li>
              <li><a href="#"><i class="fa fa-filter fa-fw"></i> Junk <span class="label label-warning pull-right">65</span></a></li>
              <li><a href="#"><i class="fa fa-trash-o fa-fw"></i> Trash</a></li>
            </ul>
          </div>
        </div>
      </div>
      <div class="col-md-9">
        <div class="card">
          <div class="mailbox-controls">
            <div class="animated-checkbox">
              <label>
                <input type="checkbox"><span class="label-text"></span>
              </label>
            </div>
            <div class="btn-group">
              <button class="btn btn-primary btn-sm" type="button"><i class="fa fa-trash-o"></i></button>
              <button class="btn btn-primary btn-sm" type="button"><i class="fa fa-reply"></i></button>
              <button class="btn btn-primary btn-sm" type="button"><i class="fa fa-share"></i></button>
              <button class="btn btn-primary btn-sm" type="button"><i class="fa fa-refresh"></i></button>
            </div>
          </div>
          <div class="table-responsive mailbox-messages">
            <table class="table table-hover">
              <tbody>
                <?php
                    $query = " SELECT * FROM mail ";
                    $run_query = mysqli_query($connection, $query);
                  
                    if(mysqli_num_rows($run_query) > 0){
                        while($result = mysqli_fetch_assoc($run_query)){
                            $name = $result['name'];
                            $email = $result['email'];
                            $message = $result['message'];
                            $date = $result['mail_date'];
                            
                            echo "
                                <tr>
                                  <td>
                                    <div class='animated-checkbox'>
                                      <label>
                                        <input type='checkbox'><span class='label-text'> </span>
                                      </label>
                                    </div>
                                  </td>
                                  <td><a href='#'><i class='fa fa-star-o'></i></a></td>
                                  <td><a href='read-mail.html'>{$name}</a></td>
                                  <td class='mail-subject'><b>{$email}</td>
                                  <td><i class='fa fa-paperclip'></i></td>
                                  <td>{$date}</td>
                                </tr>
                            ";
                        }
                    }
                ?>
               
              </tbody>
            </table>
          </div>
          <div class="text-right semibold-text"><span class="text-muted mr-10">Showing 1-15 out of 60</span>
            <div class="btn-group">
              <button class="btn btn-primary btn-sm" type="button"><i class="fa fa-chevron-left"></i></button>
              <button class="btn btn-primary btn-sm" type="button"><i class="fa fa-chevron-right"></i></button>
            </div>
          </div>
        </div>
      </div>
    </div>