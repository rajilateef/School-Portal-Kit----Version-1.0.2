<?php
    /////////////// POST ACTION TO DELETE ADMINISTRATIVE INFORMATION ///////////////////
    if(isset($_POST['delete_admin_btn'])){
        $admin_id = $_POST['admin_id'];

        $query = " DELETE FROM `administratives` WHERE `id` = {$admin_id} ";
        $run_query =mysqli_query($connection, $query);

        if($run_query == true){
            $msg = "<p class='text-success'><b>Admin Info Deleted Successfully</b></p>";
        }else{
            $msg = "<p><b>Error! Could Not Delete Record</b></p>";
        }
    }

?>

 <div class='page-title'>
  <div>
    <h1><i class='fa fa-laptop'></i> Administrative Manager</h1>
    <p>View School Info</p>
  </div>
  <div>
    <ul class='breadcrumb'>
      <li><i class='fa fa-home fa-lg'></i></li>
      <li><a href='#'>Administrative Manager</a></li>
      <li><a href='#'>View School Info </a></li>
    </ul>
  </div>
</div>

<div class="card">
    <?php
        if(isset($msg)){
            echo $msg;
        }
    ?>
    <div class = 'row'>
        <div class = 'col-xs-12 col-sm-12 col-md-12'>
            <div class = 'panel panel-primary ch'>
                <div class = 'panel-heading'>
                    <h4 class = 'txt'>VIEW SCHOOL INFO</h4>
                </div>
                <br/>
                
                <div class = 'panel-body'>
                    <?php
                        ////////// POST ACTION TO VIEW ALL THE UPLOADED ADMINISTRATIVE INFORMATION ////////////
                        $query = " SELECT * FROM `administratives` ";
                        $run_query = mysqli_query($connection, $query);

                        if(mysqli_num_rows($run_query) > 0){
                            $i = 0;
                            echo"
                            <div class='table-responsive'>
                                <table class='table table-hover table-bordered'>
                                    <thead>
                                        <tr>
                                            <th>S/N</th>
                                            <th>SCHOOL NAME</th>
                                            <th>SCHOOL ADDRESS</th>
                                            <th>LOGO</th>
                                            <th>SCHOOL STAMP</th>
                                            <th>ACTION</th>
                                        </tr>
                                    </thead>
                                ";
                            while($result = mysqli_fetch_assoc($run_query)){
                                $i++;
                                $administratives_id = $result['id'];
                                $admin_name = $result['school_name'];
                                $admin_motto = $result['school_motto'];
                                $admin_logo = $result['school_logo'];
                                $admin_stamp = $result['school_stamp'];
                                //echo "<img src='$admin_logo' />";
                                echo"
                                    <tbody>
                                        <tr>
                                            <td>{$i}</td>
                                            <td>{$admin_name}</td>
                                            <td>{$admin_motto}</td>
                                            <td><img class='img-responsive' src='{$admin_logo}' /></td>
                                            <td><img class='img-responsive' src='{$admin_stamp}' /></td>
                                            <td>
                                                <form method='POST' action=''>
                                                    <input type='hidden' name='admin_id' value='{$administratives_id}' />
                                                    <input type='submit' name='delete_admin_btn' value='Delete' class='btn btn-xs btn-danger' />
                                                </form>
                                            </td>
                                        </tr>
                                    </tbody>
                                ";
                            }
                            echo"</table>
                            </div>";
                        }else{
                            echo "<p class='text-danger'><b>Sorry! No admin info records found</b></p>";
                        }
                    ?>
                </div>
            </div>
        </div>
    </div>
</div>
