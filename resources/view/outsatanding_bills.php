
<div class='page-title'>
  <div>
    <h1><i class='fa fa-laptop'></i> Fee Management</h1>
    <p>Outstanding Bills</p>
  </div>
  <div>
    <ul class='breadcrumb'>
      <li><a href='accountant_dashboard.php'><i class='fa fa-home fa-lg'></i></a></li>
      <li><a href='#'>Fee Management</a></li>
      <li><a href='#'>Outstanding Bills</a></li>
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
            <h4 class='text-center'>Outstanding Bills (View Student that are owing)</h4>
        </div>
        <div class='panel-body'>
            <form method='POST' action=''>
                <div class='row'>
                    <div class='col-md-4'>
                        <div class='input-group'>
                            <span class='input-group-addon' id='basic-addon2'>Class</span>
                            <select class='form-control' name='outstanding_bills_class'>
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
                            <select class='form-control' name='outstanding_bills_term'>
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
                            <select class='form-control' name='outstanding_bills_session'>
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
                        <p id='btnsubmit'><input type='submit' name='outstanding_bills_btn' id='submit' value='View' class='btn btn-sm btn-large btn-primary text-center' /></p>
                    </div>
                </div>
            </form>
                

            <?php
                if(isset($_POST['outstanding_bills_btn'])){
                    $outstanding_bills_class = $_POST['outstanding_bills_class'];
                    $outstanding_bills_term = $_POST['outstanding_bills_term'];
                    $outstanding_bills_session = $_POST['outstanding_bills_session'];

                    if($outstanding_bills_class == $select){
                        echo "<p class='text-danger'><b>Please Select Class</b></p>";
                    }
                    elseif($outstanding_bills_term == $select){
                        echo "<p class='text-danger'><b>Please Select Term</b></p>";
                    }
                    elseif($outstanding_bills_session == $select){
                        echo "<p class='text-danger'><b>Please Select Session</b></p>";
                    }else{
                        $not_cleared = "Not Cleared";
                        $query = " SELECT sum(student_balance) FROM `fee_payment` WHERE `payment_status` = '{$not_cleared}' AND `student_class` = '{$outstanding_bills_class}' AND `fee_term` = '{$outstanding_bills_term}' AND `fee_session` = '{$outstanding_bills_session}' ";
                        $run_query = mysqli_query($connection, $query);

                        if(mysqli_num_rows($run_query) > 0){
                            while($result = mysqli_fetch_assoc($run_query)){
                                $total_fee = array_sum($result);
                                $total_outstanding_fee = number_format($total_fee);
                            }
                        }

                        $query = " SELECT * FROM `fee_payment` WHERE `payment_status` = '{$not_cleared}' AND `student_class` = '{$outstanding_bills_class}' AND `fee_term` = '{$outstanding_bills_term}' AND `fee_session` = '{$outstanding_bills_session}' ";
                        $run_query = mysqli_query($connection, $query);

                        if(mysqli_num_rows($run_query) > 0){
                            $i = 0;
                            echo"
                                <div class='table-responsive'>
                                    <h3>Outstanding School Fee Records for <span class='text-danger'><b>{$outstanding_bills_class} Students</b></span> in <span class='text-danger'><b>{$outstanding_bills_term}</b></span> and <span class='text-danger'><b>{$outstanding_bills_session}</b></span> Session</h3>
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
                                                <th>AMOUNT PAID (NGN)</th>
                                                <th>BALANCE (NGN)</th>
                                                <th>TELLER NO</th>
                                                <th>DATE</th>
                                                <th>STATUS</th>
                                            </tr>
                                        </thead>
                            ";
                            while($result = mysqli_fetch_assoc($run_query)){
                                $i++;
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
                                        </tr>
                                    </tbody>
                                ";
                            }
                            echo"
                                        <tfooter>
                                            <tr>
                                                <th colspan='4'>Total Outstanding Bills</th>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <th>{$total_outstanding_fee}</th>
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
                }else{
                    $not_cleared = "Not Cleared";
                    $query = " SELECT sum(student_balance) FROM `fee_payment` WHERE `payment_status` = '{$not_cleared}' ";
                    $run_query = mysqli_query($connection, $query);

                    if(mysqli_num_rows($run_query) > 0){
                        while($result = mysqli_fetch_assoc($run_query)){
                            $total_fee = array_sum($result);
                            $total_outstanding_fee = number_format($total_fee);
                        }
                    }

                    $query = " SELECT * FROM `fee_payment` WHERE `payment_status` = '{$not_cleared}' ";
                    $run_query = mysqli_query($connection, $query);

                    if(mysqli_num_rows($run_query) > 0){
                        $i = 0;
                        echo"
                            <div class='table-responsive'>
                                <h3 class='text-info'><b>All Outstanding Fee Payment Records</b></h3>
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
                                        </tr>
                                    </thead>
                        ";
                        while($result = mysqli_fetch_assoc($run_query)){
                            $i++;
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
                                    </tr>
                                </tbody>
                            ";
                        }
                        echo"
                                    <tfooter>
                                        <tr>
                                            <th colspan='4'>Total Outstanding Bills</th>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <th>{$total_outstanding_fee}</th>
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
            ?>
            
        </div>
    </div>
</div>