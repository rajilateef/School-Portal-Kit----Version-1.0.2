<?php
    ///////////// POST ACTION TO SPECIFY CURRENT SESSION/////////
    if(isset($_POST['current_session_btn'])){
        $current_session = inject_checker($connection, $_POST['current_session']);

        if($current_session === "Select Current Session"){
            $msg = "<p class='text-danger'><b> Error: Please Select a Session to Change Current Session</b></p>";
        }else{
            $query = " UPDATE `current_season` SET `current_session` = '{$current_session}' ";
            $run_query = mysqli_query($connection, $query);
            if($run_query == true){
                $msg = " <p class='text-success'><b>Current Session Successfully Updated</b></p>";	
            }else{
                $msg = "<p class='text-danger'><b>Current Session Update Failed</b></p>";
            }
        }
    }
?>
<?php
    ///////////// POST ACTION TO DISPLAY CURRENT SESSION //////////////
    $query = " SELECT * FROM `current_season` ";
    $run_query = mysqli_query($connection, $query);
    if(mysqli_num_rows($run_query) == 1){
        while($result = mysqli_fetch_assoc($run_query)){
            $show_current_session = $result['current_session'];
        }
    }
?>
 

 <div class='page-title'>
  <div>
    <h1><i class='fa fa-laptop'></i> Administrative Manager</h1>
    <p>Save Current Session</p>
  </div>
  <div>
    <ul class='breadcrumb'>
      <li><i class='fa fa-home fa-lg'></i></li>
      <li><a href='#'>Administrative Manager</a></li>
      <li><a href='#'>Save Current Session </a></li>
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
                <h4 class='text-center'>Current Session = <?php echo $show_current_session; ?></h4>
            </div>
            <div class = 'panel-body'>
                <div class='row'>
                    <div class='col-xs-12 col-sm-12 col-md-12'>
                        <table class='table table-striped'>
                            <tr>
                                <td>Change Current Session</td>
                                <td>
                                    <select name='current_session' class='form-control' >
                                        <option selected>Select Current Session</option>
                                        <?php
                                            $query = " SELECT * FROM `sessions` ";
                                            $run_query = mysqli_query($connection, $query);
                                            if(mysqli_num_rows($run_query) > 0){
                                                while($result = mysqli_fetch_assoc($run_query)){
                                                    $all_sessions = $result['sessions'];
                                                    echo "<option>{$all_sessions}</option>";
                                                }
                                            }
                                        ?>
                                    </select>			
                                </td>
                            </tr>
                        </table>
                            <div class='col-xs-12 col-sm-12 col-md-6'>
                            </div>
                            <div class='col-xs-12 col-sm-12 col-md-6'>
                                <button name='current_session_btn' class='btn btn-primary' style='border-radius:10px;' type='submit'>Save</button>
                            </div>
                            <br><br>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>