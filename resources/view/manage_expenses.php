<?php
	//////////// POST ACTION TO UPLOAD EXPENSES DETAILS INTO DB ///////////////////
	if(isset($_POST['expenses_btn'])){
		$expenses_paid_to = inject_checker($connection, ucwords($_POST['expenses_paid_to']));
		$expenses_paid_for = inject_checker($connection, ucfirst($_POST['expenses_paid_for']));
		$expenses_amount = inject_checker($connection, $_POST['expenses_amount']);
		$expenses_phone = inject_checker($connection, $_POST['expenses_phone']);
		
		if(empty($expenses_paid_to) || empty($expenses_paid_for) || empty($expenses_amount) || empty($expenses_phone)){
			$msg = "No Field Should be Empty";
		}else{
			$query = " INSERT INTO `expenses`(`paid_to`, `paid_for`, `amount_paid`, `phone`, `date`) 
						VALUES('$expenses_paid_to', '$expenses_paid_for', '$expenses_amount', '$expenses_phone', '$date') ";
			$run_query = mysqli_query($connection, $query);
			
			if($run_query == true){
				$msg = "<p class='text-success'><b>Expenses Saved Successfully</b></p>";
			}else{
				$msg = "<p class='text-danger'><b>Expenses Fail to Save</b></p>";
			}
		}
	}
?>
<?php
    if(isset($_POST['expenses_delete_btn'])){
        $expenses_hidden_id = $_POST['expenses_hidden_id'];
        $query_delete = " DELETE FROM `expenses` WHERE `id` = '{$expenses_hidden_id}' ";
        $run_query_delete = mysqli_query($connection, $query_delete);

        if($run_query_delete == true){
            $msg = "<p class='text-success'><b>Expenses record deleted Successfully</b></p>";
        }else{
            $msg = "<p class='text-danger'><b>Expenses record failed to delete</b></p>";
        }
    }
?>

<div class='page-title'>
  <div>
    <h1><i class='fa fa-laptop'></i> Manage Expenses</h1>
    <p>Record Expenses</p>
  </div>
  <div>
    <ul class='breadcrumb'>
      <li><a href='accountant_dashboard.php'><i class='fa fa-home fa-lg'></i></a></li>
      <li><a href='#'>Manage Expenses</a></li>
      <li><a href='#'>Record Expenses</a></li>
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
            <h4 class='text-center'>Record Expenses</h4>
        </div>
        <div class='panel-body'>
            <form method='POST' action=''>
                <div class='input-group'>
                    <span class='input-group-addon' id='basic-addon2'>Paid to</span>
                    <input type='text' name='expenses_paid_to' placeholder='Who did you pay?' class='form-control' />
                </div>
                <br />

                <div class='input-group'>
                    <span class='input-group-addon' id='basic-addon2'>Paid for</span>
                    <input type='text' name='expenses_paid_for' placeholder='What are you paying for?' class='form-control' />
                </div>
                <br />

                <div class='input-group'>
                    <span class='input-group-addon' id='basic-addon2'>Amount Spent</span>
                    <input type='text' name='expenses_amount' placeholder='How much did you pay?' class='form-control' />
                </div>
                <br />

                <div class='input-group'>
                    <span class='input-group-addon' id='basic-addon2'>Phone Number</span>
                    <input type='text' name='expenses_phone' placeholder='Enter Phone Number of who you paid' class='form-control' />
                </div>
                <br />

                <p id='btnsubmit'><input type='submit' name='expenses_btn' id='submit' value='Save Expenses Made' class='btn btn-large btn-primary text-center' /></p>
            </form>
                

            <?php
                $query = " SELECT sum(amount_paid) FROM `expenses` ";
                $run_query = mysqli_query($connection, $query);

                if(mysqli_num_rows($run_query) > 0){
                    while($result = mysqli_fetch_assoc($run_query)){
                        $total_expenses = array_sum($result);
                        $total_expenses_paid = number_format($total_expenses);
                    }
                }

                $query = " SELECT * FROM `expenses` ";
                $run_query = mysqli_query($connection, $query);

                if(mysqli_num_rows($run_query) > 0){
                    $i = 0;
                    echo"
                        <div class='table-responsive'>
                            <h3 class='text-center'>View Expenses Records</h3>
                            <table class='table table-bordered'>
                                <thead class=''>
                                    <tr class='bg-primary'>
                                        <th>S/N</th>
                                        <th>RECEIVER</th>
                                        <th>REASON</th>
                                        <th>AMOUNT</th>
                                        <th>PHONE</th>
                                        <th>DATE</th>
                                        <th>MONTH</th>
                                        <th>YEAR</th>
                                        <th>ACTION</th>
                                    </tr>
                                </thead>
                    ";
                    while($result = mysqli_fetch_assoc($run_query)){
                        $i++;
                        $expenses_id = $result['id'];
                        $receiver = $result['paid_to'];
                        $reason = $result['paid_for'];
                        $amount_spent = number_format($result['amount_paid']);
                        $receiver_phone = $result['phone'];
                        $date_spent = $result['date'];
                        $month = substr($date_spent, 3, 3);
                        $year = substr($date_spent, 7, 4);

                        echo"
                            <tbody>
                                <tr>
                                    <td>{$i}</td>
                                    <td>{$receiver}</td>
                                    <td>{$reason}</td>
                                    <td>{$amount_spent}</td>
                                    <td>{$receiver_phone}</td>
                                    <td>{$date_spent}</td>
                                    <td>{$month}</td>
                                    <td>{$year}</td>
                                    <td>
                                        <form method='POST' action=''>
                                            <input type='hidden' name='expenses_hidden_id' value='{$expenses_id}' />
                                            <input type='submit' name='expenses_delete_btn' value='Delete' class='btn btn-xs btn-danger' />
                                        </form>
                                    </td>
                                </tr>
                            </tbody>
                        ";
                    }
                    echo"
                                <tfooter>
                                    <tr>
                                        <th colspan='3'>Total Amount Spent</th>
                                        <th>{$total_expenses_paid}</th>
                                        <td></td>
                                        <td></td>
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
            ?>
            
        </div>
    </div>
</div>