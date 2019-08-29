<?php
	session_start();
	if(isset($_SESSION['principal'])){
		
	}else{
		header("location:../../login000/login.php?msg= No Admin Access");
	}
?>