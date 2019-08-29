<?php
	session_start();
	if(isset($_SESSION['accountant'])){
		
	}else{
		header("location:../../login000/login.php?msg= No Admin Access");
	}
?>