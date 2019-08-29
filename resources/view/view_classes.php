<?php
    ///////////////// POST ACTION TO DELETE UPLOADED CLASSES ////////////
    if(isset($_POST['delete_class_btn'])){
        $hide_class_del = $_POST['hide_class_del'];

        $query = " DELETE FROM `classes` WHERE `id` = '{$hide_class_del}' ";
        $run_query = mysqli_query($connection, $query);

        if($run_query == true){
            $msg = "<p class='text-success'><b>Class Deleted Successfully</b></p>";
        }else{
            $msg = "<p><b>Error! Could Not Delete Record</b></p>";
        }
    }
?>
 <div class='page-title'>
  <div>
    <h1><i class='fa fa-laptop'></i> Class Management</h1>
    <p>View Added Classes</p>
  </div>
  <div>
    <ul class='breadcrumb'>
      <li><i class='fa fa-home fa-lg'></i></li>
      <li><a href='#'>Class Management</a></li>
      <li><a href='#'>View Added Classes </a></li>
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
                    <h4 class = 'txt'>VIEW ADDED CLASSES</h4>
                </div>
                
                <div class = 'panel-body'>
                    <?php
                        ///////////// POST ACTION TO SHOW ALL ADDED CLASS IF THE BUTTON IS CLICKED ////////////
                            $query = " SELECT * FROM `classes` ";
                            $run_query = mysqli_query($connection, $query);
                            if(mysqli_num_rows($run_query) > 0){
                                $i = 0;
                                echo"
                                <div class='table-responsive'>
                                    <table class='table table table-hover table-bordered'>
                                        <thead>
                                            <tr>
                                                <th>S/N</th>
                                                <th>Classes</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>";
                                while($result = mysqli_fetch_assoc($run_query)){
                                    $i++;
                                    $class_id = $result['id'];
                                    $all_class = $result['classes'];
                                    echo"
                                            <tbody>
                                                <tr>
                                                    <td>{$i}</td>
                                                    <td>$all_class</td>
                                                    <td>
                                                        <form method='POST' action=''>
                                                            <input type='hidden' name='hide_class_del' value='{$class_id}' />
                                                            <input type='submit' name='delete_class_btn' value='Delete' class='btn btn-xs btn-danger' />
                                                        </form>
                                                    </td>
                                                </tr>
                                            </tbody>
                                    ";
                                }
                                echo"</table>
                                </div>";
                            }
                    ?>
                </div>
            </div>
        </div>
    </div>
</div>
