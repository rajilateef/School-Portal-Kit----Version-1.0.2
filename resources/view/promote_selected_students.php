<?php
    error_reporting(0);
    if(isset($_POST['promote_btn'])){
        for($j = 0; $j < (int)$_POST["total_num"]; $j++){
            $student_id = $_POST['student_id'][$j];
            $promote_to = $_POST['promote_to'];
            $student_initial_class = $_POST['student_initial_class'];
            
            $update_query = " UPDATE `students` SET class = '{$promote_to}' WHERE id = '{$student_id}' ";

            $run_update_query = mysqli_query($connection, $update_query);
        }
        if($run_update_query == true){
            $msg = "<p class='text-success'><b><span class='glyphicon glyphicon-ok'></span> Promotion Successful</b></p>";
        }else{
            $msg = "<p class='text-danger'><b><span class='glyphicon glyphicon-remove'></span> Promotion Failed</b></p>";
        }
    }
?>

<?php
    ///////////// POST ACTION TO DISPLAY CURRENT SESSION //////////////
    $query = " SELECT * FROM `current_season` ";
    $run_query = mysqli_query($connection, $query);
    if(mysqli_num_rows($run_query) == 1){
        while($result = mysqli_fetch_assoc($run_query)){
            $show_current_session = $result['current_session'];
        }
    }
?>

 <div class='page-title'>
  <div>
    <h1><i class='fa fa-laptop'></i> Student Management</h1>
    <p>Promote Student</p>
  </div>
  <div>
    <ul class='breadcrumb'>
      <li><i class='fa fa-home fa-lg'></i></li>
      <li><a href='#'>Student Management</a></li>
      <li><a href='#'>Promote Student </a></li>
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
                    <p> Promotion is Class By Class Starting From SSS3 Students</p>
                </div>
                <br/>
                
                <div class = 'panel-body'>
                    <form method = 'POST' action = ''>
                        <div class='row'>
                            <div class = 'col-xs-12 col-sm-12 col-md-4'>
                                <div class = 'input-group'>
                                    <span class = 'input-group-addon' id = 'sizing-addon2'>Promote From</span>
                                    <select name='view_student_in_class' class='form-control'>
                                        <option>Select Class</option>
                                        <?php
                                            $query = " SELECT * FROM `classes` ";
                                            $run_query = mysqli_query($connection, $query);
                                            if(mysqli_num_rows($run_query) > 0){
                                                while($result = mysqli_fetch_assoc($run_query)){
                                                    $target_classes = $result['classes'];
                                                    echo"
                                                        <option>{$target_classes}</option>
                                                    ";
                                                }
                                            }
                                        ?>
                                    </select>
                                </div>
                                <br/>
                            </div>
                            <button type = 'submit' name='view_students_btn' class = 'btn btn-primary btn-md' style='margin-left:20px;'><span class= 'glyphicon glyphicon-user'></span>&nbsp; View Students</button><br/> 
                        </div>
                    </form>
                </div>
            </div>
            
            <?php
                if(isset($_POST['view_students_btn'])){
                    $view_student_in_class = $_POST['view_student_in_class'];
                    
                    $query = " SELECT * FROM students WHERE class = '{$view_student_in_class}' ";
                    $run_query = mysqli_query($connection, $query);
                    
                    if(mysqli_num_rows($run_query) > 0){
                        $i = 0;
                        $k = 0;
                        echo "<form name='myform' method='POST' action=''>";
                        
                        while($result = mysqli_fetch_assoc($run_query)){
                            $k++;
                            $id = $result['id'];
                            $firstname = $result['firstname'];
                            $lastname = $result['lastname'];
                            $othername = $result['othername'];
                            $class = $result['class'];
                            $reg_no = $result['reg_number'];
                            
                            echo "
                                <div class='row'>
                                    <div class='col-md-1 col-xs-1'>
                                        {$k}
                                    </div>
                                    <div class='col-md-3 col-xs-3'>
                                        <b>{$firstname} {$lastname} {$othername}</b>
                                    </div>
                                    
                                    <div class='col-md-2 col-xs-2'>
                                        {$class}
                                    </div>
                                    
                                    <div class='col-md-2 col-xs-2'>
                                        {$reg_no}
                                    </div>
                                    
                                    <div class='col-md-2 col-xs-2'>
                                        <input type='hidden' name='student_hidden_id[]' value='{$id}' />
                                        <input type='hidden' name='student_initial_class' value='{$class}' />
                                        <input type='checkbox' class='form-control' name='student_id[]' value='{$id}' />
                                    </div>
                                </div>
                            ";
                            $i++;
                        }
                        
                        echo "
                                <div class='row'>
                                    <div class='col-md-1 col-xs-1'>
                                    
                                    </div>
                                    <div class='col-md-3 col-xs-3'>
                                    
                                    </div>
                                    <div class='col-md-2 col-xs-2'>
                                    
                                    </div>
                                    <div class='col-md-2 col-xs-2'>
                                        <label for='selectall' id='selectControl'>Select All</label>
                                    </div>
                                    <div class='col-md-2 col-xs-2'>
                                        <input type='checkbox' class='form-control' id='selectall' />
                                    </div>
                                </div>
                                <div class='row'>
                                    <div class = 'col-xs-8 col-sm-12 col-md-4'>
                                        <div class = 'input-group'>
                                            <span class = 'input-group-addon' id = 'sizing-addon2'>Promote To</span>
                                            <select name='promote_to' class='form-control'>
                                                <option>Select Class</option>
                                                <option>Graduated</option>";
                                                
                                                    $query1 = " SELECT * FROM `classes` ";
                                                    $run_query1 = mysqli_query($connection, $query1);
                                                    if(mysqli_num_rows($run_query1) > 0){
                                                        while($result = mysqli_fetch_assoc($run_query1)){
                                                            $target_classes = $result['classes'];
                                                            echo"
                                                                <option>{$target_classes}</option>
                                                            ";
                                                        }
                                                    }
                            
                                                echo"
                                            </select>
                                        </div>
                                    </div>
                                    <div class='col-md-4'>
                                        <input type='hidden' name='total_num' value='{$i}' />
                                        <button type = 'submit' name='promote_btn' class = 'btn btn-primary btn-md' style='margin-left:20px;'><span class= 'glyphicon glyphicon-user'></span>Promote</button><br/> 
                                    </div>
                                </div>
                            </form>
                        ";
                    }
                }
            ?>
            
        </div>
    </div>
</div>
<script type="text/javascript">
    function Check(frm){
        var checkBoxes = frm.elements['student_id[]'];
        for (i = 0; i < checkBoxes.length; i++){
            checkBoxes[i].checked = (selectControl.innerHTML == "Select All") ? 'checked' : '';
        }
        selectControl.innerHTML = (selectControl.innerHTML == "Select All") ? "Unselect All" : 'Select All';
    }
    
    window.onload = function(){
        var selectControl = document.getElementById("selectControl");
        selectControl.onclick = function(){Check(document.myform)};
    }
</script>
