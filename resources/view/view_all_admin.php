<?php
    //////////////// POST ACTION TO DELETE REGISTERED STUDENT FROM A PARTICULAR CLASS, BUT IT'S NOT WORKING FOR NOW //////
    if(isset($_POST['admin_delete_btn'])){
        $delete_id = $_POST['admin_hidden_id'];

        $query = " DELETE FROM `users` WHERE `id` = '{$delete_id}' ";
        $run_query = mysqli_query($connection, $query);

        if($run_query == true){
            $msg = "<p class='text-success'><b>Admin Deleted Successfully</b></p>";
        }else{
            $msg = "<p><b>Error! Could Not Delete Admin Record</b></p>";
        }
    }
?>
 <div class="page-title">
  <div>
    <h1><i class="fa fa-calendar"></i> Admin</h1>
    <p>View all Admin</p>
  </div>
  <div>
    <ul class="breadcrumb">
      <li><a href='modules.php'><i class="fa fa-home fa-lg"></i></a></li>
      <li><a href="#">View all Admin</a></li>
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
                <h4 class='text-center'>All ADMINS</h4>
            </div>
            <div class='panel-body'>
                <?php
                    $query = " SELECT * FROM `users` ";
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
                            $i++;
                            $admin_id = $result['id'];
                            $admin_name = $result['fullname'];
                            $admin_phone = $result['phone'];
                            $admin_email = $result['email'];
                            $admin_address = $result['address'];
                            
                            echo "
                                <tbody>
                                    <tr>
                                        <td>{$i}</td>
                                        <td>{$admin_name}</td>
                                        <td>{$admin_phone}</td>
                                        <td>{$admin_email}</td>
                                        <td>{$admin_address}</td>
                                        <td>
                                            <form method='POST' action=''>
                                                <input type='hidden' name='admin_hidden_id' value='{$admin_id}' />
                                                <input type='submit' name='admin_delete_btn' id='demoSwal' value='Delete' class='btn btn-xs btn-danger' />
                                            </form>
                                        </td>
                                    </tr>
                                </tbody>
                            ";
                        }
                        echo "
                                </table>
                            </div>
                        ";
                    }
                ?>
            </div>
        </div>

    </div>
</div>
