-- Create the database
CREATE DATABASE flyaway;
USE flyaway;

-- Create the 'admin' table
CREATE TABLE admin (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL
);

-- Create the 'places' table
CREATE TABLE places (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Create the 'airlines' table
CREATE TABLE airlines (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Create the 'flights' table
CREATE TABLE flights (
    id INT AUTO_INCREMENT PRIMARY KEY,
    source INT NOT NULL,
    destination INT NOT NULL,
    airline INT NOT NULL,
    ticket_price DECIMAL(10, 2) NOT NULL,
    travel_date DATE NOT NULL,
    FOREIGN KEY (source) REFERENCES places(id),
    FOREIGN KEY (destination) REFERENCES places(id),
    FOREIGN KEY (airline) REFERENCES airlines(id),
    INDEX (source),
    INDEX (destination),
    INDEX (airline)
);
