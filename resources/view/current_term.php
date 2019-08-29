<?php
    ///////////////// POST ACTION TO SPECIFY CURRENT TERM ////////////////
    if(isset($_POST['current_term_btn'])){
        $current_term = inject_checker($connection, $_POST['current_term']);

        if($current_term == "Select Current Term"){
            $msg = "<p class='text-danger'><b> Error: Please Select a Term to Change Current Term</b></p>";
        }else{
            $query = " UPDATE `current_season` SET 	`current_term` = '$current_term' ";
            $run_query = mysqli_query($connection, $query);

            if($run_query == true){
                $msg = " <p class='text-success'><b>Current Term Successfully Updated</b></p>";	
            }else{
                $msg = "<p class='text-danger'><b>Current Term Update Failed</b></p>";
            }
        }
    }
?>
<?php
    ///// POST ACTION TO DISPLAY CURRRENT TERM /////////////
    $query = " SELECT * FROM `current_season` ";
    $run_query = mysqli_query($connection, $query);
    if(mysqli_num_rows($run_query) == 1){
        while($result = mysqli_fetch_assoc($run_query)){
            $show_current_term = $result['current_term'];
        }
    }
?>
 

 <div class='page-title'>
  <div>
    <h1><i class='fa fa-laptop'></i> Administrative Manager</h1>
    <p>Save Current Term</p>
  </div>
  <div>
    <ul class='breadcrumb'>
      <li><i class='fa fa-home fa-lg'></i></li>
      <li><a href='#'>Administrative Manager</a></li>
      <li><a href='#'>Save Current Term </a></li>
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
                <h4 class='text-center'>Your Current Term = <?php echo $show_current_term; ?></h4>
            </div>
            <div class = 'panel-body'>
                <div class='row'>
                    <div class='col-xs-12 col-sm-12 col-md-12'>
                        <table class='table table-striped'>
                            <tr>
                                <td>Change Current Term</td>
                                <td>
                                    <select name='current_term' class='form-control' >
                                        <option selected>Select Current Term</option>
                                        <option>First Term</option>
                                        <option>Second Term</option>
                                        <option>Third Term</option>
                                    </select>			
                                </td>
                            </tr>
                        </table>
                            <div class='col-xs-12 col-sm-12 col-md-6'>
                            </div>
                            <div class='col-xs-12 col-sm-12 col-md-6'>
                                <button name='current_term_btn' class='btn btn-primary' style='border-radius:10px;' type='submit'>Save</button>
                            </div>
                            <br><br>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>