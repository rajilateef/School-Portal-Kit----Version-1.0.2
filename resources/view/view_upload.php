
<div class='page-title'>
  <div>
    <h1><i class='fa fa-laptop'></i> Result Management</h1>
    <p>View Uploaded Results</p>
  </div>
  <div>
    <ul class='breadcrumb'>
      <li><a href='modules.php'><i class='fa fa-home fa-lg'></i></a></li>
      <li><a href='#'>Result Managemant</a></li>
      <li><a href='#'>View Uploaded Results </a></li>
    </ul>
  </div>
</div>

<div class="card">
    <?php
        if(isset($msg)){
            echo $msg;
        }
    ?>
    <div class = 'row'>
        <div class = 'col-xs-12 col-sm-12 col-md-12'>
            <div class = 'panel panel-primary ch'>
                <div class = 'panel-heading'>
                    <h4 class='text-center'>View Uploaded Results</h4>
                </div><br/>
                <div class = 'panel-body'>
                    <form class='noprint' method='POST' action='' id='view_result'>
                        <div class='row'>
                            <div class='col-md-2'>
                                <div class='input-group'>
                                    <span class='input-group-addon' id='basic-addon2'>Class:</span>
                                    <select class='form-control' name='view_upload_class'>
                                        <option selected ><?php echo $select ?></option>
                                        <?php
                                            $query = " SELECT * FROM `classes` ";
                                            $run_query = mysqli_query($connection, $query);
                                            if(mysqli_num_rows($run_query) > 0){
                                                while($result = mysqli_fetch_assoc($run_query)){
                                                    $classes = $result['classes'];
                                                    echo"
                                                        <option>{$classes}</option>
                                                    ";
                                                }
                                            }
                                        ?>
                                    </select>
                                </div>
                            </div>

                            <div class='col-md-3'>
                                <div class='input-group'>
                                    <span class='input-group-addon' id='basic-addon2'>Subject:</span>
                                    <select class='form-control' name='view_upload_subject'>
                                        <option selected ><?php echo $select ?></option>
                                        <?php
                                            $query = " SELECT * FROM `school_subjects` ";
                                            $run_query = mysqli_query($connection, $query);

                                            if(mysqli_num_rows($run_query) > 0){
                                                while($result = mysqli_fetch_assoc($run_query)){
                                                    $subjects = $result['subjects'];
                                                    echo "
                                                        <option>{$subjects}</option>
                                                    ";
                                                }
                                            }
                                        ?>
                                    </select>
                                </div>
                            </div>

                            <div class='col-md-2'>
                                <div class='input-group'>
                                    <span class='input-group-addon' id='basic-addon2'>Term:</span>
                                    <select class='form-control' name='view_upload_term'>
                                        <option selected ><?php echo $select ?></option>
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
                                    <select class='form-control' name='view_upload_session'>
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

                            <div>
                                <input type='submit' name='view_upload_btn' value='VIEW' class='btn btn-sm btn-primary' />
                                <input type='submit' name='del_upload_btn' value='DELETE' class='btn btn-sm btn-danger' />
                            </div>
                        </div>
                    </form>
                    <br />
                    
                    <?php
                        ////////////// POST ACTION TO VIEW UPLOADED RESULTS /////
                        if(isset($_POST['view_upload_btn'])){
                            $view_upload_class = $_POST['view_upload_class'];
                            $view_upload_subject = $_POST['view_upload_subject'];
                            $view_upload_term = $_POST['view_upload_term'];
                            $view_upload_session = $_POST['view_upload_session'];

                            if($view_upload_class == $select){
                                echo "<p class='text-danger'><b>Please Select Class</b></p>";
                            }
                            elseif($view_upload_subject == $select){
                                echo "<p class='text-danger'><b>Please Select Term</b></p>";
                            }
                            elseif($view_upload_term == $select){
                                echo "<p class='text-danger'><b>Please Select Session</b></p>";
                            }else{
                                $query = " SELECT * FROM `results1` WHERE `class` = '{$view_upload_class}' AND `term` = '{$view_upload_term}' AND `session` = '{$view_upload_session}' AND `subjects` = '{$view_upload_subject}' ORDER BY `name` ASC ";
                                $run_query = mysqli_query($connection, $query);

                                if(mysqli_num_rows($run_query) > 0){
                                    $i = 0;
                                    echo"
                                        <div class='table-responsive'>
                                            <table class='table table-striped table-hover'>
                                                <thead>
                                                    <tr>
                                                        <th>S/N</th>
                                                        <th>Reg No</th>
                                                        <th>Name</th>
                                                        <th>Class</th>
                                                        <th>Subject</th>
                                                        <th>Term</th>
                                                        <th>Session</th>
                                                        <th>1ST CA</th>
                                                        <th>2ND CA</th>
                                                        <th>Exam</th>
                                                        <th>Total</th>
                                                        <th>Rank</th>
                                                    </tr>
                                                </thead>
                                    ";
                                    while($result = mysqli_fetch_assoc($run_query)){
                                        $i++;
                                        $reg_no = $result['reg_number'];
                                        $name = $result['name'];
                                        $class = $result['class'];
                                        $subjects = $result['subjects'];
                                        $term = $result['term'];
                                        $session = $result['session'];
                                        $ca = $result['ca'];
                                        $project = $result['project'];
                                        $exam = $result['exam'];
                                        $total = $result['subject_total'];
                                        $rank = $result['subject_rank'];

                                        echo"
                                            <tbody>
                                                <tr>
                                                    <td>{$i}</td>
                                                    <td class='warning'>{$reg_no}</td>
                                                    <td>{$name}</td>
                                                    <td>{$class}</td>
                                                    <td>{$subjects}</td>
                                                    <td>{$term}</td>
                                                    <td>{$session}</td>
                                                    <td class='info'>{$ca}</td>
                                                    <td class='danger'>{$project}</td>
                                                    <td class='success'>{$exam}</td>
                                                    <td class='success'>{$total}</td>
                                                    <td class='bg-primary'>{$rank}</td>
                                                </tr>
                                            </tbody>
                                        ";
                                    }
                                    echo"
                                        </table>
                                    </div>
                                    ";
                                }else{
                                    echo "<p class='text-danger'><b> Results Not Uploaded</b></p>";
                                }
                            }
                        }
                    ?>

                    <?php
                        ///POST ACTION TO DELETE UPLOADED RESULTS ///
                        if(isset($_POST['del_upload_btn'])){
                            $view_upload_class = $_POST['view_upload_class'];
                            $view_upload_subject = $_POST['view_upload_subject'];
                            $view_upload_term = $_POST['view_upload_term'];
                            $view_upload_session = $_POST['view_upload_session'];

                            if($view_upload_class == $select){
                                echo "<p class='text-danger'><b>Please Select Class</b></p>";
                            }
                            elseif($view_upload_subject == $select){
                                echo "<p class='text-danger'><b>Please Select Term</b></p>";
                            }
                            elseif($view_upload_term == $select){
                                echo "<p class='text-danger'><b>Please Select Session</b></p>";
                            }else{
                                $query = " DELETE FROM `results1` WHERE `class` = '{$view_upload_class}' AND `term` = '{$view_upload_term}' AND `session` = '{$view_upload_session}' AND `subjects` = '{$view_upload_subject}' ";
                                $run_query = mysqli_query($connection, $query);

                                if($run_query == true){
                                    echo "<p class='text-success'><b><span class='glyphicon glyphicon-ok'></span> Uploaded Results Deleted Successfully</b></p>";
                                }else{
                                    echo "<p class='text-danger'><b>Uploaded Results Unable to Delete</b></p>";
                                }
                            }
                        }
                    ?>
                </div>
            </div>
        </div>
    </div>
</div>