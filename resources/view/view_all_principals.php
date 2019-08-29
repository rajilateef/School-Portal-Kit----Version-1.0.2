<?php
    //////////////// POST ACTION TO DELETE REGISTERED STUDENT FROM A PARTICULAR CLASS, BUT IT'S NOT WORKING FOR NOW //////
    if(isset($_POST['princi_delete_btn'])){
        $delete_id = $_POST['princi_hidden_id'];

        $query = " DELETE FROM `principal` WHERE `id` = '{$delete_id}' ";
        $run_query = mysqli_query($connection, $query);

        if($run_query == true){
            $msg = "<p class='text-success'><b>Principal Deleted Successfully</b></p>";
        }else{
            $msg = "<p><b>Error! Could Not Delete Principal's Record</b></p>";
        }
    }
?>
 <div class="page-title">
  <div>
    <h1><i class="fa fa-calendar"></i> Principal</h1>
    <p>View all Principals</p>
  </div>
  <div>
    <ul class="breadcrumb">
      <li><a href='modules.php'><i class="fa fa-home fa-lg"></i></a></li>
      <li><a href="#">View all Principals</a></li>
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
                <h4 class='text-center'>All Principals</h4>
            </div>
            <div class='panel-body'>
                <?php
                    $query = " SELECT * FROM `principal` ";
                    $run_query = mysqli_query($connection, $query);
                
                    if(mysqli_num_rows($run_query) > 0){
                        $i = 0;
                        echo "
                            <div class='table-responsive'>
                                <table class='table table-striped'>
                                    <thead>
                                        <tr>
                                            <th>S/N</th>
                                            <th>USERNAME</th>
                                            <th>NAME</th>
                                            <th>PHONE</th>
                                            <th>EMAIL</th>
                                            <th>POSITION</th>
                                            <th>ACTION</th>
                                        </tr>
                                    </thead>
                        ";
                        while($result = mysqli_fetch_assoc($run_query)){
                            $i++;
                            $princi_id = $result['id'];
                            $princi_username = $result['username'];
                            $princi_fname = $result['firstname'];
                            $princi_lname = $result['lastname'];
                            $princi_position = $result['position'];
                            $princi_phone = $result['phone'];
                            $princi_email = $result['email'];
                            echo "
                                <tbody>
                                    <tr>
                                        <td>{$i}</td>
                                        <td>{$princi_username}</td>
                                        <td>{$princi_fname} {$princi_lname}</td>
                                        <td>{$princi_phone}</td>
                                        <td>{$princi_email}</td>
                                        <td>{$princi_position}</td>
                                        <td>
                                            <form method='POST' action=''>
                                                <input type='hidden' name='princi_hidden_id' value='{$princi_id}' />
                                                <input type='submit' name='princi_delete_btn' id='demoSwal' value='Delete' class='btn btn-xs btn-danger' />
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
