<?php
	/////////////// POST ACTION TO UPLOAD INVENTORY RECORDS //////////////////
	if(isset($_POST['inventory_btn'])){
		$inventory_type = $_POST['inventory_type'];
		$inventory_cost = input_checker($_POST['inventory_cost']);
		$inventory_name = input_checker($_POST['inventory_name']);
		$inventory_quantity = input_checker($_POST['inventory_quantity']);
		$inventory_description = input_checker($_POST['inventory_description']);
		
		if($inventory_type == $select){
			$msg = "<p class='text-success'><b>Please Select Inventory Type</b></p>";
		}
		elseif(empty($inventory_cost) || empty($inventory_name) || empty($inventory_quantity) || empty($inventory_description)){
			$msg = "<p class='text-success'><b>No Field Should be Empty</b></p>";
		}else{
			$query = " INSERT INTO `inventory`(`type`, `cost`, `name`, `quantity`, `description`, `date`) 
						VALUES('$inventory_type', '$inventory_cost', '$inventory_name', '$inventory_quantity', '$inventory_description', '$date') ";
			$run_query = mysqli_query($connection, $query);
			
			if($run_query == true){
				$msg = "<p class='text-success'><b>Inventory Details Saved Successfully</b></p>";
			}else{
				$msg = "<p class='text-success'><b>Inventory Details Fail to Save</b></p>";
			}
		}
	}
?>
<?php
    if(isset($_POST['inventory_delete_btn'])){
        $inventory_hidden_id = $_POST['inventory_hidden_id'];
        $query_del_inventory = " DELETE FROM `inventory` WHERE `id` = '{$inventory_hidden_id}' ";
        $run_query_del_inventory = mysqli_query($connection, $query_del_inventory);

        if($run_query_del_inventory == true){
            $msg = "<p class='text-success'><b>Inventory record deleted Successfully</b></p>";
        }else{
            $msg = "<p class='text-success'><b>Inventory record failed delete</b></p>";
        }
    }
?>
<div class='page-title'>
  <div>
    <h1><i class='fa fa-laptop'></i> Manage Inventory</h1>
    <p>Record Stocks and Services</p>
  </div>
  <div>
    <ul class='breadcrumb'>
      <li><a href='accountant_dashboard.php'><i class='fa fa-home fa-lg'></i></a></li>
      <li><a href='#'>Manage Inventory</a></li>
      <li><a href='#'>Record Stocks and Services</a></li>
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
            <h4 class='text-center'>Record Stock/Services</h4>
        </div>
        <div class='panel-body'>
            <form method='POST' action='accountant_dashboard.php?manage_inventory'>
                <div class='input-group'>
                    <span class='input-group-addon' id='basic-addon2'>Type of Service</span>
                    <select class='form-control' name='inventory_type'>
                        <option selected><?php echo $select; ?></option>
                        <option>Items</option>
                        <option>Services</option>
                    </select>
                </div>
                <br />

                <div class='input-group'>
                    <span class='input-group-addon' id='basic-addon2'>Cost</span>
                    <input type='text' name='inventory_cost' placeholder='Enter the total cost price of item' class='form-control' />
                </div>
                <br />

                <div class='input-group'>
                    <span class='input-group-addon' id='basic-addon2'>Name</span>
                    <input type='text' name='inventory_name' placeholder='Enter the name of item/services rendered e.g painting, chairs, tables' class='form-control' />
                </div>
                <br />

                <div class='input-group'>
                    <span class='input-group-addon' id='basic-addon2'>Quantity</span>
                    <input type='text' name='inventory_quantity' placeholder='Quantity of item purchased or times of services rendered in number' class='form-control' />
                </div>
                <br />

                <div class='input-group'>
                    <span class='input-group-addon' id='basic-addon2'>Description</span>
                    <textarea rows='1' name='inventory_description' required class='form-control' placeholder='...' aria-describedby='basic-addon2'></textarea>
                </div>
                <br />

                <p id='btnsubmit'><input type='submit' name='inventory_btn' id='submit' value='Save Inventory' class='btn btn-large btn-primary text-center' /></p>
            </form>
                

            <?php
                $query = " SELECT * FROM `inventory` ";
                $run_query = mysqli_query($connection, $query);

                if(mysqli_num_rows($run_query) > 0){
                    $i = 0;
                    echo"
                        <div class='table-responsive'>
                            <h4 class='text-center'>View Inventory Records</h4>
                            <table class='table table-striped'>
                                <thead class=''>
                                    <tr class='bg-primary'>
                                        <th>S/N</th>
                                        <th>TYPE</th>
                                        <th>NAME</th>
                                        <th>QUANTITY</th>
                                        <th>COST</th>
                                        <th>TOTAL COST</th>
                                        <th>DESCRIPTION</th>
                                        <th>DATE</th>
                                        <th>ACTION</th>
                                    </tr>
                                </thead>
                    ";
                    while($result = mysqli_fetch_assoc($run_query)){
                        $i++;
                        $inventory_id = $result['id'];
                        $inventory_type = $result['type'];
                        $inventory_name = $result['name'];
                        $inventory_cost = number_format($result['cost']);
                        $inventoryCost = $result['cost'];
                        $inventory_quantity = $result['quantity'];
                        $totalCost = $inventoryCost * $inventory_quantity;
                        $total_cost = number_format($totalCost);
                        $inventory_description = $result['description'];
                        $date = $result['date'];
                        $month = substr($date, 3, 3);
                        $year = substr($date, 7, 4);

                        echo"
                            <tbody>
                                <tr>
                                    <td>{$i}</td>
                                    <td>{$inventory_type}</td>
                                    <td>{$inventory_name}</td>
                                    <td>{$inventory_quantity}</td>
                                    <td>{$inventory_cost}</td>
                                    <td>{$total_cost}</td>
                                    <td>{$inventory_description}</td>
                                    <td>{$date}</td>
                                    <td>
                                        <form method='POST' action=''>
                                            <input type='hidden' name='inventory_hidden_id' value='{$inventory_id}' />
                                            <input type='submit' name='inventory_delete_btn' value='Delete' class='btn btn-xs btn-danger' />
                                        </form>
                                    </td>
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