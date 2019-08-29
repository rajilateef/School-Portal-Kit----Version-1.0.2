<div class="page-title hidden-print">
  <div>
    <h1><i class="fa fa-calculator"></i> Result Manager</h1>
  </div>
</div>
 <div class="card">
    <div class = 'row'>
        <div class = 'col-xs-12 col-sm-12 col-md-12 shift'>
            <div class = 'panel panel-primary ch'>
                <div class = 'panel-heading'>
                    <h4 class='text-center'>View Class Uploaded Result</h4>
                </div><br/>
                <div class = 'panel-body'>
                    <form class='noprint' method='POST' action='' id='view_result'>
                        <div class='row'>
                            <div class='col-md-3'>
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
                            </div>
                        </div>
                    </form>
                    <br />
                </div>
            </div>
        </div>
    </div>
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
                            <table class='table table-striped'>
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
    
    <div class='panel panel-primary'>
        <div class='panel-heading'>
            <h4 class='text-center'>View Published Student Results</h4>
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
                    <div class='col-md-2'>
                        <input type='submit' name='view_publish_result_btn' value='VIEW PUBLISHED' class='btn btn-primary' />
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
            ?>

            <br />
        </div>
    </div>
</div>
