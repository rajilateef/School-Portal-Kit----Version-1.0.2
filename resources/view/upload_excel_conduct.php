
<?php
    error_reporting(0);
    require_once("../../public/connection.php");
	require_once("../../public/functions.php");

    $date = date('d-M-Y');
    $select = "--select--";
    
	if(isset($_POST["upload_excel_conduct_btn"])){
		$class = htmlentities(trim(mysqli_real_escape_string($connection, $_POST['class'])));
		$term = htmlentities(trim(mysqli_real_escape_string($connection, $_POST['term'])));
		$session = htmlentities(trim(mysqli_real_escape_string($connection, $_POST['session'])));
        
        if($class === $select || $term === $select || $session === $select){
            echo "<script type=\"text/javascript\" style='background-color:red;'>
                    alert(\"Sorry: All fields must be selected.\");
                    window.location = \"modules.php?upload_conducts\"
                    </script>
                ";
        }else{
            if(!empty($_FILES["excelConduct"]["tmp_name"])){
                $fileName = explode(".",$_FILES["excelConduct"]["name"]);
                if($fileName[1]=="csv"){
                    $query = "SELECT * FROM behavioral WHERE class = '{$class}' AND term = '{$term}' AND session = '{$session}' ";
                    $run_query = mysqli_query($connection, $query);

                    if(mysqli_num_rows($run_query) > 0){
                        echo "<script type=\"text/javascript\" style='background-color:red;'>
                                alert(\"Sorry: This particular Behavoiral record has been registered for this Class, Term and Session.\");
                                window.location = \"modules.php?upload_conducts\"
                                </script>";
                    }else{
                        echo $filename = $_FILES["excelConduct"]["tmp_name"];

                        if($_FILES["excelConduct"]["size"] > 0){

                            $openFile = fopen($filename, "r");
                            $number = 0;
                            while($dataFile = fgetcsv($openFile, 3000, ",")){
                                $number++;

                                if($number != 1){
                                    //It wiil insert a row to our subject table from our csv file`
                                    $sql = "INSERT INTO behavioral(`reg_number`,`name`,`class`,`term`,`session`,`hand_writting`,`musical_skills`,`sports`,`attentiveness`,`attitude_to_work`,`health`,`politeness`,`date`) VALUES ('{$dataFile[1]}','{$dataFile[2]}','{$dataFile[3]}','{$dataFile[4]}','{$dataFile[5]}','{$dataFile[6]}','{$dataFile[7]}','{$dataFile[8]}','{$dataFile[9]}','{$dataFile[10]}','{$dataFile[11]}','{$dataFile[12]}','{$date}')";
                                    $run_query = mysqli_query($connection, $query);

                                    //we are using mysql_query function. it returns a resource on true else False on error
                                    $result = mysqli_query( $connection, $sql );
                                    if(! $result ){
                                        echo "<script type=\"text/javascript\">
                                        alert(\"Invalid File:Please Upload CSV File.\");
                                        window.location = \"modules.php?upload_conducts\"
                                        </script>";
                                    }else{

                                    }
                                }
                            }
                            fclose($file);
                            //throws a message if data successfully imported to mysql database from excel file
                            echo "<script type=\"text/javascript\">
                            alert(\"Behavioral CSV File has been successfully Imported.\");
                            window.location = \"modules.php?upload_conducts\"
                            </script>";
                            //close of connection
                            mysqli_close($connectio);
                        }
                    }
                }else{
                    echo "
                        <script type=\"text/javascript\" style='background-color:red;'>
                            alert(\"Sorry: The file must be a csv file.\");
                            window.location = \"modules.php?upload_conducts\"
                        </script>
                    ";
                }
            }else{
                echo "
                    <script type=\"text/javascript\" style='background-color:red;'>
                        alert(\"Sorry: You must choose a file.\");
                        window.location = \"modules.php?upload_conducts\"
                    </script>
                ";
            }
        }
            
	}
?> 