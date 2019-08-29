
<div class="page-title hidden-print">
  <div>
    <h1><i class="fa fa-money"></i> View Fees by Session</h1>
  </div>
</div>
<div class="card">
    <div class = 'row'>
        <div class = 'col-xs-12 col-sm-12 col-md-12 shift'>
            <div class = 'panel panel-primary ch'>
                <div class = 'panel-heading'>
                    <h4 class = 'txt'>View Fees for a particular Session</h4>
                </div><br/>
                <div class = 'panel-body'>
                    <form method='POST' action='' class='noprint'>
                        <div class='row'>
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
                                <p id='btnsubmit'><input type='submit' name='view_fee_payment_btn' id='submit' value='View' class='btn btn-primary text-center' /></p>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <?php
        if(isset($_POST['view_fee_payment_btn'])){ //Button to view fee payment details from a particular class
            $view_fee_payment_session = $_POST['view_fee_payment_session'];

            
            if($view_fee_payment_session == $select){
                echo "<p class='text-danger'><b>Please Select Session</b></p>";
            }else{
                $query = " SELECT sum(amount_paid) FROM `fee_payment` WHERE `fee_session` = '{$view_fee_payment_session}' ";
                $run_query = mysqli_query($connection, $query);

                if(mysqli_num_rows($run_query) > 0){
                    while($result = mysqli_fetch_assoc($run_query)){
                        $total_fee = array_sum($result);
                        $total_fee_paid = number_format($total_fee);
                    }
                }

                //Query to display payment details from a particular session
                $query = " SELECT * FROM `fee_payment` WHERE `fee_session` = '{$view_fee_payment_session}' ";
                $run_query = mysqli_query($connection, $query);

                if(mysqli_num_rows($run_query) > 0){
                    $i = 0;
                    echo"
                        <div class='table-responsive noprint'>
                            <h3 class='text-center text-info'>Fee Payment Records for <span class='text-success'><b>{$view_fee_payment_session} Session</b></span></h3>
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
                                        <!--<th>RECEIPT</th>-->
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
                                    <!--<td>
                                        <form action='' method='POST'>
                                            <input type='hidden' name='receipt_id' value='{$student_id}' />
                                            <input type='submit' name='print_receipt' class='btn btn-success btn-xs' value='Print Receipt' />
                                        </form>
                                    </td>-->
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
    ?>
    
</div>