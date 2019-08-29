<?php
    if(isset($_POST['delete_conduct_btn'])){
        $class = $_POST['class'];
        $term = $_POST['term'];
        $session = $_POST['session'];
        
        $query = " SELECT * FROM `behavioral` WHERE class = '{$class}' AND term = '{$term}' AND session = '{$session}' ";
        $run_query = mysqli_query($connection, $query);
        
        if(mysqli_num_rows($run_query) > 0){
            $query = " DELETE FROM `behavioral` WHERE `class` = '{$class}' AND `term` = '{$term}' AND `session` = '{$session}' ";
            $run_query = mysqli_query($connection, $query);

            if($run_query == true){
                $msg = "<p class='text-success'><b>Behavioral Records Deleted Successfully</b></p>";
            }else{
                $msg = "<p class='text-danger'><b>Behavioral Records failed to delete</b></p>";
            }
        }else{
            $msg = "<p class='text-danger'><b>No Records found to delete</b></p>";
        }
    }
?>

<div class='page-title'>
  <div>
    <h1><i class='fa fa-laptop'></i> Behavioral Analysis</h1>
    <p>View Uploaded Behavioral</p>
  </div>
  <div>
    <ul class='breadcrumb'>
      <li><a href='modules.php'><i class='fa fa-home fa-lg'></i></a></li>
      <li><a href='#'>Students Behavioral Analysis</a></li>
      <li><a href='#'>Export Excel Behavioral Sheet</a></li>
    </ul>
  </div>
</div>

<div class='card'>
   <?php
        if(isset($msg)){
            echo $msg;
        }
    ?>
    <div class='panel panel-primary'>
        <div class='panel-heading'>
            <h4 class='text-center'>View Uploaded Behavioral Analysis</h4>
        </div>
        <div class='panel-body'>
            <form method='POST' action=''>
                <div class='row'>
                    <div class='col-md-3'>
                        <div class='input-group'>
                            <span class='input-group-addon' id='basic-addon2'>Class:</span>
                            <select class='form-control' name='class'>
                                <option selected ><?php echo $select; ?></option>
                                    <?php
                                        $query = " SELECT * FROM `classes` ";
                                        $run_query = mysqli_query($connection, $query);
                                        if(mysqli_num_rows($run_query) > 0){
                                            while($result = mysqli_fetch_assoc($run_query)){
                                                $attendance = $result['classes'];
                                                echo"
                                                    <option>{$attendance}</option>
                                                ";
                                            }
                                        }
                                    ?>
                            </select>
                        </div>
                        <br />
                    </div>

                    <div class='col-md-3'>
                        <div class='input-group'>
                            <span class='input-group-addon' id='basic-addon2'>Term:</span>
                            <select class='form-control' name='term'>
                                <option selected ><?php echo $select; ?></option>
                                <?php
                                    $term_array = array("First Term", "Second Term", "Third Term");

                                    foreach($term_array as $term){
                                        echo "<option>{$term}</option><br>";
                                    }
                                ?>
                            </select>
                        </div>
                        <br />
                    </div>

                    <div class='col-md-3'>
                        <div class='input-group'>
                            <span class='input-group-addon' id='basic-addon2'>Session:</span>
                            <select class='form-control' name='session'>
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
                        <br />
                    </div>
                    
                    <div class='col-md-3'>
                        <input type='submit' name='view_conduct_btn' value='VIEW' class='btn btn-primary' />
                        <input type='submit' name='delete_conduct_btn' value='DELETE' class='btn btn-danger' />
                    </div>
                </div>
            </form>
            <br />
        </div>
    </div>
    <?php
        //////////////////// POST ACTION TO GET ALL STUDENTS NAMES AND REGISTRATION NUMBER FROM A PARTICULAR CLASS //////////////////////
        if(isset($_POST['view_conduct_btn'])){
            $class = inject_checker($connection, $_POST['class']);
            $term = inject_checker($connection, $_POST['term']);
            $session = inject_checker($connection, $_POST['session']);

            if($class == $select || $term === $select || $session === $select){
                $msg = "<h4 class='text-danger'><b>!!! Please select all fields</b></h4>";
                echo $msg;
            }
            else{
                $query = " SELECT * FROM `behavioral` WHERE `class` = '{$class}' AND `term` = '{$term}' AND `session` = '{$session}' ORDER BY `name` ASC ";
                $run_query = mysqli_query($connection, $query);
                if($run_query == true){
                    if(mysqli_num_rows($run_query) > 0){
                        $i = 0;
                        echo"
                            <div class='table-responsive'>
                                <table class='table table-hover table-bordered'>
                                    <thead>
                                        <tr>
                                            <th>S/N</th>
                                            <th>REG NO</th>
                                            <th>NAME</th>
                                            <th>CLASS</th>
                                            <th>TERM</th>
                                            <th>SESSION</th>
                                            <th>Hand Writing</th>
                                            <th>Musical Skills</th>
                                            <th>Sports</th>
                                            <th>Attentiveness</th>
                                            <th>Attitude to work</th>
                                            <th>Health</th>
                                            <th>Politeness</th>
                                        </tr>
                                    </thead>
                                ";
                        while($result = mysqli_fetch_array($run_query)){
                            $i++;
                            $id = $result['id'];
                            $name = $result['name'];
                            $b_class = $result['class'];
                            $b_term = $result['term'];
                            $b_session = $result['session'];
                            $reg_number = $result['reg_number'];
                            $h_writing = $result['hand_writting'];
                            $m_skills = $result['musical_skills'];
                            $sports = $result['sports'];
                            $attentiveness = $result['attentiveness'];
                            $attitude_to_work = $result['attitude_to_work'];
                            $health = $result['health'];
                            $politeness = $result['politeness'];
                            echo"
                                <tr>
                                    <td>{$i}</td>
                                    <td>{$reg_number}</td>
                                    <td>{$name}</td>
                                    <td>{$b_class}</td>
                                    <td>{$b_term}</td>
                                    <td>{$b_session}</td>
                                    <td>{$h_writing}</td>
                                    <td>{$m_skills}</td>
                                    <td>{$sports}</td>
                                    <td>{$attentiveness}</td>
                                    <td>{$attitude_to_work}</td>
                                    <td>{$health}</td>
                                    <td>{$politeness}</td>
                                </tr>
                            ";
                        }
                        echo"</table>
                        </div>";
                    }else{
                        $msg = "<h4 class='text-danger'><b>!!! No Records Found</b></h4>";
                        echo $msg;
                    }
                }
            }
        }
    ?>
</div>