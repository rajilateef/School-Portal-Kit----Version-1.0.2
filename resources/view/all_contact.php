<div class='page-title'>
  <div>
    <h1><i class='fa fa-laptop'></i> Generate Contact Numbers</h1>
    <p>Get all phone numbers</p>
  </div>
  <div>
    <ul class='breadcrumb'>
      <li><a href='modules.php'><i class='fa fa-home fa-lg'></i></a></li>
      <li><a href='#'>Generate Phone Numbers</a></li>
      <li><a href='#'>Get all phone numbers</a></li>
    </ul>
  </div>
</div>

<div class='card'>
    <div class="row">
        <div class="col-md-6">
            <div class='panel panel-primary'>
                <div class='panel-heading'>
                    <h4 class='text-center'>Generate Parent Contacts</h4>
                </div>
                <div class='panel-body'>
                    <form method='POST' action=''>
                        <div class='row'>
                            <div class='col-md-8'>
                                <div class='input-group'>
                                    <span class='input-group-addon' id='basic-addon2'>Student Class:</span>
                                    <select class='form-control' name='contact_class'>
                                        <option selected ><?php echo $select; ?></option>
                                        <option>All</option>
                                            <?php
                                                $query = " SELECT * FROM `classes` ";
                                                $run_query = mysqli_query($connection, $query);
                                                if(mysqli_num_rows($run_query) > 0){
                                                    while($result = mysqli_fetch_assoc($run_query)){
                                                        $attendance = $result['classes'];
                                                        echo"
                                                            <option>{$attendance}</option>
                                                        ";
                                                    }
                                                }
                                            ?>
                                    </select>
                                </div>
                            </div>
                            <div class='col-md-2'>
                                <input type='submit' name='generate_contact_btn' value='SHOW CONTACT' class='btn btn-primary' />
                            </div>

                        </div>
                    </form>
                    <br />
                </div>
            </div>

            <?php
                if(isset($_POST['generate_contact_btn'])){
                    $contact_class = $_POST['contact_class'];

                    if($contact_class === "All"){
                        $query = " SELECT mother_phone,father_phone FROM students ";
                        $run_query = mysqli_query($connection, $query);
                
                        if(mysqli_num_rows($run_query) > 0){
                            $i = 0;
                            while($result = mysqli_fetch_assoc($run_query)){
                                $i++;
                                $mothers_contacts = $result['mother_phone'];
                                $father_contacts = $result['father_phone'];
                                
                                echo "{$mothers_contacts}, {$father_contacts}, ";
                            }
                        }                        
                    }else{
                        $query = " SELECT mother_phone,father_phone FROM students WHERE class = '$contact_class' ";
                        $run_query = mysqli_query($connection, $query);
                    
                        if(mysqli_num_rows($run_query) > 0){
                            $i = 0;
                            while($result = mysqli_fetch_assoc($run_query)){
                                $i++;
                                $mothers_contacts = $result['mother_phone'];
                                $father_contacts = $result['father_phone'];
                                
                                echo "{$mothers_contacts}, {$father_contacts}, ";
                            }
                        }
                    }
                }
            ?>

        </div>

        <div class="col-md-6">
            <div class='panel panel-primary'>
                <div class='panel-heading'>
                    <h4 class='text-center'>Generate Teachers Contacts</h4>
                </div>
                <div class='panel-body'>
                    <form method='POST' action=''>
                        <div class='row'>
                            <div class='col-md-2'>
                                <input type='submit' name='generate_teachers_contact_btn' value='SHOW CONTACT' class='btn btn-primary' />
                            </div>
                        </div>
                    </form>
                    <br />
                </div>
            </div>

            <?php
                if(isset($_POST['generate_teachers_contact_btn'])){

                    $query = " SELECT phone FROM teachers ";
                    $run_query = mysqli_query($connection, $query);
            
                    if(mysqli_num_rows($run_query) > 0){
                        $i = 0;
                        while($result = mysqli_fetch_assoc($run_query)){
                            $i++;
                            $teachers_contacts = $result['phone'];
                            
                            echo "{$teachers_contacts}, ";
                        }
                    }                        
                }
            ?>

        </div>
    </div>
</div>