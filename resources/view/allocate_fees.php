<?php
	/////////////// POST ACTION TO ALLOCATE SCHOOL FEES FOR A PARTICULAR CLASS /////////////////////
	if(isset($_POST['allocate_fees_btn'])){
		$allocate_fees_class = $_POST['allocate_fees_class'];
		$allocate_student_type = $_POST['allocate_student_type'];
		$allocate_fees_amount = inject_checker($connection, $_POST['allocate_fees_amount']);
		
		if($allocate_fees_class == $select){
			$msg = "<p class='text-danger'><b>Please Select Class for Fee Allocation</b></p>";
		}
		elseif($allocate_student_type == $select){
			$msg = "<p class='text-danger'><b>Please Student Type for Fee Allocation</b></p>";
		}
		elseif(empty($allocate_fees_amount)){
			$msg = "<p class='text-danger'><b>You Have not Type the Amount You Wish to Allocate to {$allocate_fees_class}</b></p>";
		}else{
			$query = " SELECT * FROM `fee_allocation` WHERE `allocate_class` = '{$allocate_fees_class}' AND `student_type` = '{$allocate_student_type}' ";
			$run_query = mysqli_query($connection, $query);
			
			if(mysqli_num_rows($run_query) == 0){
				$query = " INSERT INTO `fee_allocation` (`allocate_class`, `student_type`, `fee_amount`, `date_allocated`) 
							VALUES('$allocate_fees_class', '$allocate_student_type', '$allocate_fees_amount', '$date') ";
				$run_query = mysqli_query($connection, $query);
				
				if($run_query == true){
					$msg = "<p class='text-success'><b>Fee Allocation for {$allocate_fees_class} is Successful</b></p>";
				}else{
					$msg = "<p class='text-danger'><b>Fee Allocation for {$allocate_fees_class} Failed</b></p>";
				}
			}elseif(mysqli_num_rows($run_query) > 0){
				$query = " UPDATE `fee_allocation` SET 
							`allocate_class` = '$allocate_fees_class',
							`student_type` = '$allocate_student_type',
							`fee_amount` = '$allocate_fees_amount',
							`date_allocated` = '$date' WHERE `allocate_class` = '{$allocate_fees_class}' AND `student_type` = '{$allocate_student_type}' ";
				$run_query = mysqli_query($connection, $query);
				
				if($run_query == true){
					$msg = "<p class='text-success'><b>Fee Allocation for {$allocate_fees_class} has been Updated</b></p>";
				}else{
					$msg = "<p class='text-danger'><b>Fee Allocation for {$allocate_fees_class} Failed to Update</b></p>";
				}
			}
		}
	}
?>

<div class='page-title'>
  <div>
    <h1><i class='fa fa-laptop'></i> Fee Management</h1>
    <p>Allocate Fees</p>
  </div>
  <div>
    <ul class='breadcrumb'>
      <li><a href='modules.php'><i class='fa fa-home fa-lg'></i></a></li>
      <li><a href='#'>Fee Management</a></li>
      <li><a href='#'>Allocate Student Fees</a></li>
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
            <h4 class='text-center'>Allocate Fees to a Class</h4>
        </div>
        <div class='panel-body'>
            <form method='POST' action=''>
                <div class="row">
                    <div class="col-md-3">
                        <div class='input-group'>
                            <span class='input-group-addon' id='basic-addon2'>Fee Class</span>
                            <select class='form-control' name='allocate_fees_class'>
                                <option selected><?php echo $select ?></option>
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
                            <select class='form-control' name='allocate_student_type'>
                                <option selected><?php echo $select ?></option>
                                <option>New Student</option>
                                <option>Old Student</option>
                                <option>New Student Scholarship</option>
                                <option>Old Student Scholarship</option>
                            </select>
                        </div>
                    </div>
                    
                    <div class="col-md-5">
                        <div class='input-group'>
                            <span class='input-group-addon' id='basic-addon2'>Allocate Amount</span>
                            <input type='text' name='allocate_fees_amount' placeholder='Enter Fees Amount' class='form-control' />
                        </div>
                    </div>
                </div> 
                <br />

                <p id='btnsubmit'><input type='submit' name='allocate_fees_btn' id='submit' value='Save Class Fees' class='btn btn-large btn-primary text-center' /></p>
            </form>
                

            <?php
                $query = " SELECT * FROM `fee_allocation` ORDER BY `allocate_class` ";
                $run_query = mysqli_query($connection, $query);

                if(mysqli_num_rows($run_query) > 0){
                    $i = 0;
                    echo"
                        <div class='table-responsive'>
                            <h4 class='text-center'>View Allocated Fees for each Class</h4>
                            <table class='table table-bordered table-hover'>
                                <thead class=''>
                                    <tr class='bg-primary'>
                                        <th>S/N</th>
                                        <th>CLASS</th>
                                        <th>STUDENT TYPE</th>
                                        <th>FEE AMOUNT</th>
                                        <th>DATE</th>
                                    </tr>
                                </thead>
                    ";
                    while($result = mysqli_fetch_assoc($run_query)){
                        $i++;
                        $fee_class = $result['allocate_class'];
                        $fee_student_type = $result['student_type'];
                        $fee_amount_paid = number_format($result['fee_amount']);
                        $fee_date = $result['date_allocated'];

                        echo"
                            <tbody>
                                <tr>
                                    <td>{$i}</td>
                                    <td>{$fee_class}</td>
                                    <td>{$fee_student_type}</td>
                                    <td>{$fee_amount_paid}</td>
                                    <td>{$fee_date}</td>
                                </tr>
                            </tbody>
                        ";
                    }
                    echo"
                            </table>
                        </div>
                    ";
                }else{
                    echo "<h4 class='text-danger'><b>No Records</b></h4>";
                }
            ?>
            
        </div>
    </div>
</div>