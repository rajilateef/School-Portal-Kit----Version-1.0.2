
<?php
    error_reporting(0);
    require_once("../../public/connection.php");
	require_once("../../public/functions.php");

    $date = date('d-M-Y');
    $select = "--select--";

	if(isset($_POST["upload_subject_sheet_btn"])){
		$class = htmlentities(trim(mysqli_real_escape_string($connection, $_POST['class'])));
		$term = htmlentities(trim(mysqli_real_escape_string($connection, $_POST['term'])));
		$session = htmlentities(trim(mysqli_real_escape_string($connection, $_POST['session'])));
		$subject = htmlentities(trim(mysqli_real_escape_string($connection, $_POST['subject'])));
        
        if($class === $select || $term === $select || $session === $select || $subject === $select){
            echo "<script type=\"text/javascript\" style='background-color:red;'>
                    alert(\"Sorry: All fields must be selected.\");
                    window.location = \"modules.php?register_student_subject\"
                    </script>
                ";
        }else{
            if(!empty($_FILES["uploadFile"]["tmp_name"])){
                $fileName = explode(".",$_FILES["uploadFile"]["name"]);
                if($fileName[1]=="csv"){
                    $query = "SELECT * FROM subjects WHERE class = '{$class}' AND subjects = '{$subject}' AND term = '{$term}' AND session = '{$session}' ";
                    $run_query = mysqli_query($connection, $query);

                    if(mysqli_num_rows($run_query) > 0){
                        echo "<script type=\"text/javascript\" style='background-color:red;'>
                                alert(\"Sorry: Subject has been registered for this Particular Class and Term in this Session.\");
                                window.location = \"modules.php?register_student_subject\"
                                </script>";
                    }else{
                        echo $filename = $_FILES["uploadFile"]["tmp_name"];

                        if($_FILES["uploadFile"]["size"] > 0){

                            $openFile = fopen($filename, "r");
                            $number = 0;
                            while($dataFile = fgetcsv($openFile, 3000, ",")){
                                $number++;

                                if($number != 1){
                                    //It wiil insert a row to our subject table from our csv file`
                                    $sql = "INSERT INTO subjects(`reg_number`,`name`,`class`,`subjects`,`term`,`session`, `registration_date`) VALUES ('{$dataFile[1]}','{$dataFile[2]}','{$dataFile[3]}','{$dataFile[4]}','{$dataFile[5]}','{$dataFile[6]}', '{$date}')";
                                    $run_query = mysqli_query($connection, $query);

                                    //we are using mysql_query function. it returns a resource on true else False on error
                                    $result = mysqli_query( $connection, $sql );
                                    if(! $result ){
                                        echo "<script type=\"text/javascript\">
                                        alert(\"Invalid File:Please Upload CSV File.\");
                                        window.location = \"modules.php?register_student_subject\"
                                        </script>";
                                    }else{

                                    }
                                }
                            }
                            fclose($file);
                            //throws a message if data successfully imported to mysql database from excel file
                            echo "<script type=\"text/javascript\">
                            alert(\"CSV File has been successfully Imported.\");
                            window.location = \"modules.php?register_student_subject\"
                            </script>";
                            //close of connection
                            mysqli_close($connectio);
                        }
                    }
                }else{
                    echo "
                        <script type=\"text/javascript\" style='background-color:red;'>
                            alert(\"Sorry: The file must be a csv file.\");
                            window.location = \"modules.php?register_student_subject\"
                        </script>
                    ";
                }
            }else{
                echo "
                    <script type=\"text/javascript\" style='background-color:red;'>
                        alert(\"Sorry: You must choose a file.\");
                        window.location = \"modules.php?register_student_subject\"
                    </script>
                ";
            }
        }
		
	}
?> 