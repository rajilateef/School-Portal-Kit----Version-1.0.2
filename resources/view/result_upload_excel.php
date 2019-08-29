
<?php
    error_reporting(0);
    require_once("../../public/connection.php");
	require_once("../../public/functions.php");

    $date = date('d-M-Y');
    $select = "--select--";
	if(isset($_POST["result_upload_excel_btn"])){
		$class = htmlentities(trim(mysqli_real_escape_string($connection, $_POST['class'])));
		$term = htmlentities(trim(mysqli_real_escape_string($connection, $_POST['term'])));
		$session = htmlentities(trim(mysqli_real_escape_string($connection, $_POST['session'])));
		$subject = htmlentities(trim(mysqli_real_escape_string($connection, $_POST['subject'])));
        
        if($class === $select || $term === $select || $session === $select || $subject === $select){
            echo "<script type=\"text/javascript\" style='background-color:red;'>
                    alert(\"Sorry: All fields must be selected.\");
                    window.location = \"modules.php?excel_result_upload\"
                    </script>
                ";
        }else{
            if(!empty($_FILES["uploadResult"]["tmp_name"])){
                $fileName = explode(".",$_FILES["uploadResult"]["name"]);
                if($fileName[1]=="csv"){
                    $query = "SELECT * FROM results1 WHERE class = '{$class}' AND subjects = '{$subject}' AND term = '{$term}' AND session = '{$session}' ";
                    $run_query = mysqli_query($connection, $query);

                    if(mysqli_num_rows($run_query) > 0){
                        echo "<script type=\"text/javascript\" style='background-color:red;'>
                                alert(\"Sorry: Result has been Uploaded for this Particular Class and Term in this Session.\");
                                window.location = \"modules.php\"
                                </script>";
                    }else{
                        echo $filename = $_FILES["uploadResult"]["tmp_name"];

                        if($_FILES["uploadResult"]["size"] > 0){

                            $openFile = fopen($filename, "r");
                            $number = 0;
                            while($dataFile = fgetcsv($openFile, 3000, ",")){
                                $number++;

                                if($number != 1){
                                    $subject_total = $dataFile[7] + $dataFile[8] + $dataFile[9];
                                    //It wiil insert a row to our subject table from our csv file`
                                    $sql = "INSERT INTO results1(`class`,`term`,`session`,`reg_number`,`name`,`subjects`, `ca`, `project`, `exam`, `subject_total`, `date_of_upload`) VALUES ('{$dataFile[1]}','{$dataFile[2]}','{$dataFile[3]}','{$dataFile[4]}','{$dataFile[5]}','{$dataFile[6]}', '{$dataFile[7]}','{$dataFile[8]}','{$dataFile[9]}','{$subject_total}','{$date}')";
                                    $run_query = mysqli_query($connection, $query);

                                    //we are using mysql_query function. it returns a resource on true else False on error
                                    $result = mysqli_query( $connection, $sql );
                                    if(! $result ){
                                        echo "<script type=\"text/javascript\">
                                        alert(\"Invalid File:Please Upload CSV File.\");
                                        window.location = \"modules.php\"
                                        </script>";
                                    }else{
                                        $i = 1;
                                        $query1 = "SELECT * FROM `results1` WHERE `subjects` = '{$subject}' AND `class` = '{$class}' AND `term` = '{$term}' AND `session` = '{$session}' ORDER BY `subject_total` DESC ";
                                        $run_query1 = mysqli_query($connection, $query1);

                                        while($outputs = mysqli_fetch_assoc($run_query1)){

                                            $subject_t = $outputs['subject_total'];


                                            $sql = "UPDATE results1 SET subject_rank = '{$i}' WHERE subject_total = '{$subject_t}'";
                                            $run_query2 = mysqli_query($connection, $sql);
                                            $i++;

                                        }
                                        /*if($run_query2 == true){
                                            echo "<p class='text-success'><b><span class='glyphicon glyphicon-ok'></span> Upload Successful</b></p>";
                                        }else{
                                            echo "<p class='text-danger'><b><span class='glyphicon glyphicon-remove'></span>Upload Failed! Try Again</b></p>";
                                        }*/
                                    }
                                }
                            }
                            fclose($file);
                            //throws a message if data successfully imported to mysql database from excel file
                            echo "<script type=\"text/javascript\">
                            alert(\"Result CSV File has been successfully Imported.\");
                            window.location = \"modules.php\"
                            </script>";
                            //close of connection
                            mysqli_close($connectio);
                        }
                    }
                }else{
                    echo "
                        <script type=\"text/javascript\" style='background-color:red;'>
                            alert(\"Sorry: The file must be a csv file.\");
                            window.location = \"modules.php\"
                        </script>
                    ";
                }
            }else{
                echo "
                    <script type=\"text/javascript\" style='background-color:red;'>
                        alert(\"Sorry: You must choose a file.\");
                        window.location = \"modules.php\"
                    </script>
                ";
            }
        }
		
	}
?> 