<?php
	session_start();
	if(isset($_SESSION['control'])){
		
	}else{
        header("location:../../login000/secured.php?msg= No Admin Access");
	}
?>