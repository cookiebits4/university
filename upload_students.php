<!DOCTYPE html>
<html lang="el">
<head>
    <meta charset="UTF-8">
    <title>Μαζική Εισαγωγή Φοιτητών</title>
    
    <style>
   
/* Στυλ για την κορυφαία γραμμή πλοήγησης (navbar) */
.sb-topnav {
    background-color: #343a40; /* Σκούρο γκρι χρώμα */
    border-bottom: 2px solid #555; /* Γραμμή στο κάτω μέρος */
}

.navbar-brand {
    font-weight: bold; /* Έντονα γράμματα για το όνομα της ιστοσελίδας */
    color: #fff; /* Λευκό χρώμα κειμένου */
}

.navbar-brand:hover {
    color: #ddd; /* Λευκό χρώμα κειμένου όταν περάσει το ποντίκι από πάνω */
    text-decoration: none; /* Αφαίρεση υπογράμμισης */
}

.navbar-dark .navbar-nav .nav-link {
    color: #fff; /* Λευκό χρώμα κειμένου για τα στοιχεία του μενού */
}

.navbar-dark .navbar-nav .nav-link:hover {
    color: #ddd; /* Λευκό χρώμα κειμένου όταν περάσει το ποντίκι από πάνω */
}

.btn-link {
    color: #fff; /* Λευκό χρώμα για το εικονίδιο της γραμμής πλοήγησης */
}

.btn-link:hover {
    color: #ddd; /* Λευκό χρώμα όταν περάσει το ποντίκι από πάνω */
    text-decoration: none; /* Αφαίρεση υπογράμμισης */
}

/* Στυλ για τα στοιχεία της γραμμής πλοήγησης στα δεξιά */
.navbar-nav .nav-item .nav-link {
    padding: 0.5rem 1rem; /* Εσωτερικά περιθώρια */
}

.navbar-nav .nav-item .dropdown-menu {
    background-color: #343a40; /* Σκούρο γκρι χρώμα για το μενού */
    border: none; /* Αφαίρεση περιγράμματος */
}

.navbar-nav .nav-item .dropdown-item {
    color: #fff; /* Λευκό χρώμα κειμένου για τα στοιχεία του μενού */
}

.navbar-nav .nav-item .dropdown-item:hover {
    background-color: #555; /* Χρώμα φόντου όταν περάσει το ποντίκι από πάνω */
    color: #fff; /* Λευκό χρώμα κειμένου */
}
    </style>

</head>

<body>
<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="index.php">Αρχική</a>
            
 </nav>
</body>



<?php

if (isset($_FILES["file"]) && $_FILES["file"]["error"] == 0) {
    $file = $_FILES["file"]["tmp_name"];

    if (($handle = fopen($file, "r")) !== FALSE) {
        $servername = "localhost";
        $username = "root";
        $password = "";
        $dbname = "university";

        $conn = new mysqli($servername, $username, $password, $dbname);

        if ($conn->connect_error) {
            die("Σφάλμα σύνδεσης: " . $conn->connect_error);
        }

        // Μεταβλητές για καταμέτρηση επιτυχημένων και προβληματικών εγγραφών
        $successfulInserts = 0;
        $failedInserts = 0;

        while (($data = fgetcsv($handle, 1000, ",")) !== FALSE) {
            // Επαλήθευση ότι η γραμμή έχει τον αναμενόμενο αριθμό στηλών
            if (count($data) >= 4) {
                $firstName = $data[0];
                $lastName = $data[1];
                $email = $data[2];
                $yearOfEnrollment = $data[3];

                // Εισαγωγή δεδομένων στον πίνακα "students"
                $stmt = $conn->prepare("INSERT INTO students (first_name, last_name, email, year_of_enrollment) VALUES (?, ?, ?, ?)");
                if ($stmt) {
                    $stmt->bind_param("ssss", $firstName, $lastName, $email, $yearOfEnrollment);
                    if ($stmt->execute()) {
                        $successfulInserts++;
                    } else {
                        $failedInserts++;
                    }
                    $stmt->close();
                } else {
                    $failedInserts++;
                }
            } else {
                $failedInserts++;
            }
        }
        fclose($handle);
        $conn->close();

        echo "Η εισαγωγή ολοκληρώθηκε! Επιτυχημένες εγγραφές: $successfulInserts, Προβληματικές εγγραφές: $failedInserts";
    } else {
        echo "Σφάλμα κατά το άνοιγμα του αρχείου.";
    }
} else {
    echo "Δεν επιλέχθηκε αρχείο ή υπήρξε σφάλμα κατά την αποστολή.";
}

?>
