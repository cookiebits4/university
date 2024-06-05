<!DOCTYPE html>
<html lang="el">
<head>
    <meta charset="UTF-8">
    <title>Μαζική Εισαγωγή Φοιτητών</title>
    
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 10px;
            border: 1px solid black;
        }

        th {
            background-color: #f2f2f2;
        }



        /* styles.css */
body {
    font-family: Arial, sans-serif;
}

.sb-topnav {
    background-color: #343a40; /* Dark background color */
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* Add a subtle shadow */
}

.sb-topnav .navbar-brand {
    font-size: 1.25rem;
    font-weight: bold;
    color: #ffffff; /* White text color */
    padding-left: 1rem; /* Add some padding on the left */
}

.sb-topnav .navbar-nav .nav-link {
    color: #ffffff; /* White text color for links */
}

.sb-topnav .navbar-nav .nav-link:hover {
    color: #ffc107; /* Change color on hover */
}

.sb-topnav .navbar-nav .dropdown-menu {
    background-color: #343a40; /* Dark background for dropdown menu */
    border: none; /* Remove border */
}

.sb-topnav .navbar-nav .dropdown-menu .dropdown-item {
    color: #ffffff; /* White text color for dropdown items */
}

.sb-topnav .navbar-nav .dropdown-menu .dropdown-item:hover {
    background-color: #495057; /* Darker background on hover */
}

.sb-topnav .navbar-nav .dropdown-menu .dropdown-divider {
    border-top: 1px solid #495057; /* Darker divider */
}

    </style>

   
</head>
<body>
<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="index.php">Αρχική</a>
            
 </nav>

<br><br>


<br><br>
<h1>Μαζική Εισαγωγή Φοιτητών</h1>
<form action="upload_students.php" method="post" enctype="multipart/form-data">
    <label for="file">Επιλέξτε αρχείο CSV:</label>
    <input type="file" name="file" id="file" accept=".csv">
    <br><br>
    <input type="submit" name="submit" value="Ανεβάστε">
</form>

<br><br>

</body>
</html>
