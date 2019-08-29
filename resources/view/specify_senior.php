<?php
    /////////////////// POST ACTION TO SPECIFY SUBJECTS OFFERED BY SENIOR (SSS) CLASSES //////////////////
    if(isset($_POST['specify_senior_subjects_btn'])){
        $specify_senior_subjects = inject_checker($connection, $_POST['specify_senior_subjects']);
        if($specify_senior_subjects == $select){
            $msg = "<p class='text-danger'><b><span class='glyphicon glyphicon-remove'></span>Please Select Subject to Specify</b></p>";
        }else{
            $query = " SELECT * FROM `sss` WHERE `sss_subjects` = '{$specify_senior_subjects}' ";
            $run_query = mysqli_query($connection, $query);
            if(mysqli_num_rows($run_query) > 0){
                $msg = "<p class='text-danger'><b><span class='glyphicon glyphicon-remove'></span>Sorry {$specify_senior_subjects} has Already been specified for Senior Classes</b></p>";
            }else{
                $query = " INSERT INTO `sss`(`sss_subjects`, `upload_date`) VALUES('$specify_senior_subjects', '$date') ";
                $run_query = mysqli_query($connection, $query);

                if($run_query == true){
                    $msg = "<p class='text-success'><b><span class='glyphicon glyphicon-ok'></span> Specification of {$specify_senior_subjects} for Senior Classes Successful</b></p>";
                }else{
                    $msg = "<p class='text-success'><b><span class='glyphicon glyphicon-remove'></span>Specification Failed</b></p>";
                }
            }
        }
    }
?>

<?php
    if(isset($_POST['del_specify_btn'])){
        $subject_id = $_POST['subject_id'];
        
        $query = " DELETE FROM `sss` WHERE `id` = {$subject_id} ";
        $run_query =mysqli_query($connection, $query);

        if($run_query == true){
            $msg = "<p class='text-success'><b>Subject Deleted Successfully</b></p>";
        }else{
            $msg = "<p class='text-danger'><b>Error! Subject Could Not Deleted</b></p>";
        }
    }
?>

<div class='page-title'>
  <div>
    <h1><i class='fa fa-laptop'></i> Subject Management</h1>
    <p>Specify subjects offered by SSS students</p>
  </div>
  <div>
    <ul class='breadcrumb'>
      <li><a href='modules.php'><i class='fa fa-home fa-lg'></i></a></li>
      <li><a href='#'>Subject Managemant</a></li>
      <li><a href='#'>SSS Subject Specification </a></li>
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
                    <h4 class = 'txt'>SPECIFY SUBJECT OFFERED BY SENIOR CLASSES</h4>
                </div><br/>
                <div class = 'panel-body'>
                    <form method = 'POST' action = ''>
                        <div class='row'>
                            <div class = 'col-xs-12 col-sm-12 col-md-4'>
                                <div class = 'input-group'>
                                    <span class = 'input-group-addon' id = 'sizing-addon2'>SUBJECTS</span>
                                    <select class='form-control' name='specify_senior_subjects' required>
                                        <?php
                                            $query = " SELECT * FROM `school_subjects` ORDER BY `subjects` ASC ";
                                            $run_query = mysqli_query($connection, $query);

                                            if(mysqli_num_rows($run_query) > 0){
                                                while($result = mysqli_fetch_assoc($run_query)){
                                                    $subject = $result['subjects'];
                                                    echo "<option>{$subject}</option>";
                                                }
                                            }
                                        ?>
                                    </select>
                                </div>
                                <br />
                            </div>
                            <div class = 'col-xs-12 col-sm-12 col-md-4'>
                                <button type = 'submit' name='specify_senior_subjects_btn' class ='btn btn-primary btn-md' style='margin-left:20px;'><span class = 'glyphicon glyphicon-user'></span>&nbsp; SAVE SUBJECT OFFERED BY SSS</button><br/><br />
                            </div>
                        </div>
                    </form>
                    <div class='row'>
                        <div class='col-md-12'>
                            <div class = 'col-xs-12 col-sm-12 col-md-12'>
                                <div class='alert alert-success'>
                                    <?php
                                        $query = " SELECT * FROM `sss` ORDER BY `sss_subjects` ASC ";
										$run_query = mysqli_query($connection, $query);
										
										if(mysqli_num_rows($run_query) > 0){
											$i = 0;
											echo"
												<div class='table-responsive'>
													<table class='table table-striped'>
														<thead>
															<tr>
																<th>S/N</th>
																<th>SENIOR CLASSES SUBJECTS</th>
																<th>ACTION</th>
															</tr>
														</thead>
											";
											while($result = mysqli_fetch_assoc($run_query)){
												$i++;
												$subject_id_senior = $result['id'];
												$senior_subjects = $result['sss_subjects'];
												echo"
													
													<tbody>
														<tr>
															<td>{$i}</td>
															<td>{$senior_subjects}</td>
															<td>
																<form method='POST' action=''>
																	<input type='hidden' name='subject_id' value='{$subject_id_senior}' />
																	<input type='submit' name='del_specify_btn' value='Delete' class='btn-xs btn-danger' />
																</form>
															</td>
														</tr>
													</tbody>
												";
											}
										}echo"
											</table>
										</div>";
                                    ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
    </div>
</div>