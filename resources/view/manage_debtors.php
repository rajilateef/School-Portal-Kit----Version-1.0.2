<?php
	///////////// POST ACTION TO UPLOAD DEBTORS DETAILS INTO DB /////////////////
	if(isset($_POST['debtors_btn'])){
		$debtors_name = inject_checker($connection, ucwords($_POST['debtors_name']));
		$debtors_amount = inject_checker($connection, $_POST['debtors_amount']);
		$debtors_phone = inject_checker($connection, $_POST['debtors_phone']);
		$debtors_deadline = inject_checker($connection, ucwords($_POST['debtors_deadline']));
		
		if(empty($debtors_name) || empty($debtors_amount) || empty($debtors_phone) || empty($debtors_deadline)){
			$msg = "<p class='text-danger'><b>No Field Should be Empty</b></p>";
		}else{
			$query = " INSERT INTO `debtors`(`name`, `amount`, `phone`, `deadline`, `date`) 
						VALUES('$debtors_name', '$debtors_amount', '$debtors_phone', '$debtors_deadline', '$date') ";
			$run_query = mysqli_query($connection, $query);
			
			if($run_query == true){
				$msg = "<p class='text-success'><b>Debtor Details Saved Successfully</b></p>";
			}else{
				$msg = "<p class='text-danger'><b>Debtor Details Fail to Save</b></p>";
			}
		}
	}
?>
<?php
    if(isset($_POST['debtors_delete_btn'])){
        $debtors_hidden_id = $_POST['debtors_hidden_id'];
        $query1 = " DELETE FROM `debtors` WHERE `id` = '{$debtors_hidden_id}' ";
        $run_query1 = mysqli_query($connection, $query1);

        if($run_query1 == true){
            $msg = "<p class='text-success'><b>Debtors record deleted Successfully</b></p>";
        }else{
            $msg = "<p class='text-danger'><b>Debtors record failed to delete</b></p>";
        }
    }
?>
<div class='page-title'>
  <div>
    <h1><i class='fa fa-laptop'></i> Manage Debtors</h1>
    <p>Record Debtors</p>
  </div>
  <div>
    <ul class='breadcrumb'>
      <li><a href='accountant_dashboard.php'><i class='fa fa-home fa-lg'></i></a></li>
      <li><a href='#'>Manage Debtors</a></li>
      <li><a href='#'>Record Debtors</a></li>
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
            <h4 class='text-center'>Record Debtors Details</h4>
        </div>
        <div class='panel-body'>
            <form method='POST' action=''>
                <div class='input-group'>
                    <span class='input-group-addon' id='basic-addon2'>Debtors Name</span>
                    <input type='text' name='debtors_name' placeholder='Enter Debtors name' class='form-control' />
                </div>
                <br />

                <div class='input-group'>
                    <span class='input-group-addon' id='basic-addon2'>Amount Owed</span>
                    <input type='text' name='debtors_amount' placeholder='Enter how much debt (Amount)' class='form-control' />
                </div>
                <br />

                <div class='input-group'>
                    <span class='input-group-addon' id='basic-addon2'>Phone Number</span>
                    <input type='text' name='debtors_phone' placeholder='Enter Debtors Phone Number' class='form-control' />
                </div>
                <br />

                <div class='input-group'>
                    <span class='input-group-addon' id='basic-addon2'>Deadline</span>
                    <input type='text' name='debtors_deadline' placeholder='Enter deadline given to debtor' class='form-control' />
                </div>
                <br />

                <p id='btnsubmit'><input type='submit' name='debtors_btn' id='submit' value='Save Expenses Made' class='btn btn-large btn-primary text-center' /></p>
            </form>
                

            <?php
                $query = " SELECT sum(amount) FROM `debtors` ";
                $run_query = mysqli_query($connection, $query);

                if(mysqli_num_rows($run_query) > 0){
                    while($result = mysqli_fetch_assoc($run_query)){
                        $total_debt = array_sum($result);
                        $total_debt_owed = number_format($total_debt);
                    }
                }

                $query = " SELECT * FROM `debtors` ";
                $run_query = mysqli_query($connection, $query);

                if(mysqli_num_rows($run_query) > 0){
                    $i = 0;
                    echo"
                        <div class='table-responsive'>
                            <h4 class='text-center'>View Debtors Records</h4>
                            <table class='table table-striped'>
                                <thead class=''>
                                    <tr class='bg-primary'>
                                        <th>S/N</th>
                                        <th>NAME</th>
                                        <th>AMOUNT</th>
                                        <th>PHONE</th>
                                        <th>DEADLINE</th>
                                        <th>DATE</th>
                                        <th>MONTH</th>
                                        <th>YEAR</th>
                                        <th>ACTION</th>
                                    </tr>
                                </thead>
                    ";
                    while($result = mysqli_fetch_assoc($run_query)){
                        $i++;
                        $debt_id = $result['id'];
                        $debtor_name = $result['name'];
                        $debtor_phone = $result['phone'];
                        $debt_amount = number_format($result['amount']);
                        $deadline = $result['deadline'];
                        $date = $result['date'];
                        $month = substr($date, 3, 3);
                        $year = substr($date, 7, 4);

                        echo"
                            <tbody>
                                <tr>
                                    <td>{$i}</td>
                                    <td>{$debtor_name}</td>
                                    <td>{$debt_amount}</td>
                                    <td>{$debtor_phone}</td>
                                    <td>{$deadline}</td>
                                    <td>{$date}</td>
                                    <td>{$month}</td>
                                    <td>{$year}</td>
                                    <td>
                                        <form method='POST' action=''>
                                            <input type='hidden' name='debtors_hidden_id' value='{$debt_id}' />
                                            <input type='submit' name='debtors_delete_btn' value='Delete' class='btn btn-xs btn-danger' />
                                        </form>
                                    </td>
                                </tr>
                            </tbody>
                        ";
                    }
                    echo"
                                <tfooter>
                                    <tr>
                                        <th colspan='2'>Total Debts Amount</th>
                                        <th>{$total_debt_owed}</th>
                                        <td></td>
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