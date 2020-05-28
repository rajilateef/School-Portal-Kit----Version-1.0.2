<?php
	ob_start();
?>
<?php
    require_once("../../public/student_session.php");
	require_once("../../public/connection.php");
	require_once("../../public/functions.php");
?>
<?php
    //////////////// DEFAULT NULL VALUES ///////////////
    $error = array();
    $date = date('d/M/Y');
    $select = "--select--";
    $time = date('h:m:s');
?>
<?php
    $query = " SELECT * FROM `results1` WHERE `id` = '{$_SESSION['result']}' ";
    $run_query = mysqli_query($connection, $query);
    
    if(mysqli_num_rows($run_query) == 1){
        while($result = mysqli_fetch_assoc($run_query)){
            $result_name = $result['name'];
            $result_reg_number = $result['reg_number'];
            $result_class = $result['class'];
            $result_term = $result['term'];
            $result_session = $result['session'];
        }
    }
?>
<?php
    $query = " SELECT * FROM `students` WHERE `reg_number` = '{$result_reg_number}' ";
    $run_query = mysqli_query($connection, $query);
    
    if(mysqli_num_rows($run_query) == 1){
        while($result = mysqli_fetch_assoc($run_query)){
            $result_passport = $result['passport'];
            $result_sex = $result['gender'];
        }
    }
?>
<?php
    $query = " SELECT * FROM `administratives` ";
    $run_query = mysqli_query($connection, $query);
    
    if(mysqli_num_rows($run_query) == 1){
        while($result = mysqli_fetch_assoc($run_query)){
            $school_logo = $result['school_logo'];
            $school_name = $result['school_name'];
            $school_address = $result['school_motto'];
            $school_stamp = $result['school_stamp'];
        }
    }
?>
<?php
    $query = " SELECT * FROM `dates` ";
    $run_query = mysqli_query($connection, $query);
    
    if(mysqli_num_rows($run_query) == 1){
        while($result = mysqli_fetch_assoc($run_query)){
            $term_ended = $result['end_of_term'];
            $next_term_starts = $result['next_term_begins'];
        }
    }
?>
<?php
    ///POST ACTION TO GET BEHAVIORAL ANALYSIS
    $query = " SELECT * FROM `behavioral` WHERE `reg_number` = '{$result_reg_number}' ";
    $run_query = mysqli_query($connection, $query);

    if(mysqli_num_rows($run_query) == 1){
        while($row = mysqli_fetch_assoc($run_query)){
            $hand_writting = $row['hand_writting'];
            $musical_skills = $row['musical_skills'];
            $sports = $row['sports'];
            $attentiveness = $row['attentiveness'];
            $attitude_to_work = $row['attitude_to_work'];
            $health = $row['health'];
            $politeness = $row['politeness'];
        }
    }

?>

<?php
    $present = "Present";
    $absent = "Absent";

    $query = "SELECT * FROM student_attendance WHERE `reg_number` = '{$result_reg_number}' AND term = '{$result_term}' AND session = '{$result_session}' AND class = '{$result_class}' AND roll_call = '{$present}' ";
    $run_query = mysqli_query($connection, $query);

    $times_present = mysqli_num_rows($run_query);

    $query = "SELECT * FROM student_attendance WHERE `reg_number` = '{$result_reg_number}' AND term = '{$result_term}' AND session = '{$result_session}' AND class = '{$result_class}' AND roll_call = '{$absent}' ";
    $run_query = mysqli_query($connection, $query);

    $times_absent = mysqli_num_rows($run_query);
?>


<?php
    $query = " SELECT school_stamp FROM `administratives` ";
    $run_query = mysqli_query($connection, $query);

    if(mysqli_num_rows($run_query) == 1){
        while($result = mysqli_fetch_assoc($run_query)){
            $signature = $result['school_stamp'];
        }
    }
?>
<!DOCTYPE>
<html>
    <head>
        <title>SPK Result - <?php echo $result_name; ?></title>
        <meta charset='utf-8'>
        <meta charset='utf-8'>
        <meta http-equiv='X-UA-Compatible' content='IE=edge'>
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <!-- CSS-->
        <link rel='stylesheet' type='text/css' href='../../assets/css/main.css'>
    <link rel='stylesheet' type='text/css' href='../../assets/css/defined.css'>
    <link rel="shortcut icon" href="../../img/ic.png">
    <!-- Font-icon css-->
    <link rel="stylesheet" href="../../assets/css/font-awesome-4.7.0/css/font-awesome.css">
        <script src="../../assets/js/jquery-2.1.4.min.js"></script>
        <script src='../../assets/js/bootstrap.js'></script>
        <script src='../../assets/js//blink.js'></script>
        <style type="text/css">

            @media print
            {
            .noprint {display:none;}
            }

            @media screen
            {
            ...
            }

            #result td, #result th {
                padding: 0.2%;
                border: 1px solid #000;
            }

            #performance td, #psychomotor td, #punctuality td {
                border: 1px solid #000;   
            }

        </style>
    </head>
    <body style="background: #fff;">
        <div class='container'>
            <br />
            <div class='row'>
                <div class='col-md-1 col-sm-1 col-xs-2'>
                    <img src='<?php echo $school_logo; ?>' class='img-responsive' />
                </div>

                <div class='col-md-5 col-sm-5 col-xs-8'>
                    <h4 class='text-center'><b><?php echo $school_name; ?></b></h4>
                    <p class='text-center'><b><?php echo $school_address; ?></b></p>
                    <h5 class='text-center'><b><?php echo $result_term; ?> Report Sheet for <?php echo $result_session; ?> Session</b></h5>
                </div>

                <div class='col-md-1 col-sm-1 col-xs-2 text-center'>
                    <img src='<?php echo $result_passport; ?>' class='img-responsive' />
                </div>
            </div>

            <div class='row'>
                <div class='col-md-12 col-sm-12 col-xs-12'>
                    <p><b>NAME:</b> <?php echo strtoupper($result_name); ?></p>
                    <p><b>REG NO:</b> <?php echo $result_reg_number; ?> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>CLASS:</b> <?php echo $result_class; ?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>SEX: </b><?php echo $result_sex; ?> </p>
                </div>
            </div>
            <br />



            <?php
                $query = " SELECT * FROM `results1` WHERE `reg_number` = '{$result_reg_number}' AND `class` = '{$result_class}' AND `term` ='{$result_term}' AND `session` = '{$result_session}' ";
                $run_query = mysqli_query($connection, $query);

                if(mysqli_num_rows($run_query) > 0){
                    $number_of_subject = mysqli_num_rows($run_query);
                    $marks_obtainable = $number_of_subject * 100;
                    echo"
                        
                            <table class='text-info' id='result'>
                                <thead>
                                    <tr class='info'>
                                        <th>SUBJECTS</th>
                                        <th>CAT (15)</th>
                                        <th>ASSIGN (25)</th>
                                        <th>EXAM (60)</th>
                                        <th>TOTAL (100)</th>
                                        <th>GRADE</th>
                                        <!--<th>POSITION</th>
                                        <th>REMARKS</th>-->
                                    </tr>
                                </thead>
                    ";

                    while($result = mysqli_fetch_assoc($run_query)){
                        $result_regno = $result['reg_number'];
                        $result_subject = $result['subjects'];
                        $result_ca = $result['ca'];
                        $result_project = $result['project'];
                        $result_exam = $result['exam'];
                        $result_score = $result['subject_total'];
                        $result_rank = subject_position($result['subject_rank']);
                        $a = 70;
                        $b = 60;
                        $c = 50;
                        $d = 45;
                        $e = 40;
                        $f = 0;
                        if($result_score >= $a){
                            $result_grade = "A";
                            $remark = "Excellent";
                        }
                        elseif($result_score >= $b){
                            $result_grade = "B";
                            $remark = "Very Good";
                        }
                        elseif($result_score >= $c){
                            $result_grade = "C";
                            $remark = "Credit";
                        }
                        elseif($result_score >= $d){
                            $remark = "Pass";
                        }
                        elseif($result_score >= $e){
                            $result_grade = "E";
                            $remark = "Fair";
                        }
                        else{
                            $result_grade = "F";
                            $remark = "Fail";
                        }

                        echo"
                            <tr>
                                <td>{$result_subject}</td>
                                <td>{$result_ca}</td>
                                <td>{$result_project}</td>
                                <td>{$result_exam}</td>
                                <td>{$result_score}</td>
                                <td>{$result_grade}</td>
                                <!--<td>{$result_rank}</td>
                                <td>{$remark}</td>-->
                            </tr>
                        ";
                    }
                }echo"
                        </table>
                    </div>
                ";
            ?>

            <?php
                $query = " SELECT * FROM `positions` WHERE `class` = '{$result_class}' AND `term` ='{$result_term}' AND `session` = '{$result_session}' ";
                $run_query = mysqli_query($connection, $query);
                $number_in_class = mysqli_num_rows($run_query);

                $query = " SELECT * FROM `positions` WHERE `reg_number` = '{$result_reg_number}' AND `class` = '{$result_class}' AND `term` ='{$result_term}' AND `session` = '{$result_session}' ";
                $run_query = mysqli_query($connection, $query);

                if(mysqli_num_rows($run_query) == 1){
                    while($result = mysqli_fetch_assoc($run_query)){
                        $student_total = $result['students_sub_total'];
                        $student_average = $result['students_sub_average'];
                        $position_in_class = $result['class_position'];
                    }
                }
            ?>
            <div class='container'>
                <div class="row">
                    <div class="col-md-12 col-xs-12">
                        <p>
                            <b>KEY TO GRADE:</b> 0-39=F9, 40-44=8, 45-49=D7, 50-54=C6, 55-59=C5, 60-64=C4, 65-69=B3, 70-74=B2, 75-100=A1
                        </p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3 col-xs-3">
                        <h5>PERFORMANCE REPORT</h5>
                        <table class="" id="performance">
                            <tr>
                                <td>MARKS OBTAINABLE</td>
                                <td><?php echo $marks_obtainable; ?></td>
                            </tr>
                            <tr>
                                <td>MARKS OBTAINED</td>
                                <td><?php echo $student_total; ?></td>
                            </tr>
                            <tr>
                                <td>AVERAGE</td>
                                <td><?php echo $student_average; ?></td>
                            </tr>
                            <tr>
                                <td>NUMBER IN CLASS</td>
                                <td><?php echo $number_in_class; ?></td>
                            </tr>
                            <tr>
                                <td>POSITION</td>
                                <td><?php echo $position_in_class; ?></td>
                            </tr>
                        </table>
                    </div>

                    <div class="col-md-3 col-xs-3">
                        <h5>PSYCHOMOTOR REPORT</h5>
                        <table class="" id="psychomotor">
                            <tr>
                                <td>PUCTUALITY</td>
                                <td><?php echo $attitude_to_work; ?></td>
                            </tr>
                            <tr>
                                <td>NEATNESS</td>
                                <td><?php echo $hand_writting; ?></td>
                            </tr>
                            <tr>
                                <td>BEHAVIOR</td>
                                <td><?php echo $politeness; ?></td>
                            </tr>
                            <tr>
                                <td>ATTENTIVENESS</td>
                                <td><?php echo $attentiveness; ?></td>
                            </tr>
                            <tr>
                                <td>SPORTS</td>
                                <td><?php echo $sports; ?></td>
                            </tr>
                        </table>
                    </div>

                    <div class="col-md-3 col-xs-3">
                        <h5>PUNCTUALITY REPORT</h5>
                        <table class="" id="punctuality">
                            <tr>
                                <td>NO. OF TIMES SCHOOL OPENED</td>
                                <td><?php echo $times_absent + $times_present; ?></td>
                            </tr>
                            <tr>
                                <td>NO. OF TIMES PRESENT</td>
                                <td><?php echo $times_present; ?></td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 col-xs-12">
                        <p>
                            <b>PSYCHOMOTOR RATING:</b> 5 = V.GOOD, 4 = GOOD, 3 = AVERAGE, 2 = BELOW AVERAGE, 1 = POOR
                        </p>
                    </div>
                </div>

                <?php
                    if($student_average >= 40){
                        $teacher_remark = "Good result, keep it up.";
                    }else{
                        $teacher_remark = "";
                    }
                ?>
                <?php
                    if($student_average >= 40){
                        $result_status = "Pass";
                    }
                    elseif($student_average < 40){
                        $result_status = "Fail";
                    }
                ?>

                <?php
                    if($result_term === "Third Term" && $result_status === "Pass"){
                        $third_term_promotion = "Promoted";
                    }
                    elseif($result_term === "Third Term" && $result_status === "Fail"){
                        $third_term_promotion = "Repeat";
                    }else{
                        $third_term_promotion = $result_status;
                    }
                ?>

                <div class="row">
                    <div class="col-md-12 col-xs-12">
                        <h5>REMARKS/COMMENTS</h5>
                        <p>
                            <b>TEACHERS COMMENT:</b> <?php echo $teacher_remark; ?>
                            <?php
                                $query = " SELECT subjects FROM `results1` WHERE `reg_number` = '{$result_reg_number}' AND `class` = '{$result_class}' AND `term` ='{$result_term}' AND `session` = '{$result_session}' AND subject_total < 40 ";
                                $run_query = mysqli_query($connection, $query);

                                if(mysqli_num_rows($run_query) > 0){
                                    echo "Put more effort in ";
                                    while($result = mysqli_fetch_assoc($run_query)){
                                        $result_subject = $result['subjects'];
                                        echo "<b>{$result_subject},</b>";
                                    }
                                }
                            ?>
                        </p>
                        <p>
                            <b>REMARK:</b> <?php echo $third_term_promotion; ?>
                        </p>
                        <hr>

                        <p>
                            <b>SCHOOL CLOSE:</b><?php echo $term_ended; ?> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>NEXT TERM RESUMES: </b><?php echo $next_term_starts; ?> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>SIGNATURE/STAMP: </b><img src='<?php echo $signature; ?>' class='img-responsive' id='signature' />
                        </p>
                    </div>
                </div>
            </div>
            <br />
            <button type='button' class='btn btn-primary btn-sm noprint' onclick='window.print()' value='print a div!'><i class='fa fa-print'></i> Print </button>
            <a href='student_dashboard.php?student_check_result' class='btn btn-danger btn-sm noprint'><i class='fa fa-close'> Cancel</i></a>
            <br />
            <br />
        </div>
	</body>
</html>