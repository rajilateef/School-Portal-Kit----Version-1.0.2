
<?php
    if(isset($_POST['print_student_slip'])){
        $print_id = $_POST['student_hidden_id'];
        
        $query = " SELECT * FROM `students` WHERE `id` = '{$print_id}' ";
        $run_query = mysqli_query($connection, $query);
        
        if(mysqli_num_rows($run_query) == 1){
            while($result = mysqli_fetch_assoc($run_query)){
                $student_id = $result['id'];
                $_SESSION['slip_id'] = $student_id;
                
                redirect_to("modules.php?slip");
            }
        }
    }
?>

 <div class='page-title'>
  <div>
    <h1><i class='fa fa-laptop'></i> Teachers Profile</h1>
    <p>View Teachers Profile</p>
  </div>
  <div>
    <ul class='breadcrumb'>
      <li><i class='fa fa-home fa-lg'></i></li>
      <li><a href='#'>Teachers Profile</a></li>
      <li><a href='#'>View Teachers Profile</a></li>
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
                    <h4 class = 'txt'>VIEW TEACHERS PROFILE</h4>
                </div>
                <br/>
                
                <div class = 'panel-body'>
                    <?php
                        $query = " SELECT * FROM `teachers` ORDER BY `firstname` ASC ";
                        $run_query = mysqli_query($connection, $query);
                        if($run_query == true){
                            if(mysqli_num_rows($run_query) > 0){
                                $i = 0;
                                echo"
                                    <div class='table-responsive'>
                                        <table class='table table-hover table-bordered'>
                                            <thead>
                                                <tr>
                                                    <th>S/N</th>
                                                    <th>NAME</th>
                                                    <th>USERNAME</th>
                                                    <th>SEX</th>
                                                    <th>TEACHING</th>
                                                    <th>EMPLOYED ON</th>
                                                    <th>POSITION</th>
                                                    <th>PHONE</th>
                                                    <th>EMAIL</th>
                                                    <th>STATUS</th>
                                                    <!--<th>ACTION</th>-->
                                                </tr>
                                            </thead>
                                        ";
                                while($result = mysqli_fetch_array($run_query)){
                                    $i++;
                                    $teacher_id = $result['id'];
                                    $teacher_firstname = $result['firstname'];
                                    $teacher_lastname = $result['lastname'];
                                    $teacher_subject = $result['subject_to_teach'];
                                    $teacher_username = $result['username'];
                                    $phone = $result['phone'];
                                    $sex = ucfirst($result['sex']);
                                    $position = $result['teacher_position'];
                                    $date_employed = $result['employment_date'];
                                    $email = $result['email'];
                                    $status = $result['status'];
                                    $name = ucwords("{$teacher_firstname} {$teacher_lastname}");
                                    echo"
                                        <tr>
                                            <td>{$i}</td>
                                            <td>{$name}</td>
                                            <td>{$teacher_username}</td>
                                            <td>{$sex}</td>
                                            <td>{$teacher_subject}</td>
                                            <td>{$date_employed}</td>
                                            <td>{$position}</td>
                                            <td>{$phone}</td>
                                            <td>{$email}</td>
                                            <td class='text-success'><b>{$status}</b></td>
                                            <!--<td>
                                                <form method='POST' action=''>
                                                    <input type='hidden' name='student_hidden_id' value='{$teacher_id}' />
                                                    <input type='submit' name='edit_btn' value='Edit' class='btn btn-xs btn-primary' />
                                                    <input type='submit' name='student_delete_btn' id='demoSwal' value='Delete' class='btn btn-xs btn-danger' />
                                                    <input type='submit' name='print_student_slip' class='btn btn-xs btn-info' value='slip' />
                                                </form>
                                            </td>-->
                                        </tr>
                                    ";
                                }
                                echo"</table>
                                </div>";
                            }else{
                                $reg_msg = "<h4 class='text-danger'><b>!!! No Records Found in {$reg_no_class}</b></h4>";
                                echo $reg_msg;
                            }
                        }
                    ?>
                </div>
            </div>
        </div>
    </div>
</div>