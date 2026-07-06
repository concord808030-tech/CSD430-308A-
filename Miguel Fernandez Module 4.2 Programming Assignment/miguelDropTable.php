<?php
// miguelDropTable.php
// CSD430 - States Module
// Connects to the CSD430 database and drops the miguelstatesdata table

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

$sql = "DROP TABLE IF EXISTS miguelstatesdata";

if ($conn->query($sql) === TRUE) {
    echo "Table miguelstatesdata dropped successfully";
} else {
    echo "Error dropping table: " . $conn->error;
}

$conn->close();
?>
