<?php
	require_once("../../public/connection.php");
	$output = '';
	
	if(isset($_POST['export_subject_sheet_btn'])){
		$class = htmlentities(trim(mysqli_real_escape_string($connection, $_POST['class'])));
        $term = htmlentities(trim(mysqli_real_escape_string($connection, $_POST['term'])));
        $session = htmlentities(trim(mysqli_real_escape_string($connection, $_POST['session'])));
        $subject = htmlentities(trim(mysqli_real_escape_string($connection, $_POST['subject'])));
		
		$query = " SELECT * FROM students WHERE class = '{$class}' ORDER BY firstname ASC ";
		$run_query = mysqli_query($connection, $query);
		
		if(mysqli_num_rows($run_query) > 0){
			$output .= '
				<table class="table" bordered="1">
					<tr>
						<th>S/N</th>
						<th>Reg No</th>
						<th>Name</th>
						<th>class</th>
                        <th>Subject</th>
						<th>term</th>
						<th>session</th>
					</tr>
			';
			$x = 0;
			while($result = mysqli_fetch_array($run_query)){
				$x++;
				$output .= '
					<tr>
						<td>'.$x.'</td>
						<td>'.$result['reg_number'].'</td>
						<td>'.$result['firstname'] ." " .$result['lastname'] ." " .$result['othername'] .'</td>
						<td>'.$result['class'].'</td>
                        <td>'.$subject.'</td>
						<td>'.$term.'</td>
						<td>'.$session.'</td>
					</tr>
			';
			}
			$output .='</table>';
			header("Content-Type: application/xls");
            header("Content-Disposition: attachment; filename=$class$subject$term$session.xls");
			echo $output;
		}else{
			echo "<script type=\"text/javascript\">
				alert(\"There are No Registered Students Now.\");
				window.location = \"modules.php?register_student_subject\"
				</script>";
		}
	}
?>