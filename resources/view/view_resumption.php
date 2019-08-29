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
    
        <div class = 'panel panel-primary ch'>
            <div class = 'panel-heading'>					
                <h4 class='text-center'>View End of term and Resmption Dates</h4>
            </div>
            <div class = 'panel-body'>
                <div class='row'>
                    <div class='col-xs-12 col-sm-12 col-md-12'>
                        <?php
                            $query = " SELECT * FROM `dates` ";
                            $run_query = mysqli_query($connection, $query);
                        
                            if(mysqli_num_rows($run_query) > 0){
                                echo "
                                    <div class='table-responsive'>
                                        <table class='table table-striped'>
                                            <thead>
                                                <tr>
                                                    <th>Term Ends</th>
                                                    <th>Next Term Begins</th>
                                                </tr>
                                            </thead>
                                ";
                                while($result = mysqli_fetch_assoc($run_query)){
                                    $end_of_term = $result['end_of_term'];
                                    $resumption = $result['next_term_begins'];
                                    
                                    echo "
                                        <tbody>
                                            <tr>
                                                <td>{$end_of_term}</td>
                                                <td>{$resumption}</td>
                                            </tr>
                                        </tbody>
                                    ";
                                }
                                
                                echo "
                                        </table>
                                    </div>
                                ";
                            }
                        ?>
                    </div>
                </div>
            </div>
        </div>
</div>