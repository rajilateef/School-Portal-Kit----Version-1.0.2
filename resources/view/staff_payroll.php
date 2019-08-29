<?php
	//////////////// POST ACTION TO DECLARE STAFF PAYROLL ///////////////////
	if(isset($_POST['staff_payroll_btn'])){
		$staff_payroll_name = inject_checker($connection, ucwords($_POST['staff_payroll_name']));
		$staff_payroll_salary = inject_checker($connection, $_POST['staff_payroll_salary']);
		
		if(empty($staff_payroll_name) || empty($staff_payroll_salary)){
			$msg = "<p class='text-danger'><b>No Field Should be Empty</b></p>";
		}else{
			$query = " INSERT INTO `staff_payroll`(`staff_name`, `salary`, `date`) 
						VALUES('$staff_payroll_name', '$staff_payroll_salary', '$date') ";
			$run_query = mysqli_query($connection, $query);
			
			if($run_query == true){
				$msg = "<p class='text-success'><b>Staff Details Saved Successfully</b></p>";
			}else{
				$msg = "<p class='text-danger'><b>Staff Details Fail to Save</b></p>";
			}
		}
	}
?>

<?php
    //Action to delete from the staff payroll
    if(isset($_POST['payroll_delete_btn'])){
        $payroll_hidden_id = $_POST['payroll_hidden_id'];
        $query_del_payroll = " DELETE FROM `staff_payroll` WHERE `id` = '{$payroll_hidden_id}' ";
        $run_query_del_payroll = mysqli_query($connection, $query_del_payroll);

        if($run_query_del_payroll == true){
            $msg = "<p class='text-success'><b>Payroll record deleted Successfully</b></p>";
        }else{
            $msg = "<p class='text-danger'><b>Payroll record delete</b></p>";
        }
    }
?>

<div class='page-title'>
  <div>
    <h1><i class='fa fa-laptop'></i> Staff Payroll</h1>
    <p>Record Staff Payments</p>
  </div>
  <div>
    <ul class='breadcrumb'>
      <li><a href='accountant_dashboard.php'><i class='fa fa-home fa-lg'></i></a></li>
      <li><a href='#'>Staff Payroll</a></li>
      <li><a href='#'>Record Staff Payments</a></li>
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
            <h4 class='text-center'>Add New Staff to Payroll</h4>
        </div>
        <div class='panel-body'>
            <form method='POST' action='accountant_dashboard.php?staff_payroll'>
                <div class='row'>
                    <div class='col-md-5'>
                        <div class='input-group'>
                            <span class='input-group-addon' id='basic-addon2'>Staff Name</span>
                            <input type='text' name='staff_payroll_name' placeholder='Enter Staff Name' class='form-control' />
                        </div>
                    </div>

                    <div class='col-md-5'>
                        <div class='input-group'>
                            <span class='input-group-addon' id='basic-addon2'>Salary #</span>
                            <input type='text' name='staff_payroll_salary' placeholder='Enter Staff Salary' class='form-control' />
                        </div>
                    </div>

                    <div class='col-md-2'>
                        <p id='btnsubmit'><input type='submit' name='staff_payroll_btn' id='submit' value='Save' class='btn btn-large btn-primary text-center' /></p>
                    </div>
                </div>
            </form>
                

            <?php
                $query = " SELECT sum(salary) FROM `staff_payroll` ";
                $run_query = mysqli_query($connection, $query);

                if(mysqli_num_rows($run_query) > 0){
                    while($result = mysqli_fetch_assoc($run_query)){
                        $total_salary = array_sum($result);
                        $total_salary_per_month = number_format($total_salary);
                    }
                }

                $query = " SELECT * FROM `staff_payroll` ";
                $run_query = mysqli_query($connection, $query);

                if(mysqli_num_rows($run_query) > 0){
                    $i = 0;
                    echo"
                        <div class='table-responsive'>
                            <h4 class='text-center'>View Staff Payroll</h4>
                            <table class='table table-bordered'>
                                <thead class=''>
                                    <tr class='bg-primary'>
                                        <th>S/N</th>
                                        <th>STAFF NAME</th>
                                        <th>SALARY (NGN)</th>
                                        <th>DATE</th>
                                        <th>ACTION</th>
                                    </tr>
                                </thead>
                    ";
                    while($result = mysqli_fetch_assoc($run_query)){
                        $i++;
                        $staff_id = $result['id'];
                        $staff_name = $result['staff_name'];
                        $staff_salary = number_format($result['salary']);
                        $date = $result['date'];
                        $month = substr($date, 3, 3);
                        $year = substr($date, 7, 4);

                        echo"
                            <tbody>
                                <tr>
                                    <td>{$i}</td>
                                    <td>{$staff_name}</td>
                                    <td>{$staff_salary}</td>
                                    <td>{$date}</td>
                                    <td>
                                        <form method='POST' action=''>
                                            <input type='hidden' name='payroll_hidden_id' value='{$staff_id}' />
                                            <input type='submit' name='payroll_delete_btn' value='Delete' class='btn btn-xs btn-danger' />
                                        </form>
                                    </td>
                                </tr>
                            </tbody>
                        ";
                    }
                    echo"		<tfooter>
                                    <tr>
                                        <th colspan='2'>Total Staff Salaries Per Month</th>
                                        <th>{$total_salary_per_month}</th>
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