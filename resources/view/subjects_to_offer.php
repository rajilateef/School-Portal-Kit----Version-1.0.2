<div class="page-title">
  <div>
    <h1><i class="fa fa-calendar"></i> Subjects you are to offer</h1>
    <p>The following subjects are the specified subjects for your class</p>
  </div>
  <div>
    <ul class="breadcrumb">
      <li><a href='student_dashboard.php'><i class="fa fa-home fa-lg"></i></a></li>
      <li><a href="#">Subjects to Offer</a></li>
    </ul>
  </div>
</div>
<div class="card">
    <div class='row'>
        <div class='col-xs-12 col-sm-12 col-md-10'>
			<div class = 'panel panel-primary ch'>
                <div class = 'panel-heading'>
                    <h4 class='text-center'>All Subjects To Be Offered By <?php echo "<u>{$student_class}</u>"; ?> Students</h4>
                    <p class='text-center'>Note That You Must Register All Your Subjects For Your Results To Be Out</p>
                </div>
                <?php
                    //////////////// ACTION TO DISPLAY SPECIFIED SUBJECT TO BE OFFERED BY JUNIOR CLASSES ////////////
                    $student_class_arm = substr($student_class, 0, 3);
                    if($student_class_arm === "JSS"){
                        $query = " SELECT * FROM `jss` ";
                        $run_query = mysqli_query($connection, $query);
                        if(mysqli_num_rows($run_query) > 0){
                            $i = 0;
                            echo"
                                <div class='table-responsive panel-body'>
                                    <table class='table table-striped'>
                                        <thead>
                                            <tr>
                                                <th style='font-weight:bold;color:#074778;'>S/N</th>
                                                <th style='font-weight:bold;color:#074778;'>Subject</th>

                                            </tr>
                                        </thead>
                            ";
                            while($result = mysqli_fetch_assoc($run_query)){
                                $i++;
                                $jss_specified_subject = $result['jss_subjects'];

                                echo "
                                    <tr>
                                        <td>{$i}</td>
                                        <td>{$jss_specified_subject}</td>
                                    </tr>
                                ";
                            }
                            echo "
                                    </table>
                                </div>
                            ";
                        }
                    }

                    //////////////// ACTION TO DISPLAY SPECIFIED SUBJECT TO BE OFFERED BY SENIOR CLASSES ////////////
                    if($student_class_arm === "SSS"){
                        $query = " SELECT * FROM `sss` ";
                        $run_query = mysqli_query($connection, $query);
                        if(mysqli_num_rows($run_query) > 0){
                            $i = 0;
                            echo"
                                <div class='table-responsive panel-body'>
                                    <table class='table table-striped'>
                                        <thead>
                                            <tr>
                                                <th style='font-weight:bold;color:#074778;'>S/N</th>
                                                <th style='font-weight:bold;color:#074778;'>Subject</th>

                                            </tr>
                                        </thead>
                            ";
                            while($result = mysqli_fetch_assoc($run_query)){
                                $i++;
                                $sss_specified_subject = $result['sss_subjects'];
                                
                                echo "
                                    <tr>
                                        <td>{$i}</td>
                                        <td>{$sss_specified_subject}</td>
                                    </tr>
                                ";
                            }
                            echo "
                                    </table>
                                </div>
                            ";
                        }
                    }
                ?>
            </div>
        </div>
    </div>
</div>