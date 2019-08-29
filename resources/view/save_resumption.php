<?php
    if(isset($_POST['result_date_btn'])){
        $term_end_date = inject_checker($connection, $_POST['term_end_date']);
        $next_term_date = inject_checker($connection, $_POST['next_term_date']);

        if(empty($term_end_date)){
            $msg = "<p class='text-danger'><b>Please Type End of Term Date</b></p>";
        }
        elseif(empty($next_term_date)){
            $msg = "<p class='text-danger'><b>Please Type Next Resumption Date</b></p>";
        }else{
            $query = " SELECT * FROM `dates` ";
            $run_query = mysqli_query($connection, $query);

            if(mysqli_num_rows($run_query) == 0){
                $query = " INSERT INTO `dates`(`end_of_term`, `next_term_begins`, `date_declared`) 
                            VALUES('$term_end_date', '$next_term_date', '$date') ";
                $run_query = mysqli_query($connection, $query);

                if($run_query == true){
                    $msg = "<p class='text-success'><b>Session Dates Declared Successfully</b></p>";
                }else{
                    $msg = "<p class='text-danger'><b>Session Dates Declaration Failed</b></p>";
                }
            }
            elseif(mysqli_num_rows($run_query) == 1){
                $query = " UPDATE `dates` SET 
                                `end_of_term` = '{$term_end_date}', 
                                `next_term_begins` = '{$next_term_date}', 
                                `date_declared` = '{$date}' ";
                $run_query = mysqli_query($connection, $query);

                if($run_query == true){
                    $msg = "<p class='text-success'><b>Session Dates Updated Successfully</b></p>";
                }else{
                    $msg = "<p class='text-danger'><b>Session Dates Update Failed</b></p>";
                }
            }
        }
    }
?>

 <div class='page-title'>
  <div>
    <h1><i class='fa fa-laptop'></i> Result Management</h1>
    <p>Save Resumption Date</p>
  </div>
  <div>
    <ul class='breadcrumb'>
      <li><a href='modules.php'><i class='fa fa-home fa-lg'></i></a></li>
      <li><a href='#'>Result Managemant</a></li>
      <li><a href='#'>Save Resumption Date </a></li>
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
                <h4 class='text-center'>Save end of term and resumption date</h4>
            </div>
            <div class = 'panel-body'>
                <div class='row'>
                    <div class='col-xs-12 col-sm-12 col-md-5'>
                        <table class='table table-striped'>
                            <tr>
                                <td>Term Ends</td>
                                <td>
                                    <input name='term_end_date' type='text' placeholder='Type End of Term Date e.g 21/02/2015' class='form-control' value = '' required>
                                </td>
                            </tr>
                        </table>
                    </div>
                    
                    <div class='col-xs-12 col-sm-12 col-md-5'>
                        <table class='table table-striped'>
                            <tr>
                                <td>Resumption Date</td>
                                <td>
                                    <input name='next_term_date' class='form-control' placeholder='Type Resumption Date e.g 15/05/2015' type='text' class='form-control' value = '' required>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class='col-md-2'>
                        <button name='result_date_btn' class='btn btn-primary btn-lg' style='border-radius:10px;' type='submit'>SAVE</button>
                        <br><br>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>