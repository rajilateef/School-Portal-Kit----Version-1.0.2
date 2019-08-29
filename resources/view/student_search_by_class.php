<?php
    if(isset($_POST['print_student_slip'])){
        $print_id = $_POST['student_hidden_id'];
        
        $query = " SELECT * FROM `students` WHERE `id` = '{$print_id}' ";
        $run_query = mysqli_query($connection, $query);
        
        if(mysqli_num_rows($run_query) == 1){
            while($result = mysqli_fetch_assoc($run_query)){
                $student_id = $result['id'];
                $_SESSION['slip_id'] = $student_id;
                
                redirect_to("principal_dashboard.php?slip");
            }
        }
    }
?>
<div class="page-title hidden-print">
  <div>
    <h1><i class="fa fa-search"></i> Search Students by Class</h1>
  </div>
</div>
 <div class="card">
    <div class = 'row'>
        <div class = 'col-xs-12 col-sm-12 col-md-12 shift'>
            <div class = 'panel panel-primary ch'>
                <div class = 'panel-heading'>
                    <h4 class = 'txt'>Search Students</h4>
                </div><br/>
                <div class = 'panel-body'>
                    <form method = 'POST' action = ''>
                        <div class='row'>
                            <div class = 'col-xs-12 col-sm-12 col-md-8'>
                                <div class = 'input-group'>
                                    <span class = 'input-group-addon' id = 'sizing-addon2'>Class</span>
                                    <select type='text' name='class' class="form-control">
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
                                <br/>
                            </div>
                            <div class = 'col-xs-12 col-sm-12 col-md-4'>
                                <button type = 'submit' name = 'search_by_class_btn' class = 'btn btn-primary btn-md' style='margin-left:20px;'><span class = 'glyphicon glyphicon-user'></span>&nbsp; Search</button><br/> 
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <?php
        //////////////////// POST ACTION TO GET A STUDENT NAMES AND REGISTRATION NUMBER FROM A PARTICULAR CLASS //////////////////////
        if(isset($_POST['search_by_class_btn'])){
            $class = $_POST['class'];

            $query = " SELECT * FROM `students` WHERE `class` = '{$class}' ";
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
                                        <th>STUDENT NAME</th>
                                        <th>SEX</th>
                                        <th>CLASS</th>
                                        <th>PHONE</th>
                                        <th>REG NUMBER</th>
                                        <th>PASSWORD</th>
                                        <th>ACTION</th>
                                    </tr>
                                </thead>
                            ";
                    while($result = mysqli_fetch_array($run_query)){
                        $i++;
                        $reg_no_id = $result['id'];
                        $reg_no_firstname = $result['firstname'];
                        $reg_no_lastname = $result['lastname'];
                        $reg_no_othername = $result['othername'];
                        $reg_no_class = $result['class'];
                        $reg_reg_number = $result['reg_number'];
                        $reg_phone = $result['contact_phone'];
                        $reg_password = $result['gen_password'];
                        $reg_sex = ucfirst($result['gender']);

                        $reg_name = ucwords("{$reg_no_firstname} {$reg_no_lastname} {$reg_no_othername}");
                        echo"
                            <tr>
                                <td>{$i}</td>
                                <td>{$reg_name}</td>
                                <td>{$reg_sex}</td>
                                <td>{$reg_no_class}</td>
                                <td>{$reg_phone}</td>
                                <td>{$reg_reg_number}</td>
                                <td>{$reg_password}</td>
                                <td>
                                    <form method='POST' action=''>
                                        <input type='hidden' name='student_hidden_id' value='{$reg_no_id}' />
                                        <input type='submit' name='print_student_slip' class='btn btn-xs btn-info' value='view' />
                                    </form>
                                </td>
                            </tr>
                        ";
                    }
                    echo"</table>
                    </div>";
                }else{
                    $reg_msg = "<h4 class='text-danger'><b>!!! No Records Found in {$reg_no_class}</b></h4>";
                    echo $reg_msg;
                }
            }
        }
     ?>
</div>