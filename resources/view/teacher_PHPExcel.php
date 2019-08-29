<?php
	require_once("../../public/connection.php");
	$output = '';
	
	if(isset($_POST['export_result_btn'])){
		$class = htmlentities(trim(mysqli_real_escape_string($connection, $_POST['class'])));
        $term = htmlentities(trim(mysqli_real_escape_string($connection, $_POST['term'])));
        $session = htmlentities(trim(mysqli_real_escape_string($connection, $_POST['session'])));
        $subject = htmlentities(trim(mysqli_real_escape_string($connection, $_POST['subject'])));
		
		$query = " SELECT * FROM subjects WHERE class = '{$class}' AND subjects = '{$subject}' AND term = '{$term}' AND session = '{$session}' ";
		$run_query = mysqli_query($connection, $query);
		
		if(mysqli_num_rows($run_query) > 0){
			$output .= '
				<table class="table" bordered="1">
					<tr>
						<th>S/N</th>
                        <th>Class</th>
                        <th>Term</th>
                        <th>Session</th>
                        <th>Reg No</th>
                        <th>Name</th>
						<th>Subject</th>
						<th>1ST CA</th>
						<th>2ND CA</th>
						<th>Exam score</th>
					</tr>
			';
			$x = 0;
			while($result = mysqli_fetch_array($run_query)){
				$x++;
				$output .= '
					<tr>
						<td>'.$x.'</td>
						<td>'.$result['class'].'</td>
						<td>'.$result['term'].'</td>
						<td>'.$result['session'].'</td>
                        <td>'.$result['reg_number'].'</td>
                        <td>'.$result['name'].'</td>
                        <td>'.$result['subjects'].'</td>
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
				window.location = \"teacher_dashboard.php?excel_result_upload\"
				</script>";
		}
	}
?>