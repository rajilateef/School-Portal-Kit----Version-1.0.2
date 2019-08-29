<div class='page-title'>
  <div>
    <h1><i class='fa fa-laptop'></i> Result Management</h1>
    <p>Excel Result Upload</p>
  </div>
  <div>
    <ul class='breadcrumb'>
      <li><a href='modules.php'><i class='fa fa-home fa-lg'></i></a></li>
      <li><a href='#'>Result Management</a></li>
      <li><a href='#'>Excel Result Upload</a></li>
    </ul>
  </div>
</div>

<div class='card'>
   <?php
        if(isset($msg)){
            echo $msg;
        }
    ?>
    <div class='panel panel-primary'>
        <div class='panel-heading'>
            <h4 class='text-center'>Export Excel Result Score Sheet</h4>
        </div>
        <div class='panel-body'>
            <p class="text-danger">Export Excel Sheet and Save As CSV before upload</p>
            <form method='POST' action='PHPExcel.php'>
                <div class='row'>
                    <div class='col-md-3'>
                        <div class='input-group'>
                            <span class='input-group-addon' id='basic-addon2'>Class:</span>
                            <select class='form-control' name='class'>
                                <option selected ><?php echo $select; ?></option>
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
                        <br />
                    </div>

                    <div class='col-md-3'>
                        <div class='input-group'>
                            <span class='input-group-addon' id='basic-addon2'>Term:</span>
                            <select class='form-control' name='term'>
                                <option selected ><?php echo $select; ?></option>
                                <?php
                                    $term_array = array("First Term", "Second Term", "Third Term");

                                    foreach($term_array as $term){
                                        echo "<option>{$term}</option><br>";
                                    }
                                ?>
                            </select>
                        </div>
                        <br />
                    </div>

                    <div class='col-md-3'>
                        <div class='input-group'>
                            <span class='input-group-addon' id='basic-addon2'>Session:</span>
                            <select class='form-control' name='session'>
                                    <?php
                                        ///////////// POST ACTION TO DISPLAY CURRENT SESSION //////////////
                                        $query = " SELECT * FROM `current_season` ";
                                        $run_query = mysqli_query($connection, $query);
                                        if(mysqli_num_rows($run_query) == 1){
                                            while($result = mysqli_fetch_assoc($run_query)){
                                                $show_current_session = $result['current_session'];
                                                echo"
                                                    <option>{$show_current_session}</option>
                                                ";
                                            }
                                        }
                                    ?>
                            </select>
                        </div>
                        <br />
                    </div>
                    
                    <div class='col-md-3'>
                        <div class='input-group'>
                            <span class='input-group-addon' id='basic-addon2'>Subject:</span>
                            <select class='form-control' name='subject'>
                            <?php
                                $query = " SELECT * FROM `school_subjects` ";
                                $run_query = mysqli_query($connection, $query);

                                if(mysqli_num_rows($run_query) > 0){
                                    while($result = mysqli_fetch_assoc($run_query)){
                                        $subjects = $result['subjects'];
                                        echo "
                                            <option>{$subjects}</option>
                                        ";
                                    }
                                }
                            ?>
                            </select>
                        </div>
                        <br />
                    </div>
                    
                    <div class='col-md-3'>
                        <input type='submit' name='export_result_btn' value='EXPORT RESULT SHEET' class='btn btn-primary' />
                    </div>
                </div>
            </form>
            <br />
        </div>
    </div>
    <div class='panel panel-primary'>
        <div class='panel-heading'>
            <h4 class='text-center'>Uplaod Excel Result Sheet</h4>
        </div>
        <div class='panel-body'>
            <p class="text-danger">Make sure that the file for upload is a CSV file</p>
            <form method='POST' action='result_upload_excel.php' enctype="multipart/form-data">
                <div class='row'>
                   <div class='col-md-3'>
                        <div class='input-group'>
                            <span class='input-group-addon' id='basic-addon2'>CSV/Excel File:</span>
                            <input type='file' name='uploadResult' class='form-control' required />
                        </div>
                        <br />
                    </div>
                   
                    <div class='col-md-3'>
                        <div class='input-group'>
                            <span class='input-group-addon' id='basic-addon2'>Class:</span>
                            <select class='form-control' name='class'>
                                <option selected ><?php echo $select; ?></option>
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
                        <br />
                    </div>

                    <div class='col-md-3'>
                        <div class='input-group'>
                            <span class='input-group-addon' id='basic-addon2'>Term:</span>
                            <select class='form-control' name='term'>
                                <option selected ><?php echo $select; ?></option>
                                <?php
                                    $term_array = array("First Term", "Second Term", "Third Term");

                                    foreach($term_array as $term){
                                        echo "<option>{$term}</option><br>";
                                    }
                                ?>
                            </select>
                        </div>
                        <br />
                    </div>

                    <div class='col-md-3'>
                        <div class='input-group'>
                            <span class='input-group-addon' id='basic-addon2'>Session:</span>
                            <select class='form-control' name='session'>
                                    <?php
                                        ///////////// POST ACTION TO DISPLAY CURRENT SESSION //////////////
                                        $query = " SELECT * FROM `current_season` ";
                                        $run_query = mysqli_query($connection, $query);
                                        if(mysqli_num_rows($run_query) == 1){
                                            while($result = mysqli_fetch_assoc($run_query)){
                                                $show_current_session = $result['current_session'];
                                                echo"
                                                    <option>{$show_current_session}</option>
                                                ";
                                            }
                                        }
                                    ?>
                            </select>
                        </div>
                        <br />
                    </div>
                </div>
                <div class='row'>
                   <div class='col-md-3'>
                        <div class='input-group'>
                            <span class='input-group-addon' id='basic-addon2'>Subject:</span>
                            <select class='form-control' name='subject'>
                            <?php
                                $query = " SELECT * FROM `school_subjects` ";
                                $run_query = mysqli_query($connection, $query);

                                if(mysqli_num_rows($run_query) > 0){
                                    while($result = mysqli_fetch_assoc($run_query)){
                                        $subjects = $result['subjects'];
                                        echo "
                                            <option>{$subjects}</option>
                                        ";
                                    }
                                }
                            ?>
                            </select>
                        </div>
                        <br />
                    </div>
                    
                    <div class='col-md-2'>
                        <input type='submit' name='result_upload_excel_btn' value='UPLOAD RESULT' class='btn btn-primary' />
                    </div>
                </div>
            </form>
            <br />
        </div>
    </div>
</div>