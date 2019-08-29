<?php
    if(isset($_POST['del_request_btn'])){
        $del_id = $_POST['del_request_hidden_id'];
        
        $query = " DELETE FROM portal_request WHERE id = '{$del_id}' ";
        $run_query = mysqli_query($connection, $query);
        
        if($run_query == true){
            $msg = "Deleted";
        }else{
            $error_msg = "Delete Failed";
        }
    }
?>
 
<div class="page-title">
      <div>
        <h1><i class="fa fa-envelope-o"></i> Portal Requests</h1>
      </div>
      <div>
        <ul class="breadcrumb">
          <li><i class="fa fa-home fa-lg"></i></li>
          <li><a href="#">Requests for Demo Login Detals</a></li>
        </ul>
      </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <?php
                if(isset($error_msg)){
                    echo"
                        <div class='alert alert-danger alert-dismissible' role='alert'>
                            <b style='font-family: Segoe UI;'>{$error_msg}</b>
                            <button type='button' class='close' data-dismiss='alert' aria-label='Close'>
                            <span aria-hidden='true'>&times;</span>
                            <span class='sr-only'>Close</span>
                            </button>
                        </div>
                    ";
                }

                if(isset($msg)){
                    echo"
                        <div class='alert alert-success alert-dismissible' role='alert'>
                            <b style='font-family: Segoe UI;'>{$msg}</b>
                            <button type='button' class='close' data-dismiss='alert' aria-label='Close'>
                            <span aria-hidden='true'>&times;</span>
                            <span class='sr-only'>Close</span>
                            </button>
                        </div>
                    ";
                }
            ?>
            <div class="card">
                <div class="row">
                    <?php
                        $query = " SELECT * FROM portal_request ";
                        $run_query = mysqli_query($connection, $query);

                        if(mysqli_num_rows($run_query) > 0){
                            while($result = mysqli_fetch_assoc($run_query)){
                                $request_id = $result['id'];
                                $name = $result['name'];
                                $school_name = $result['school_name'];
                                $position_held = $result['position_held'];
                                $email = $result['email'];
                                $phone = $result['phone'];
                                $msg = $result['message'];
                                $request_date = $result['request_date'];

                                echo "
                                    <div class='col-md-3'>
                                        <div class='panel panel-primary'>
                                            <div class='panel-heading'>
                                                <h5>{$school_name}</h5>
                                            </div>
                                            <div class='panel-body'>
                                                <h5>Name: {$name}</h5>
                                                <p>Position: {$position_held}</p>
                                                <p>{$email}</p>
                                                <p>{$phone}</p>
                                                <p>{$msg}</p>
                                            </div>
                                            <div class='panel-footer'>
                                                <form method='POST' action=''>
                                                    <input name='del_request_hidden_id' type='hidden' value='{$request_id}' />
                                                    <input name='del_request_btn' type='submit' class='btn btn-danger btn-xs' value='Delete' />
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                ";
                            }
                        }else{
                            echo "<p class='text-danger'><b>No Request Yet</b><p>";
                        }
                    ?>
                </div>
            </div>
        </div>
    </div>