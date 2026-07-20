

-- Create the database
CREATE DATABASE IF NOT EXISTS CSD430;

-- Create the user and set password
CREATE USER IF NOT EXISTS 'student1'@'localhost' IDENTIFIED BY 'pass';

-- Grant privileges to student1 on the CSD430 database
GRANT ALL PRIVILEGES ON CSD430.* TO 'student1'@'localhost';
FLUSH PRIVILEGES;

-- Switch to the CSD430 database
USE CSD430;

-- Drop the table if it already exists, so this script can be re-run safely
DROP TABLE IF EXISTS miguelstatesdata;

-- Create the table
CREATE TABLE miguelstatesdata (
    state_id INT AUTO_INCREMENT PRIMARY KEY,
    state_name VARCHAR(50) NOT NULL,
    capital VARCHAR(50) NOT NULL,
    population INT NOT NULL,
    region VARCHAR(20) NOT NULL,
    year_admitted INT NOT NULL
);

-- Populate the table with 10 records
INSERT INTO miguelstatesdata (state_name, capital, population, region, year_admitted) VALUES
('Florida', 'Tallahassee', 8342917, 'South', 1845),
('California', 'Sacramento', 27194855, 'West', 1850),
('Texas', 'Austin', 19387204, 'South', 1845),
('New York', 'Albany', 5209436, 'Northeast', 1788),
('South Carolina', 'Columbia', 12045378, 'South', 1788),
('Ohio', 'Columbus', 3178942, 'Midwest', 1803),
('Washington', 'Olympia', 16820391, 'West', 1889),
('Colorado', 'Denver', 2094857, 'West', 1876),
('Georgia', 'Atlanta', 33017642, 'South', 1788),
('Pennsylvania', 'Harrisburg', 7461238, 'Northeast', 1787);

-- View the populated table
SELECT * FROM miguelstatesdata;
