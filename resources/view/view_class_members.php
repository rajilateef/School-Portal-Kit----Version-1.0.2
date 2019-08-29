<div class="page-title">
  <div>
    <h1><i class="fa fa-calendar"></i>Class Members</h1>
    <p>View all your class mates</p>
  </div>
  <div>
    <ul class="breadcrumb">
      <li><a href='student_dashboard.php'><i class="fa fa-home fa-lg"></i></a></li>
      <li><a href="#">Class Members</a></li>
    </ul>
  </div>
</div>

<div class="card">
    <?php
        if(isset($msg)){
            echo $msg;
        }
    ?>
    <div class='row'>
        <div class='col-xs-12 col-sm-12 col-md-12'>
			<div class='panel panel-primary'>
                <div class='panel-heading'>
                    <h4 class='log-text'>The following are your classmates including yourself</h4>
                </div>
                <div class='panel-body'>
                    <div class='row'>
					    <?php
                            //////////// POST ACTION TO DISPLAY CLASS MEMBERS ////////////////
                            $query = " SELECT * FROM `students` WHERE `class` = '{$student_class}' LIMIT 6 ";
                            $run_query = mysqli_query($connection, $query);

                            if(mysqli_num_rows($run_query) > 0){
                                $i = 0;
                                echo "
                                    <div class='table-responsive'>
                                        <table class='table table-striped table-hover'>
                                            <thead>
                                                <tr>
                                                    <th>S/N</th>
                                                    <th class='text-center'>NAME</th>
                                                    <th class='text-center'>IMAGE</th>
                                                </tr>
                                            </thead>
                                ";
                                while($result = mysqli_fetch_assoc($run_query)){
                                    $i++;
                                    $pix = $result['passport'];
                                    $firstname = ucfirst($result['firstname']);
                                    $lastname = ucfirst($result['lastname']);
                                    $othername = ucfirst($result['othername']);

                                    echo"
                                        <tbody>
                                            <tr>
                                                <td>{$i}</td>
                                                <td class='text-center'><b>{$surname} {$lastname} {$othername}</b></td>
                                                <td><center><img src='{$pix}' class='img-responsive img-rounded' style='width: 10%;' /></center></td>
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
    </div>
</div>