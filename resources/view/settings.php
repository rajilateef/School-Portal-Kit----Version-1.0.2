<?php
    $query = "SELECT use_scratch_card FROM settings LIMIT 1";
    $run_query = mysqli_query($connection, $query);

    if(mysqli_num_rows($run_query) > 0){
        while($result = mysqli_fetch_assoc($run_query)){
            $status = $result['use_scratch_card'];
        }
    }

    if($status == 1){
        $display_status = "Enabled";
        $btn_text = "Disable";
    }else{
        $display_status = "Disabled";
        $btn_text = "Enable";
    }


    if(isset($_POST['settings_btn'])){
        if($status == 1){
            $query = "UPDATE settings SET use_scratch_card = 0";
            $run_query = mysqli_query($connection, $query);

            if($run_query){
                header("Location: modules.php?settings");
            }
        }else{
            $query = "UPDATE settings SET use_scratch_card = 1";
            $run_query = mysqli_query($connection, $query);

            if($run_query){
                header("Location: modules.php?settings");   
            }
        }
    }
?>
<div class="page-title hidden-print">
  <div>
    <h1><i class="fa fa-cog"></i> Settings</h1>
  </div>
</div>
 <div class="card">
    <div class = 'row'>
        <div class = 'col-xs-12 col-sm-12 col-md-6 shift'>
            <div class = 'panel panel-primary ch'>
                <div class = 'panel-heading'>
                    <h4 class = 'txt'>Scratch Card Result Checking</h4>
                </div><br/>
                <div class = 'panel-body'>
                    <form method = 'POST' action = ''>
                        <div class='row'>
                            <div class = 'col-xs-12 col-sm-12 col-md-4'>
                                Status: <b><?php echo $display_status; ?></b>
                            </div>
                            <div class = 'col-xs-12 col-sm-12 col-md-4'>
                                <button type = 'submit' name='settings_btn' class='btn btn-primary btn-sm'>
                                    <?php echo $btn_text; ?>
                                </button><br/> 
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>