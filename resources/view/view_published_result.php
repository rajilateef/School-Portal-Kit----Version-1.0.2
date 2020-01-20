<?php
    if(isset($_POST['report_sheet_btn'])){
        $std_reg_number = $_POST['std_reg_number'];
        $std_class = $_POST['std_class'];
        $std_term = $_POST['std_term'];
        $std_session = $_POST['std_session'];

        $query = " SELECT * FROM `results1` WHERE `reg_number` = '{$std_reg_number}' AND `class` = '{$std_class}' AND `term` = '{$std_term}' AND `session` = '{$std_session}' ";
        $run_query = mysqli_query($connection, $query);

        if($run_query == true){
            if(mysqli_num_rows($run_query) > 0){
                session_start();
                while($result = mysqli_fetch_assoc($run_query)){
                    $result_id = $result['id'];
                    $_SESSION['result'] = $result_id;
                    header("Location: admin_result_page.php");
                }
            }else{
                $msg = "<p class='text-danger'><b>No Result Records Found !!!</b></p>";
            }
        }else{
            $msg = "<p class='text-danger'><b>Result Checking Failed !!!</b></p>";
        }
    }
?>

<div class='page-title'>
  <div>
    <h1><i class='fa fa-laptop'></i> Result Management</h1>
    <p>View Published Result</p>
  </div>
  <div>
    <ul class='breadcrumb'>
      <li><a href='modules.php'><i class='fa fa-home fa-lg'></i></a></li>
      <li><a href='#'>Result Managemant</a></li>
      <li><a href='#'>View Published Result </a></li>
    </ul>
  </div>
</div>

<div class='card'>
    <div class='panel panel-primary'>
        <div class='panel-heading'>
            <h4 class='text-center'>View Published Results</h4>
        </div>
        <div class='panel-body'>
            <form method='POST' action=''>
                <div class='row'>
                    <div class='col-md-3'>
                        <div class='input-group'>
                            <span class='input-group-addon' id='basic-addon2'>Student Class:</span>
                            <select class='form-control' name='show_publish_result_class'>
                                <option selected ><?php echo $select; ?></option>
                                <?php
                                    $query = " SELECT * FROM `classes` ";
                                    $run_query = mysqli_query($connection, $query);
                                    if(mysqli_num_rows($run_query) > 0){
                                        while($result = mysqli_fetch_assoc($run_query)){
                                            $publish_result_classes = $result['classes'];
                                            echo"
                                                <option>{$publish_result_classes}</option>
                                            ";
                                        }
                                    }
                                ?>
                            </select>
                        </div>
                    </div>

                    <div class='col-md-3'>
                        <div class='input-group'>
                            <span class='input-group-addon' id='basic-addon2'>Term:</span>
                            <select class='form-control' name='show_publish_result_term'>
                                <option selected ><?php echo $select; ?></option>
                                <?php
                                    $term_array = array("First Term", "Second Term", "Third Term");
                                    foreach($term_array as $term){
                                        echo "<option>{$term}</option><br>";
                                    }
                                ?>
                            </select>
                        </div>
                    </div>

                    <div class='col-md-3'>
                        <div class='input-group'>
                            <span class='input-group-addon' id='basic-addon2'>Session:</span>
                            <select class='form-control' name='show_publish_result_session'>
                                    <?php
                                        ///////////// POST ACTION TO DISPLAY CURRENT SESSION //////////////
                                        $query = " SELECT * FROM `current_season` ";
                                        $run_query = mysqli_query($connection, $query);
                                        if(mysqli_num_rows($run_query) == 1){
                                            while($result = mysqli_fetch_assoc($run_query)){
                                                $show_current_session = $result['current_session'];
                                                echo"
                                                    <option>{$show_current_session}</option>
                                                ";
                                            }
                                        }
                                    ?>
                            </select>
                        </div>
                    </div>
                    <div class='col-md-3'>
                        <input type='submit' name='view_publish_result_btn' value='VIEW PUBLISHED' class='btn btn-primary btn-sm' />
                        <input type='submit' name='delete_published_result_btn' value='DELETE' class='btn btn-danger btn-sm' />
                    </div>
                </div>
            </form>
            <br />

            <?php
                ///////////////// POST ACTION TO VIEW PUBLISHED RESULT ////////////
                if(isset($_POST['view_publish_result_btn'])){
                    $show_publish_result_class = $_POST['show_publish_result_class'];
                    $show_publish_result_term = $_POST['show_publish_result_term'];
                    $show_publish_result_session = $_POST['show_publish_result_session'];

                    if($show_publish_result_class == $select){
                        echo "<p class='text-danger'><b>Please Select Class</b></p>";
                    }
                    elseif($show_publish_result_term == $select){
                        echo "<p class='text-danger'><b>Please Select Term</b></p>";
                    }
                    elseif($show_publish_result_session == $select){
                        echo "<p class='text-danger'><b>Please Select Session</b></p>";
                    }else{
                        $query_show = " SELECT * FROM `positions` WHERE `class` = '{$show_publish_result_class}' AND `term` = '{$show_publish_result_term}' AND `session` = '{$show_publish_result_session}' ORDER BY `name` ASC ";
                        $run_query_show = mysqli_query($connection, $query_show);

                        if(mysqli_num_rows($run_query_show) > 0){
                            $i = 0;
                            echo"
                                <div class='table-responsive'>
                                    <table class='table table-striped'>
                                        <thead>
                                            <tr>
                                                <th>S/N</th>
                                                <th>NAME</th>
                                                <th>REG NO.</th>
                                                <th>CLASS</th>
                                                <th>TERM</th>
                                                <th>SESSION</th>
                                                <th>TOTAL</th>
                                                <th>AVERAGE</th>
                                                <th>POSITION IN CLASS</th>
                                                <th>ACTION</th>
                                            </tr>
                                        </thead>
                            ";
                            while($result = mysqli_fetch_assoc($run_query_show)){
                                $i++;
                                $name = $result['name'];
                                $reg_number = $result['reg_number'];
                                $class = $result['class'];
                                $term = $result['term'];
                                $session = $result['session'];
                                $student_total = $result['students_sub_total'];
                                $student_average = $result['students_sub_average'];
                                $student_position = $result['class_position'];
                                echo"
                                    <tbody>
                                        <tr>
                                            <td>{$i}</td>
                                            <td>{$name}</td>
                                            <td class='warning'>{$reg_number}</td>
                                            <td>{$class}</td>
                                            <td>{$term}</td>
                                            <td>{$session}</td>
                                            <td class='success'>{$student_total}</td>
                                            <td class='danger'>{$student_average}</td>
                                            <td class='info'>{$student_position}</td>
                                            <td>
                                                <form action='' method='POST'>
                                                    <input type='hidden' name='std_reg_number' value='{$reg_number}' />
                                                    <input type='hidden' name='std_class' value='{$class}' />
                                                    <input type='hidden' name='std_term' value='{$term}' />
                                                    <input type='hidden' name='std_session' value='{$session}' />
                                                    <input type='submit' name='report_sheet_btn' value='Report Sheet' class='btn btn-info btn-sm' />
                                                </form>
                                            </td>

                                        </tr>
                                    </tbody>
                                ";
                            }
                        }else{
                            echo "<p class='text-danger'><b>This Particular Result is yet to be published</b></p>";
                        }
                        echo"
                            </table>
                        </div>
                        ";
                    }										
                }

                ///////////////// POST ACTION TO DELETE PUBLISHED RESULT ////////////////////
                if(isset($_POST['delete_published_result_btn'])){
                    $show_publish_result_class = $_POST['show_publish_result_class'];
                    $show_publish_result_term = $_POST['show_publish_result_term'];
                    $show_publish_result_session = $_POST['show_publish_result_session'];

                    if($show_publish_result_class == $select){
                        echo "<p class='text-danger'><b>Please Select Class</b></p>";
                    }
                    elseif($show_publish_result_term == $select){
                        echo "<p class='text-danger'><b>Please Select Term</b></p>";
                    }
                    elseif($show_publish_result_session == $select){
                        echo "<p class='text-danger'><b>Please Select Session</b></p>";
                    }else{
                        $query = " DELETE FROM `positions` WHERE `class` = '{$show_publish_result_class}' AND `term` = '{$show_publish_result_term}' AND `session` = '{$show_publish_result_session}' ";
                        $run_query = mysqli_query($connection, $query);

                        if($run_query == true){
                            echo "<p class='text-success'><b>Published Result Deleted Successfully</b></p>";
                        }else{
                            echo "<p class='text-danger'><b>Published Result Failed to Delete</b></p>";
                        }
                    }
                }
            ?>

            <br />
        </div>
    </div>
</div>