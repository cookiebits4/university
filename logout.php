<?php
	// Ξεκινάμε τη συνεδρία PHP
	session_start();
	session_destroy();
	// Ανακατευθύνουμε τον χρήστη στη σελίδα σύνδεσης (login.php)
	header("Location: login.php");
	// Τερματίζουμε την εκτέλεση του κώδικα
	exit();
?>
