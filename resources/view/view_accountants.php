<?php
    //////////////// POST ACTION TO DELETE REGISTERED ACCOUNTANTS ///
    if(isset($_POST['accountant_delete_btn'])){
        $delete_id = $_POST['accountant_hidden_id'];

        $query = " DELETE FROM `accountants` WHERE `id` = '{$delete_id}' ";
        $run_query = mysqli_query($connection, $query);

        if($run_query == true){
            $msg = "<p class='text-success'><b>Accountant Deleted Successfully</b></p>";
        }else{
            $msg = "<p><b>Error! Could Not Delete Accountant Record</b></p>";
        }
    }
?>

<div class="page-title">
  <div>
    <h1><i class="fa fa-calendar"></i> Accountant</h1>
    <p>View all accountants</p>
  </div>
  <div>
    <ul class="breadcrumb">
      <li><a href='modules.php'><i class="fa fa-home fa-lg"></i></a></li>
      <li><a href="#">View accountants</a></li>
    </ul>
  </div>
</div>
<div class="card">
    <?php
        if(isset($msg)){
            echo $msg;
        }
    ?>
    <div class="table-scrol">
        <div class = 'panel panel-primary ch'>
            <div class = 'panel-heading'>
                <h4 class='text-center'>All Accountants</h4>
            </div>
            <div class='panel-body'>
                <?php
                    $query = " SELECT * FROM `accountants` ";
                    $run_query = mysqli_query($connection, $query);
                    
                    if(mysqli_num_rows($run_query) > 0){
                        $i = 0;
                        echo "
                            <div class='table-responsive'>
                                <table class='table table-striped'>
                                    <thead>
                                        <tr>
                                            <th>S/N</th>
                                            <th>NAME</th>
                                            <th>PHONE</th>
                                            <th>EMAIL</th>
                                            <th>ADDRESS</th>
                                            <th>ACTION</th>
                                        </tr>
                                    </thead>
                        ";
                        while($result = mysqli_fetch_assoc($run_query)){
                            $accountant_id = $result['id'];
                            $account_name = $result['fullname'];
                            $accountant_phone = $result['phone'];
                            $accountant_email = $result['email'];
                            $accountant_address = $result['address'];
                            
                            echo "
                                <tbody>
                                    <tr>
                                        <td>{$i}</td>
                                        <td>{$account_name}</td>
                                        <td>{$accountant_phone}</td>
                                        <td>{$accountant_email}</td>
                                        <td>{$accountant_address}</td>
                                        <td>
                                            <form method='POST' action=''>
                                                <input type='hidden' name='accountant_hidden_id' value='{$accountant_id}' />
                                                <input type='submit' name='accountant_delete_btn' id='demoSwal' value='Delete' class='btn btn-xs btn-danger' />
                                            </form>
                                        </td>
                                    </tr>
                                </tbody>
                            ";
                        }
                    }
                ?>
            </div>
        </div>
    </div>
</div>
