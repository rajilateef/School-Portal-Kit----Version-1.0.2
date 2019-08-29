<?php
	require_once("../../public/connection.php");
	$output = '';
	
	if(isset($_POST['teacher_export_conduct_btn'])){
		$class = htmlentities(trim(mysqli_real_escape_string($connection, $_POST['class'])));
        $term = htmlentities(trim(mysqli_real_escape_string($connection, $_POST['term'])));
        $session = htmlentities(trim(mysqli_real_escape_string($connection, $_POST['session'])));
		
		$query = " SELECT * FROM students WHERE class = '{$class}' ";
		$run_query = mysqli_query($connection, $query);
		
		if(mysqli_num_rows($run_query) > 0){
			$output .= '
				<table class="table" bordered="1">
					<tr>
						<th>S/N</th>
                        <th>Reg No</th>
                        <th>Name</th>
                        <th>Class</th>
                        <th>Term</th>
                        <th>Session</th>
						<th>Hand Writing</th>
						<th>Musical Skills</th>
						<th>Sports</th>
						<th>Attentiveness</th>
						<th>Attitude to work</th>
						<th>Health</th>
						<th>Politeness</th>
					</tr>
			';
			$x = 0;
			while($result = mysqli_fetch_array($run_query)){
				$x++;
				$output .= '
					<tr>
						<td>'.$x.'</td>
                        <td>'.$result['reg_number'].'</td>
                        <td>'.$result['firstname'] .$result['lastname'] .$result['othername'] .'</td>
						<td>'.$result['class'].'</td>
						<td>'.$term.'</td>
						<td>'.$session.'</td>
					</tr>
			';
			}
			$output .='</table>';
			header("Content-Type: application/xls");
            header("Content-Disposition: attachment; filename=$class Behavioral $term$session.xls");
			echo $output;
		}else{
			echo "<script type=\"text/javascript\">
				alert(\"There are No Registered Students Now.\");
				window.location = \"teacher_dashboard.php?export_conduct\"
				</script>";
		}
	}
?>