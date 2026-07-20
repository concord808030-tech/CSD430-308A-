<?php
// miguelpopulateTable.php
// CSD430 - States Module
// Connects to the CSD430 database and inserts 10 records into miguelstatesdata

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

$sql = "INSERT INTO miguelstatesdata (state_name, capital, population, region, year_admitted) VALUES
('Florida', 'Tallahassee', 8342917, 'South', 1845),
('California', 'Sacramento', 27194855, 'West', 1850),
('Texas', 'Austin', 19387204, 'South', 1845),
('New York', 'Albany', 5209436, 'Northeast', 1788),
('South Carolina', 'Columbia', 12045378, 'South', 1788),
('Ohio', 'Columbus', 3178942, 'Midwest', 1803),
('Washington', 'Olympia', 16820391, 'West', 1889),
('Colorado', 'Denver', 2094857, 'West', 1876),
('Georgia', 'Atlanta', 33017642, 'South', 1788),
('Pennsylvania', 'Harrisburg', 7461238, 'Northeast', 1787)";

if ($conn->query($sql) === TRUE) {
    echo "Records inserted successfully";
} else {
    echo "Error inserting records: " . $conn->error;
}

$conn->close();
?>
