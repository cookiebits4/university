<?php
    // Ορίζουμε τις παραμέτρους σύνδεσης στη βάση δεδομένων
	$servername = "localhost"; // Το όνομα του διακομιστή της βάσης δεδομένων
	$username = "root"; // Το όνομα χρήστη για τη σύνδεση στη βάση δεδομένων
	$password = ""; // Ο κωδικός πρόσβασης για τη σύνδεση στη βάση δεδομένων
	$dbname = "university"; // Το όνομα της βάσης δεδομένων που θέλουμε να συνδεθούμε
	
	// Σύνδεση στη βάση δεδομένων
	$conn = new mysqli($servername, $username, $password, $dbname);
	
	// Έλεγχος σύνδεσης
	if ($conn->connect_error) {
		// Αν η σύνδεση αποτύχει, τότε εκτυπώνουμε ένα μήνυμα λάθους και τερματίζουμε την εκτέλεση του κώδικα.
		die("Connection failed: " . $conn->connect_error);
	}
?>
