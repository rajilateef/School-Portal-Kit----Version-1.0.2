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
        <div class="col-md-2">
            <div class='panel panel-primary'>
                <div class='panel-heading'>
                    <h4 class='text-center'>Fathers Numbers</h4>
                </div>
                <div class='panel-body'>
                    <?php
                        $query = " SELECT father_phone FROM students ";
                        $run_query = mysqli_query($connection, $query);
                    
                        if(mysqli_num_rows($run_query) > 0){
                            $i = 0;
                            while($result = mysqli_fetch_assoc($run_query)){
                                $i++;
                                $fathers_contacts = $result['father_phone'];
                                
                                echo "<p class='text-center'><b>{$fathers_contacts}</b></p>";
                            }
                        }
                    ?>
                </div>
            </div>
        </div>
        
        <div class="col-md-2">
            <div class='panel panel-primary'>
                <div class='panel-heading'>
                    <h4 class='text-center'>Mothers Numbers</h4>
                </div>
                <div class='panel-body'>
                    <?php
                        $query = " SELECT mother_phone FROM students ";
                        $run_query = mysqli_query($connection, $query);
                    
                        if(mysqli_num_rows($run_query) > 0){
                            $i = 0;
                            while($result = mysqli_fetch_assoc($run_query)){
                                $i++;
                                $mothers_contacts = $result['mother_phone'];
                                
                                echo "<p class='text-center'><b>{$mothers_contacts}</b></p>";
                            }
                        }
                    ?>
                </div>
            </div>
        </div>
        
        <div class="col-md-2">
            <div class='panel panel-primary'>
                <div class='panel-heading'>
                    <h4 class='text-center'>Sponsors Numbers</h4>
                </div>
                <div class='panel-body'>
                    <?php
                        $query = " SELECT sponsor_phone FROM students ";
                        $run_query = mysqli_query($connection, $query);
                    
                        if(mysqli_num_rows($run_query) > 0){
                            $i = 0;
                            while($result = mysqli_fetch_assoc($run_query)){
                                $i++;
                                $sponsors_contacts = $result['sponsor_phone'];
                                
                                echo "<p class='text-center'><b>{$sponsors_contacts}</b></p>";
                            }
                        }
                    ?>
                </div>
            </div>
        </div>
        
        <div class="col-md-4">
            <div class='panel panel-primary'>
                <div class='panel-heading'>
                    <h4 class='text-center'>Nearest Contact</h4>
                </div>
                <div class='panel-body'>
                    <?php
                        $query = " SELECT nearest_contact1, nearest_contact2, nearest_contact3 FROM students ";
                        $run_query = mysqli_query($connection, $query);
                    
                        if(mysqli_num_rows($run_query) > 0){
                            $i = 0;
                            while($result = mysqli_fetch_assoc($run_query)){
                                $i++;
                                $nearest_contact1 = $result['nearest_contact1'];
                                $nearest_contact2 = $result['nearest_contact2'];
                                $nearest_contact3 = $result['nearest_contact3'];
                                
                                echo "
                                    <p class='text-center'>
                                        <b>
                                            {$nearest_contact1}
                                            {$nearest_contact2}
                                            {$nearest_contact3}
                                        </b>
                                    </p>
                                ";
                            }
                        }
                    ?>
                </div>
            </div>
        </div>
    </div>
</div>