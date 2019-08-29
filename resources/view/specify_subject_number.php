<?php
    //////////////POST ACTION TO DECLARE NUMBER OF SUBJECTS OFFERED BY SSS CLASS ////////////////
    if(isset($_POST['number_of_senior_subjects_btn'])){
        $student_subject_number = $_POST['student_subject_number'];

        if($student_subject_number == $select){
            $msg = "<p class='text-danger'><b>Please Select Number of Subjects</b></p>";
        }else{
            $query = " SELECT * FROM `sss_subject_number` ";
            $run_query = mysqli_query($connection, $query);

            if(mysqli_num_rows($run_query) == 1){
                $query = " UPDATE `sss_subject_number` SET 
                                    `number_of_subject` = '{$student_subject_number}' ";
                $run_query = mysqli_query($connection, $query);

                if($run_query == true){
                    echo "<p class='text-success'><b>Number of Subjects Offered by SSS class Updated Successfully</b></p>";
                }else{
                    $msg = "<p class='text-danger'><b>Number of Subjects Update Failed</b></p>";
                }
            }else{
                $query = " INSERT INTO `sss_subject_number`(`number_of_subject`, `declared_date`) VALUES('$student_subject_number', '$date') ";
                $run_query = mysqli_query($connection, $query);

                if($run_query == true){
                    $msg = "<p class='text-success'><b>Number of Subjects Offered by SSS class Declared Successfully</b></p>";
                }else{
                    $msg = "<p class='text-danger'><b>Number of Subjects Declaration Failed</b></p>";
                }
            }
        }
    }

    //////////////POST ACTION TO DECLARE NUMBER OF SUBJECTS OFFERED BY JSS CLASS ////////////////
    if(isset($_POST['number_of_junior_subjects_btn'])){
        $student_subject_number = $_POST['student_subject_number'];

        if($student_subject_number == $select){
            $msg = "<p class='text-danger'>Please Select Number of Subjects<b></b></p>";
        }else{
            $query = " SELECT * FROM `jss_subject_number` ";
            $run_query = mysqli_query($connection, $query);

            if(mysqli_num_rows($run_query) == 1){
                $query = " UPDATE `jss_subject_number` SET 
                                    `number_of_subject` = '{$student_subject_number}' ";
                $run_query = mysqli_query($connection, $query);

                if($run_query == true){
                    $msg = "<p class='text-success'><b>Number of Subjects Offered by JSS class Updated Successfully</b></p>";
                }else{
                    $msg = "<p class='text-danger'><b>Number of Subjects Update Failed</b></p>";
                }
            }else{
                $query = " INSERT INTO `jss_subject_number`(`number_of_subject`, `declared_date`) VALUES('$student_subject_number', '$date') ";
                $run_query = mysqli_query($connection, $query);

                if($run_query == true){
                    $msg = "<p class='text-success'><b>Number of Subjects Offered by JSS class Declared Successfully</b></p>";
                }else{
                    $msg = "<p class='text-danger'><b>Number of Subjects Declaration Failed</b></p>";
                }
            }
        }
    }
?>
<div class='page-title'>
  <div>
    <h1><i class='fa fa-laptop'></i> Subject Management</h1>
    <p>Specify the number of subject offered by students</p>
  </div>
  <div>
    <ul class='breadcrumb'>
      <li><a href='admin_dashboard.php'><i class='fa fa-home fa-lg'></i></a></li>
      <li><a href='#'>Subject Managemant</a></li>
      <li><a href='#'>Specify Subject Number </a></li>
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
                    <h4 class = 'txt'>CLASS MANAGEMENT</h4>
                </div><br/>
                <div class = 'panel-body'>
                    <form method = 'POST' action = ''>
                        <div class='row'>
                            <div class = 'col-xs-12 col-sm-12 col-md-4'>
                                <div class = 'input-group'>
                                    <span class = 'input-group-addon' id = 'sizing-addon2'>Subject Number</span>
                                    <select class='form-control' name='student_subject_number' required>
                                        <?php
                                            for($i=1; $i <= 20; $i++){
                                                echo "<option>{$i}</option>";
                                            }
                                        ?>
                                    </select>
                                </div>
                                <br />
                            </div>
                            <div class = 'col-xs-12 col-sm-12 col-md-4'>
                                <?php
                                    ///////////////// QUERY TO SHOW NUMBER OF SUBJECTS TO BE OFFERED BY JSS CLASSES ///////////
                                    $query = " SELECT * FROM `jss_subject_number` ";
                                    $run_query = mysqli_query($connection, $query);

                                    if(mysqli_num_rows($run_query) == 1){
                                        while($result = mysqli_fetch_assoc($run_query)){
                                            $subject_number_declared = $result['number_of_subject'];
                                        }
                                        echo"
                                            <div class='alert alert-success' role='alert'>
                                                <p>JSS Students must offer <b>{$subject_number_declared}</b> subjects</p>
                                            </div>
                                        ";
                                    }else{
                                        echo"
                                            <div class='alert alert-danger' role='alert'>
                                                <p>Number Of Subjects offered by JSS CLASSES not set</b></p>
                                            </div>
                                        ";
                                    }
                                ?>
                            </div>
                            <div class = 'col-xs-12 col-sm-12 col-md-4'>
                                <?php
                                    ///////////////// QUERY TO SHOW NUMBER OF SUBJECTS TO BE OFFERED BY SSS CLASSES ///////////
                                    $query = " SELECT * FROM `sss_subject_number` ";
                                    $run_query = mysqli_query($connection, $query);

                                    if(mysqli_num_rows($run_query) == 1){
                                        while($result = mysqli_fetch_assoc($run_query)){
                                            $subject_number_declared = $result['number_of_subject'];
                                        }
                                        echo"
                                            <div class='alert alert-success' role='alert'>
                                                <p>SSS Students must offer <b>{$subject_number_declared}</b> subjects</p>
                                            </div>
                                        ";
                                    }else{
                                        echo"
                                            <div class='alert alert-danger' role='alert'>
                                                <p>Number Of Subjects offered by SSS CLASSES not set</b></p>
                                            </div>
                                        ";
                                    }
                                ?>
                            </div>
                        </div>
                        <div class='row'>
                            <div class = 'col-xs-12 col-sm-12 col-md-3'>
                                <button type = 'submit' name='number_of_junior_subjects_btn' class ='btn btn-primary btn-md' style='margin-left:20px;'><span class = 'glyphicon glyphicon-user'></span>&nbsp SPECIFY JSS SUBJECT NUMBER</button><br/><br />
                            </div>
                            <div class = 'col-xs-12 col-sm-12 col-md-3'>
                                <button type = 'submit' name = 'number_of_senior_subjects_btn' class ='btn btn-primary btn-md' style='margin-left:20px;'><span class = 'glyphicon glyphicon-user'></span>&nbsp SPECIFY SSS SUBJECT NUMBER</button><br/> 
                            </div>
                        </div>
                    </form>
                </div>
        </div>
    </div>
</div>