<?php
	//////////////// POST ACTION TO UPLOAD FEE PAYMENT DETAILS //////////////
	if(isset($_POST['fee_payment_btn'])){
		$fee_payment_reg_number = inject_checker($connection, $_POST['fee_payment_reg_number']);
		$fee_payment_class = inject_checker($connection, $_POST['fee_payment_class']);
		$fee_payment_student_type = inject_checker($connection, $_POST['fee_payment_student_type']);
		$fee_payment_term = inject_checker($connection, $_POST['fee_payment_term']);
		$fee_payment_session = inject_checker($connection, $_POST['fee_payment_session']);
		$fee_payment_amount = inject_checker($connection, $_POST['fee_payment_amount']);
		$fee_payment_teller_no = inject_checker($connection, $_POST['fee_payment_teller_no']);
		$cleared = "Cleared";
		$not_cleared = "Not Cleared";
		
		$query = " SELECT * FROM `current_season` ";
		$run_query = mysqli_query($connection, $query);
		
		if(mysqli_num_rows($run_query) == 1){
			while($result = mysqli_fetch_assoc($run_query)){
				$current_session = $result['current_session'];
				$current_term = $result['current_term'];
			}
		}
		
		if($current_term == "First Term"){
			$term_code = 1;
		}
		elseif($current_term == "Second Term"){
			$term_code = 2;
		}
		elseif($current_term == "Third Term"){
			$term_code == 3;
		}
		
		$session_of_reg = substr($current_session, 0, 4);
		
		if(empty($fee_payment_reg_number)){
			$msg = "<p class='text-danger'><b>Please Type the Reg Number of the Student</b></p>";
		}
		elseif($fee_payment_class == $select){
			$msg = "<p class='text-danger'><b>Please Select Student Class</b></p>";
		}
		elseif($fee_payment_student_type == $select){
			$msg = "<p class='text-danger'><b>Please Select Student Type</b></p>";
		}
		elseif($fee_payment_term == $select){
			$msg = "<p class='text-danger'><b>Please Select Term</b></p>";
		}
		elseif($fee_payment_session == $select){
			$msg = "<p class='text-danger'><b>Please Select Session</b></p>";
		}
		elseif(empty($fee_payment_amount)){
			$msg = "<p class='text-danger'><b>Please Type the Amount Paid by the Student</b></p>";
		}
		elseif(empty($fee_payment_teller_no)){
			$msg = "<p class='text-danger'><b>Please Type the Bank Teller No</b></p>";
		}else{
			$query = " SELECT * FROM `students` WHERE `reg_number` = '{$fee_payment_reg_number}' ";
			$run_query = mysqli_query($connection, $query);
			
			if(mysqli_num_rows($run_query) == 1){
				while($result = mysqli_fetch_assoc($run_query)){
					$student_surname = $result['firstname'];
					$student_firstname = $result['lastname'];
					$student_othername = $result['othername'];
					$student_reg_no  = $result['reg_number'];
					$student_name = "{$student_surname} {$student_firstname} {$student_othername}";
				}
				
				$studet_session_of_registration = substr($student_reg_no, 0, 4);
				$student_term_of_registration = substr($student_reg_no, 4, 1);
				
				if($studet_session_of_registration == $session_of_reg && $student_term_of_registration == $term_code && $fee_payment_student_type !== "New Student"){
					$msg = "<p class='text-danger'><b>Don't try this again. This Student is a new student. Acknowledge his/her payment as such</b></p>";
				}else{
					$query = " SELECT * FROM `fee_payment` WHERE `reg_number` = '{$fee_payment_reg_number}' AND `student_class` = '{$fee_payment_class}' AND `student_type` = '{$fee_payment_student_type}' AND `fee_term` = '{$fee_payment_term}' AND `fee_session` = '{$fee_payment_session}' ";
					$run_query = mysqli_query($connection, $query);
					
					if(mysqli_num_rows($run_query) == 0){
						$query = " SELECT * FROM `fee_allocation` WHERE `allocate_class` = '{$fee_payment_class}' AND `student_type` = '{$fee_payment_student_type}' ";
						$run_query = mysqli_query($connection, $query);
						
						if(mysqli_num_rows($run_query) == 1){
							while($result = mysqli_fetch_assoc($run_query)){
								$fee_allocated_amount = $result['fee_amount'];
							}
							
							$student_balance = $fee_allocated_amount - $fee_payment_amount;
							
							if($fee_payment_amount > $fee_allocated_amount){
								$msg = "<p class='text-danger'><b>The Amount You Paid Can not be Higher than the Allocated Amount for School Fees</b></p>";
							}
							elseif($fee_payment_amount == $fee_allocated_amount){
								$query = " INSERT INTO `fee_payment` (`reg_number`, `student_name`, `student_class`, `student_type`, `fee_term`, `fee_session`, `amount_paid`, `student_balance`, `teller_no`, `payment_status`, `date_of_upload`) 
											VALUES('$fee_payment_reg_number', '$student_name', '$fee_payment_class', '$fee_payment_student_type', '$fee_payment_term', '$fee_payment_session', '$fee_payment_amount', '$student_balance', '$fee_payment_teller_no', '$cleared', '$date') ";
								$run_query = mysqli_query($connection, $query);
								
								if($run_query == true){
									$msg = "<p class='text-success'><b>Fee Payment Details for {$student_name} with Reg no: {$fee_payment_reg_number} Successfully Saved</b></p>";
								}else{
									$msg = "<p class='text-danger'><b>Fee Payment Details for {$fee_payment_reg_number} Failed to Save</b></p>";
								}
							}else{
								$query = " INSERT INTO `fee_payment` (`reg_number`, `student_name`, `student_class`, `student_type`, `fee_term`, `fee_session`, `amount_paid`, `student_balance`, `teller_no`, `payment_status`, `date_of_upload`) 
											VALUES('$fee_payment_reg_number', '$student_name', '$fee_payment_class', '$fee_payment_student_type', '$fee_payment_term', '$fee_payment_session', '$fee_payment_amount', '$student_balance', '$fee_payment_teller_no', '$not_cleared', '$date') ";
								$run_query = mysqli_query($connection, $query);
								
								if($run_query == true){
									$msg = "<p class='text-success'><b>Fee Payment Details for {$student_name} with Reg no: {$fee_payment_reg_number} Successfully Saved</b></p>";
								}else{
									$msg = "<p class='text-danger'><b>Fee Payment Details for {$fee_payment_reg_number} Failed to Save</b></p>";
								}
							}
							
						}else{
							$msg = "<p class='text-danger'><b>Fees for {$fee_payment_student_type} in {$fee_payment_class} has not been allocated</b></p>";
						}
					}
					elseif(mysqli_num_rows($run_query) == 1){
						while($result = mysqli_fetch_assoc($run_query)){
							$amount_paid = $result['amount_paid'];
							$payment_status = $result['payment_status'];
						}
						
						if($payment_status == $cleared){
							$msg = "<p class='text-danger'><b>This Student Has Already Been Cleared, You Can not pay Fee Twice for the same Class, Term and Session</b></p>";
						}
						elseif($payment_status == $not_cleared){
							$query = " SELECT * FROM `fee_allocation` WHERE `allocate_class` = '{$fee_payment_class}' AND `student_type` = '{$fee_payment_student_type}' ";
							$run_query = mysqli_query($connection, $query);
							
							if(mysqli_num_rows($run_query) == 1){
								while($result = mysqli_fetch_assoc($run_query)){
									$fee_allocated_amount = $result['fee_amount'];
								}
							}
							
							$new_amount = $amount_paid + $fee_payment_amount;
							$new_student_balance = $fee_allocated_amount - $new_amount;
							
							if($new_amount > $fee_allocated_amount){
								$msg = "<p class='text-danger'><b>The Amount You Paid Can not be Higher than the Allocated Amount for School Fees</b></p>";
							}
							elseif($new_amount == $fee_allocated_amount){
								$query = " UPDATE `fee_payment` SET 
											`amount_paid` = '$new_amount',
											`student_balance` = '$new_student_balance',
											`teller_no` = '$fee_payment_teller_no',
											`payment_status` = '$cleared' WHERE `reg_number` = '{$fee_payment_reg_number}' ";
								$run_query = mysqli_query($connection, $query);
								
								if($run_query == true){
									$msg = "<p class='text-success'><b>Fee Payment Details for {$student_name} With Reg no: {$fee_payment_reg_number} Has been Updated</b></p>";
								}else{
									$msg = "<p class='text-danger'><b>Fee Payment Details for {$fee_payment_reg_number} Fail to Update</b></p>";
								}
							}else{
								$query = " UPDATE `fee_payment` SET 
											`amount_paid` = '$new_amount',
											`student_balance` = '$new_student_balance',
											`teller_no` = '$fee_payment_teller_no',
											`payment_status` = '$not_cleared' WHERE `reg_number` = '{$fee_payment_reg_number}' ";
								$run_query = mysqli_query($connection, $query);
								
								if($run_query == true){
									$msg = "<p class='text-success'><b>Fee Payment Details for {$student_name} With Reg no: {$fee_payment_reg_number} Has been Updated</b></p>";
								}else{
									$msg = "<p class='text-danger'><b>Fee Payment Details for {$fee_payment_reg_number} Fail to Update</b></p>";
								}
							}
						}
					}
				}
				
			}else{
				$msg = "<p class='text-danger'><b>This Student Does not Exist</b></p>";
			}
		}
	}
?>

<div class='page-title'>
  <div>
    <h1><i class='fa fa-laptop'></i> Fee Management</h1>
    <p>Fee Payment</p>
  </div>
  <div>
    <ul class='breadcrumb'>
      <li><a href='modules.php'><i class='fa fa-home fa-lg'></i></a></li>
      <li><a href='#'>Fee Management</a></li>
      <li><a href='#'>Fee Payment</a></li>
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
            <h4 class='text-center'>Record Students Fees</h4>
        </div>
        <div class='panel-body'>
            <form method='POST' action=''>
                <div class="row">
                    <div class="col-md-4">
                        <div class='input-group'>
                            <span class='input-group-addon' id='basic-addon2'>Student Reg No</span>
                            <input type='text' name='fee_payment_reg_number' placeholder='Enter Student Reg Number' class='form-control' />
                        </div>
                    </div>
                    
                    <div class="col-md-4">
                        <div class='input-group'>
                            <span class='input-group-addon' id='basic-addon2'>Student Class</span>
                            <select class='form-control' name='fee_payment_class'>
                                <option selected><?php echo $select; ?></option>
                                    <?php
                                        $query = " SELECT * FROM `classes` ";
                                        $run_query = mysqli_query($connection, $query);
                                        if(mysqli_num_rows($run_query) > 0){
                                            while($result = mysqli_fetch_assoc($run_query)){
                                                $allocate_fees_classes = $result['classes'];
                                                echo"
                                                    <option>{$allocate_fees_classes}</option>
                                                ";
                                            }
                                        }
                                    ?>
                            </select>
                        </div>
                    </div>
                    
                    <div class="col-md-4">
                        <div class='input-group'>
                            <span class='input-group-addon' id='basic-addon2'>Student Type</span>
                            <select class='form-control' name='fee_payment_student_type'>
                                <option selected><?php echo $select; ?></option>
                                <option>New Student</option>
                                <option>Old Student</option>
                                <option>New Student Scholarship</option>
                                <option>Old Student Scholarship</option>
                            </select>
                        </div>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-3">
                        <div class='input-group'>
                            <span class='input-group-addon' id='basic-addon2'>Fee Term</span>
                            <select class='form-control' name='fee_payment_term'>
                                <option selected><?php echo $select; ?></option>
                                <?php
                                    $term_array = array("First Term", "Second Term", "Third Term");
                                    foreach($term_array as $term){
                                        echo "<option>{$term}</option>";
                                    }
                                ?>
                            </select>
                        </div>
                    </div>
                    
                    <div class="col-md-3">
                        <div class='input-group'>
                            <span class='input-group-addon' id='basic-addon2'>Fee Session</span>
                            <select class='form-control' name='fee_payment_session'>
                                <option selected><?php echo $select; ?></option>
                                    <?php
                                        $query = " SELECT * FROM `sessions` ";
                                        $run_query = mysqli_query($connection, $query);
                                        if(mysqli_num_rows($run_query) > 0){
                                            while($result = mysqli_fetch_assoc($run_query)){
                                                $all_sessions = $result['sessions'];
                                                echo "<option>{$all_sessions}</option>";
                                            }
                                        }
                                    ?>
                            </select>
                        </div>
                    </div>
                    
                    <div class="col-md-3">
                        <div class='input-group'>
                            <span class='input-group-addon' id='basic-addon2'>Amount Paid</span>
                            <input type='text' name='fee_payment_amount' placeholder='Enter Fees Amount Paid by Student' class='form-control' />
                        </div>
                    </div>
                    
                    <div class="col-md-3">
                        <div class='input-group'>
                            <span class='input-group-addon' id='basic-addon2'>Teller No</span>
                            <input type='text' name='fee_payment_teller_no' placeholder='Enter Bank Teller No' class='form-control' />
                        </div>
                    </div>
                </div>
                <br />

                <p id='btnsubmit'><input type='submit' name='fee_payment_btn' id='submit' value='Save Fee Payment' class='btn btn-large btn-primary text-center' /></p>
            </form>

            <form method='POST' action='' class='noprint'>
                <legend>Select the Appropraite Class, Term and Session to view Specified School Fee Records</legend>
                <div class='row'>
                    <div class='col-md-4'>
                        <div class='input-group'>
                            <span class='input-group-addon' id='basic-addon2'>Class</span>
                            <select class='form-control' name='view_fee_payment_class'>
                                <option selected><?php echo $select; ?></option>
                                <?php
                                    $query = " SELECT * FROM `classes` ";
                                    $run_query = mysqli_query($connection, $query);
                                    if(mysqli_num_rows($run_query) > 0){
                                        while($result = mysqli_fetch_assoc($run_query)){
                                            $allocate_fees_classes = $result['classes'];
                                            echo"
                                                <option>{$allocate_fees_classes}</option>
                                            ";
                                        }
                                    }
                                ?>
                            </select>
                        </div>
                    </div>

                    <div class='col-md-4'>
                        <div class='input-group'>
                            <span class='input-group-addon' id='basic-addon2'>Term</span>
                            <select class='form-control' name='view_fee_payment_term'>
                                <option selected><?php echo $select; ?></option>
                                <?php
                                    $term_array = array("First Term", "Second Term", "Third Term");
                                    foreach($term_array as $term){
                                        echo "<option>{$term}</option>";
                                    }
                                ?>
                            </select>
                        </div>
                    </div>

                    <div class='col-md-3'>
                        <div class='input-group'>
                            <span class='input-group-addon' id='basic-addon2'>Session</span>
                            <select class='form-control' name='view_fee_payment_session'>
                                <option selected><?php echo $select; ?></option>
                                <?php
                                    $query = " SELECT * FROM `sessions` ";
                                    $run_query = mysqli_query($connection, $query);
                                    if(mysqli_num_rows($run_query) > 0){
                                        while($result = mysqli_fetch_assoc($run_query)){
                                            $all_sessions = $result['sessions'];
                                            echo "<option>{$all_sessions}</option>";
                                        }
                                    }
                                ?>
                            </select>
                        </div>
                    </div>

                    <div class='col-md-1'>
                        <p id='btnsubmit'><input type='submit' name='view_fee_payment_btn' id='submit' value='View' class='btn btn-sm btn-large btn-primary text-center' /></p>
                    </div>
                </div>
            </form>
            
            <?php
                if(isset($_POST['view_fee_payment_btn'])){ //Button to view fee payment details from a particular class
                        $view_fee_payment_class = $_POST['view_fee_payment_class'];
                        $view_fee_payment_term = $_POST['view_fee_payment_term'];
                        $view_fee_payment_session = $_POST['view_fee_payment_session'];

                        if($view_fee_payment_class == $select){
                            echo "<p class='text-danger'><b>Please Select Class</b></p>";
                        }
                        elseif($view_fee_payment_term == $select){
                            echo "<p class='text-danger'><b>Please Select Term</b></p>";
                        }
                        elseif($view_fee_payment_session == $select){
                            echo "<p class='text-danger'><b>Please Select Session</b></p>";
                        }else{
                            $query = " SELECT sum(amount_paid) FROM `fee_payment` WHERE `student_class` = '{$view_fee_payment_class}' AND `fee_term` = '{$view_fee_payment_term}' AND `fee_session` = '{$view_fee_payment_session}' ";
                            $run_query = mysqli_query($connection, $query);

                            if(mysqli_num_rows($run_query) > 0){
                                while($result = mysqli_fetch_assoc($run_query)){
                                    $total_fee = array_sum($result);
                                    $total_fee_paid = number_format($total_fee);
                                }
                            }

                            //Query to display payment details form a particular class
                            $query = " SELECT * FROM `fee_payment` WHERE `student_class` = '{$view_fee_payment_class}' AND `fee_term` = '{$view_fee_payment_term}' AND `fee_session` = '{$view_fee_payment_session}' ";
                            $run_query = mysqli_query($connection, $query);

                        if(mysqli_num_rows($run_query) > 0){
                            $i = 0;
                            echo"
                                <div class='table-responsive noprint'>
                                    <h3 class='text-info bg-success'><span class='text-success'><b>{$view_fee_payment_term}</b></span> Fee Payment Records for <span class='text-success'><b>{$view_fee_payment_class} Students</b></span> in <span class='text-success'><b>{$view_fee_payment_session} Session</b></span></h3>
                                    <table class='table table-bordered'>
                                        <thead class=''>
                                            <tr class='bg-primary'>
                                                <th>S/N</th>
                                                <th>REG NUMBER</th>
                                                <th>NAME</th>
                                                <th>CLASS</th>
                                                <th>STUDENT TYPE</th>
                                                <th>TERM</th>
                                                <th>SESSION</th>
                                                <th class=''>AMOUNT PAID (NGN)</th>
                                                <th class=''>BALANCE (NGN)</th>
                                                <th>TELLER NO</th>
                                                <th>DATE</th>
                                                <th>STATUS</th>
                                                <th>RECEIPT</th>
                                            </tr>
                                        </thead>
                            ";
                            while($result = mysqli_fetch_assoc($run_query)){
                                $i++;
                                $student_id = $result['id'];
                                $student_reg_number = $result['reg_number'];
                                $student_name = $result['student_name'];
                                $student_class = $result['student_class'];
                                $student_type = $result['student_type'];
                                $fee_term = $result['fee_term'];
                                $fee_session = $result['fee_session'];
                                $fee_amount_paid = number_format($result['amount_paid']);
                                $student_balance_owed = number_format($result['student_balance']);
                                $fee_teller_no = $result['teller_no'];
                                $fee_date = $result['date_of_upload'];
                                $fee_payment_status = $result['payment_status'];
                                if($fee_payment_status == "Cleared"){
                                    $payment_status = "<p class='text-success'><b>{$fee_payment_status} <span class='glyphicon glyphicon-ok'></span></b></p>";
                                }
                                elseif($fee_payment_status = "Not Cleared"){
                                    $payment_status = "<p class='text-danger'><b>{$fee_payment_status} <span class='glyphicon glyphicon-remove'></span></b></p>";
                                }

                                echo"
                                    <tbody>
                                        <tr>
                                            <td>{$i}</td>
                                            <td>{$student_reg_number}</td>
                                            <td>{$student_name}</td>
                                            <td>{$student_class}</td>
                                            <td>{$student_type}</td>
                                            <td>{$fee_term}</td>
                                            <td>{$fee_session}</td>
                                            <td class='text-success'><b>{$fee_amount_paid}</b></td>
                                            <td class='text-danger'><b>{$student_balance_owed}</b></td>
                                            <td>{$fee_teller_no}</td>
                                            <td>{$fee_date}</td>
                                            <td><b>{$payment_status}</b></td>
                                            <td>
                                                <form action='' method='POST'>
                                                    <input type='hidden' name='receipt_id' value='{$student_id}' />
                                                    <input type='submit' name='print_receipt' class='btn btn-success btn-xs' value='Print Receipt' />
                                                </form>
                                            </td>
                                        </tr>
                                    </tbody>
                                ";
                            }

                            echo"
                                        <tfooter>
                                            <tr>
                                                <th colspan='7'>Total Fees Recorded</th>
                                                <th>{$total_fee_paid}</th>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                            </tr>
                                        </tfooter>
                                    </table>
                                </div>
                            ";
                        }else{
                            echo "<h4 class='text-danger'><b>No Records</b></h4>";
                        }
                    }
                }
                else{
                    $query = " SELECT * FROM `current_season` ";
                    $run_query = mysqli_query($connection, $query);

                    if(mysqli_num_rows($run_query) == 1){
                        while($result = mysqli_fetch_assoc($run_query)){
                            $current_term = $result['current_term'];
                            $current_session = $result['current_session'];
                        }
                    }

                    $query = " SELECT sum(amount_paid) FROM `fee_payment` ";
                    $run_query = mysqli_query($connection, $query);

                    if(mysqli_num_rows($run_query) > 0){
                        while($result = mysqli_fetch_assoc($run_query)){
                            $total_fee = array_sum($result);
                            $total_fee_paid = number_format($total_fee);
                        }
                    }

                    $query = " SELECT * FROM `fee_payment` WHERE `fee_term` = '{$current_term}' AND `fee_session` = '{$current_session}' ";
                    $run_query = mysqli_query($connection, $query);

                    if(mysqli_num_rows($run_query) > 0){
                        $i = 0;
                        echo"
                            <div class='table-responsive noprint'>
                                <h3 class='text-info bg-success'>All Fee Payment Records for <b>Current Term</b> <span class='text-danger'>({$current_term})</span> and <b>Current Session</b> <span class='text-danger'>({$current_session})</span> </h3>
                                <table class='table table-bordered'>
                                    <thead class=''>
                                        <tr class='bg-info'>
                                            <th>S/N</th>
                                            <th>REG NUMBER</th>
                                            <th>NAME</th>
                                            <th>CLASS</th>
                                            <th>STUDENT TYPE</th>
                                            <th>TERM</th>
                                            <th>SESSION</th>
                                            <th class='text-success'>AMOUNT PAID (NGN)</th>
                                            <th class='text-danger'>BALANCE (NGN)</th>
                                            <th>TELLER NO</th>
                                            <th>DATE</th>
                                            <th>STATUS</th>
                                            <th>RECEIPT</th>
                                        </tr>
                                    </thead>
                        ";

                        while($result = mysqli_fetch_assoc($run_query)){
                            $i++;
                            $payment_id = $result['id'];
                            $student_reg_number = $result['reg_number'];
                            $student_name = $result['student_name'];
                            $student_class = $result['student_class'];
                            $student_type = $result['student_type'];
                            $fee_term = $result['fee_term'];
                            $fee_session = $result['fee_session'];
                            $fee_amount_paid = number_format($result['amount_paid']);
                            $student_balance_owed = number_format($result['student_balance']);
                            $fee_teller_no = $result['teller_no'];
                            $fee_date = $result['date_of_upload'];
                            $fee_payment_status = $result['payment_status'];
                            if($fee_payment_status == "Cleared"){
                                $payment_status = "<p class='text-success'><b>{$fee_payment_status} <span class='glyphicon glyphicon-ok'></span></b></p>";
                            }
                            elseif($fee_payment_status = "Not Cleared"){
                                $payment_status = "<p class='text-danger'><b>{$fee_payment_status} <span class='glyphicon glyphicon-remove'></span></b></p>";
                            }

                            echo"
                                <tbody>
                                    <tr>
                                        <td>{$i}</td>
                                        <td>{$student_reg_number}</td>
                                        <td>{$student_name}</td>
                                        <td>{$student_class}</td>
                                        <td>{$student_type}</td>
                                        <td>{$fee_term}</td>
                                        <td>{$fee_session}</td>
                                        <td class='text-success'><b>{$fee_amount_paid}</b></td>
                                        <td class='text-danger'><b>{$student_balance_owed}</b></td>
                                        <td>{$fee_teller_no}</td>
                                        <td>{$fee_date}</td>
                                        <td><b>{$payment_status}</b></td>
                                        <td>
                                            <form action='' method='POST'>
                                                <input type='hidden' name='receipt_id' value='{$payment_id}' />
                                                <input type='submit' name='print_receipt' class='btn btn-success btn-xs' value='Print Receipt' />
                                            </form>
                                        </td>
                                    </tr>
                                </tbody>
                            ";
                        }

                            echo"
                                <tfooter>
                                    <tr>
                                        <th colspan='7'>Total Fees Recorded</th>
                                        <th>{$total_fee_paid}</th>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                </tfooter>
                            </table>
                        </div>
                        ";
                    }else{
                        echo "<h4 class='text-danger'><b>No Records</b></h4>";
                    }	

                    if(isset($_POST['print_receipt'])){
                        $receipt_id = $_POST['receipt_id'];

                        $query_receipt = " SELECT * FROM `fee_payment` WHERE `id` = '$receipt_id' ";
                        $run_query_receipt = mysqli_query($connection, $query_receipt);

                        if(mysqli_num_rows($run_query_receipt) > 0){
                            while ($result = mysqli_fetch_assoc($run_query_receipt)) {
                                $transaction_id = $result['id'];
                                $_SESSION['transaction'] = $transaction_id;

                                header("Location: accountant_dashboard.php?school_fee_receipt");

                                /*$std_class = $result['student_class'];
                                $std_type = $result['student_type'];
                                $std_name = $result['student_name'];
                                $std_regno = $result['reg_number'];
                                $payment_term = $result['fee_term'];
                                $payment_session = $result['fee_session'];
                                $fee_amount_paid = number_format($result['amount_paid']);
                                $fee_payment_balance = number_format($result['student_balance']);
                                $payment_status = $result['payment_status'];
                                $transaction_date = $result['date_of_upload'];*/
                            }
                        }

                    }

                }
									
            ?>
        </div>
    </div>
</div>