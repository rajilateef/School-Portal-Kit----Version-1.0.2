<?php
    if(isset($_POST['add_class_btn'])){
        //////// POST ACTION TO ADD A NEW CLASS INTO THE DATABASE //////////////
        $add_class = inject_checker($connection, strtoupper($_POST['add_class']));

        if(empty($add_class)){
            echo "<p class='text-danger'><b>Please Type the Class You Want to Add</b></p>";
        }else{
            $query = " SELECT * FROM `classes` WHERE `classes` = '{$add_class}' ";
            $run_query = mysqli_query($connection, $query);
            if(mysqli_num_rows($run_query) > 0){
                echo "<p class='text-danger'><b>Error: {$add_class} Class Already Exist</b></p>";
            }else{
                $query = " INSERT INTO `classes`(`classes`, `date_added`) VALUES('$add_class', '$date') ";
                $run_query = mysqli_query($connection, $query);

                if($run_query == true){
                    $msg = " <p class='text-success'><b>New Class Successfully Added</b></p>";
                }else{
                    $msg = "<p class='text-danger'><b>Addition of New Class Failed</b></p>";
                }
            }
        }
    }
?>
 <div class='page-title'>
  <div>
    <h1><i class='fa fa-laptop'></i> Class Management</h1>
    <p>Add New Class</p>
  </div>
  <div>
    <ul class='breadcrumb'>
      <li><i class='fa fa-home fa-lg'></i></li>
      <li><a href='#'>Class Managemant</a></li>
      <li><a href='#'>Add New Class </a></li>
    </ul>
  </div>
</div>

<div class='card'>
    <?php
        if(isset($msg)){
            echo $msg;
        }
    ?>
    <form action='' method='POST'>
        <div class = 'panel panel-primary ch'>
            <div class = 'panel-heading'>					
                <h4 class='text-center'>Add New Class</h4>
            </div>
            <div class = 'panel-body'>
                <div class='row'>
                    <div class='col-xs-12 col-sm-12 col-md-12'>
                        <table class='table table-striped'>
                            <tr>
                                <td>Add New Class</td>
                                <td>
                                    <input name='add_class' type='text' name='lastname' placeholder='Type New Class e.g (JSS1A, SSS2B)' class='form-control' value = '' required>
                                </td>
                            </tr>
                        </table>
                            <div class='col-xs-12 col-sm-12 col-md-6'>
                            </div>
                            <div class='col-xs-12 col-sm-12 col-md-6'>
                                <button name='add_class_btn' class='btn btn-primary' style='border-radius:10px;' name='submit_btn' type='submit'>Add It</button>
                            </div>
                            <br><br>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>