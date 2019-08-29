<?php
    ////////// POST ACTION TO ADD NEW SESSION INTO DATABASE ///////////////
    if(isset($_POST['add_session_btn'])){
        $add_session = inject_checker($connection, $_POST['add_session']);

        if(empty($add_session)){
            $msg = "<p class='text-danger'><b><span class='glyphicon glyphicon-remove'></span> You Need to Type the Session You want to Add</b></p>";
        }else{
            $query = " SELECT * FROM `sessions` WHERE `sessions` = '{$add_session}' ";
            $run_query = mysqli_query($connection, $query);
            if(mysqli_num_rows($run_query) > 0){
                $msg = "<p class='text-danger'><b><span class='glyphicon glyphicon-remove'></span> Sorry, {$add_session} Session has Already been added</b></p>";
            }else{
                $query = " INSERT INTO `sessions`(`sessions`, `date_added`) VALUES('$add_session', '$date') ";
                $run_query = mysqli_query($connection, $query);
                if($run_query == true){
                    $msg = "<p class='text-success'><b><span class='glyphicon glyphicon-ok'></span> New Session Successfully Added</b></p>";
                }else{
                    $msg = "<p class='text-danger'><b><span class='glyphicon glyphicon-remove'></span> Fail to add new session</b></p>";
                }
            }
        }
    }
?>
 

 <div class='page-title'>
  <div>
    <h1><i class='fa fa-laptop'></i> Administrative Manager</h1>
    <p>Add New Session</p>
  </div>
  <div>
    <ul class='breadcrumb'>
      <li><i class='fa fa-home fa-lg'></i></li>
      <li><a href='#'>Administrative Manager</a></li>
      <li><a href='#'>Add New Session </a></li>
    </ul>
  </div>
</div>

<div class='card'>
    <?php
        if(isset($msg)){
            echo $msg;
        }
    ?>
    <form action='' method='POST'>
        <div class = 'panel panel-primary ch'>
            <div class = 'panel-heading'>					
                <h4 class='text-center'>Add New Session</h4>
            </div>
            <div class = 'panel-body'>
                <div class='row'>
                    <div class='col-xs-12 col-sm-12 col-md-12'>
                        <table class='table table-striped'>
                            <tr>
                                <td>Add New Session</td>
                                <td>
                                    <input type='text' name='add_session' placeholder='Type New Session e.g (2016/2017)' class='form-control' value = '' required>
                                </td>
                            </tr>
                        </table>
                            <div class='col-xs-12 col-sm-12 col-md-6'>
                            </div>
                            <div class='col-xs-12 col-sm-12 col-md-6'>
                                <button name='add_session_btn' class='btn btn-primary' style='border-radius:10px;' type='submit'>Add It</button>
                            </div>
                            <br><br>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>