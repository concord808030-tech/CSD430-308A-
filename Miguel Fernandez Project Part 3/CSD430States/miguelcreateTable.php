<?php
// miguelcreateTable.php
// CSD430 - States Module
// Connects to the CSD430 database and creates the miguelstatesdata table

$servername = "localhost";
$username = "student1";
$password = "pass";
$dbname = "CSD430";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "CREATE TABLE IF NOT EXISTS miguelstatesdata (
    state_id INT AUTO_INCREMENT PRIMARY KEY,
    state_name VARCHAR(50) NOT NULL,
    capital VARCHAR(50) NOT NULL,
    population INT NOT NULL,
    region VARCHAR(20) NOT NULL,
    year_admitted INT NOT NULL
)";

if ($conn->query($sql) === TRUE) {
    echo "Table miguelstatesdata created successfully";
} else {
    echo "Error creating table: " . $conn->error;
}

$conn->close();
?>
