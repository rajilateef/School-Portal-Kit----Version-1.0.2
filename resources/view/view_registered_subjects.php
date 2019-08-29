<?php
    error_reporting(0);
    if(isset($_POST['del_students_reg_subjects'])){
        for($j = 0; $j < (int)$_POST["total_num"]; $j++){
            $reg_subject_id = $_POST['sub_reg_id'][$j];
            
            $query = " DELETE FROM subjects WHERE id = '{$reg_subject_id}' ";

            $run_query = mysqli_query($connection, $query);
        }

        if($run_query){
            $msg = "<p class='text-success'><b><span class='glyphicon glyphicon-ok'></span> Registered Subject Deleted</b></p>";
        }else{
            $msg = "<p class='text-danger'><b><span class='glyphicon glyphicon-remove'></span>Something went wrong</b></p>";
        }
    }
?>
<div class='page-title'>
  <div>
    <h1><i class='fa fa-laptop'></i> Subject Management</h1>
    <p>View Registered Student Subject</p>
  </div>
  <div>
    <ul class='breadcrumb'>
      <li><a href='modules.php'><i class='fa fa-home fa-lg'></i></a></li>
      <li><a href='#'>Subject Management</a></li>
      <li><a href='#'>View Registered Student Subject</a></li>
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
            <h4 class='text-center'>View Student Registered Subjects</h4>
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
                            <span class='input-group-addon' id='basic-addon2'>Subject:</span>
                            <select class='form-control' name='subject'>
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
                        <input type='submit' name='view_registered_subject' value='VIEW REGISTERED SUBJECT' class='btn btn-primary' />
                    </div>
                </div>
            </form>
            <br />
        </div>
    </div>
    <?php
        if(isset($_POST['view_registered_subject'])){
            $class = $_POST['class'];
            $subject = $_POST['subject'];
            $term = $_POST['term'];
            $session = $_POST['session'];
            
            if($class == $select || $term == $select){
                $msg = "<p class='text-danger'><b>No field should be empty</b></p>";
            }else{
                $query = " SELECT * FROM subjects WHERE class = '{$class}' AND subjects = '{$subject}' AND term = '{$term}' AND session = '{$session}' ORDER BY name ASC ";
                $run_query = mysqli_query($connection, $query);
                
                if(mysqli_num_rows($run_query) > 0){
                    $i = 0;
                    $num = 0;
                    echo "
                        <form method='POST' action=''>
                        <div class='table-responsive'>
                            <table class='table table-bordered table-hover'>
                                <thead>
                                    <tr>
                                        <th>S/N</th>
                                        <th>REG NO</th>
                                        <th>NAME</th>
                                        <th>CLASS</th>
                                        <th>SUBJECT</th>
                                        <th>TERM</th>
                                        <th>SESSION</th>
                                        <th>SELECT ALL <input type='checkbox' class='form-control' id='selectall' /></th>
                                    </tr>
                                </thead>
                    ";
                    while($result = mysqli_fetch_assoc($run_query)){
                        $i++;
                        echo "
                            <tbody>
                                <tr>
                                    <td>{$i}</td>
                                    <td>{$result['reg_number']}</td>
                                    <td>{$result['name']}</td>
                                    <td>{$result['class']}</td>
                                    <td>{$result['subjects']}</td>
                                    <td>{$result['term']}</td>
                                    <td>{$result['session']}</td>
                                    <td>
                                        <input type='hidden' name='subject_reg_hidden_id[]' value='{$result['id']}' />
                                        <input type='checkbox' class='form-control subgroup' name='sub_reg_id[]' value='{$result['id']}' />
                                    </td>
                                </tr>
                            </tbody>
                        ";
                        $num++;
                    }
                    echo "
                            </table>
                            
                            <input type='hidden' name='total_num' value='{$num}' />
                            <button type = 'submit' name='del_students_reg_subjects' class='btn btn-danger btn-md pull-right' style='margin-left:20px;'><span class= 'glyphicon glyphicon-user'></span>Delete Selected</button><br/>
                            
                        </div>
                        </form>
                    ";
                }else{
                    echo "<p class='text-danger'>No registered subjects</p>";
                }
            }
        }
    ?>
</div>
<script>
    function Check(frm, ischecked) {
      var checkBoxes = frm.elements['sub_reg_id[]'];

      for (i = 0; i < checkBoxes.length; i++) {
        checkBoxes[i].checked = ischecked; // and just update for all here
      }

    }

    window.onload = function() {
      document.getElementById("selectall").onchange = function() { // <--missing { here
        Check(document.selectform, this.checked); // <----pass the state here
      };
    };
</script>