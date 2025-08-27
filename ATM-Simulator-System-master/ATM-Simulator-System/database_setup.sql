-- ATM Simulator System Database Setup
-- Run this script in MySQL to create the required database and tables

-- Create the database
CREATE DATABASE IF NOT EXISTS bankmanagementsystem;
USE bankmanagementsystem;

-- Create the login table for user authentication
CREATE TABLE IF NOT EXISTS login (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cardno VARCHAR(20) UNIQUE NOT NULL,
    pin VARCHAR(10) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create the signup table for user registration
CREATE TABLE IF NOT EXISTS signup (
    id INT AUTO_INCREMENT PRIMARY KEY,
    form_no VARCHAR(20) UNIQUE NOT NULL,
    name VARCHAR(100) NOT NULL,
    father_name VARCHAR(100) NOT NULL,
    dob VARCHAR(20) NOT NULL,
    gender VARCHAR(10) NOT NULL,
    email VARCHAR(100),
    marital_status VARCHAR(20) NOT NULL,
    address TEXT NOT NULL,
    city VARCHAR(50) NOT NULL,
    state VARCHAR(50) NOT NULL,
    pin_code VARCHAR(10) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create the signup2 table for additional user details
CREATE TABLE IF NOT EXISTS signup2 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    form_no VARCHAR(20) UNIQUE NOT NULL,
    religion VARCHAR(50) NOT NULL,
    category VARCHAR(50) NOT NULL,
    income VARCHAR(20) NOT NULL,
    education VARCHAR(50) NOT NULL,
    occupation VARCHAR(50) NOT NULL,
    pan_number VARCHAR(20) UNIQUE NOT NULL,
    aadhar_number VARCHAR(20) UNIQUE NOT NULL,
    senior_citizen BOOLEAN DEFAULT FALSE,
    existing_account BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create the signup3 table for account details
CREATE TABLE IF NOT EXISTS signup3 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    form_no VARCHAR(20) UNIQUE NOT NULL,
    account_type VARCHAR(20) NOT NULL,
    card_number VARCHAR(20) UNIQUE NOT NULL,
    pin VARCHAR(10) NOT NULL,
    facility VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create the bank table for account information
CREATE TABLE IF NOT EXISTS bank (
    id INT AUTO_INCREMENT PRIMARY KEY,
    pin VARCHAR(10) NOT NULL,
    date DATE NOT NULL,
    type VARCHAR(20) NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert sample data for testing
INSERT INTO login (cardno, pin) VALUES 
('5040936012345678', '1234'),
('5040936012345679', '5678'),
('5040936012345680', '9012');

-- Insert sample signup data
INSERT INTO signup (form_no, name, father_name, dob, gender, email, marital_status, address, city, state, pin_code) VALUES
('1234567890', 'John Doe', 'Robert Doe', '1990-01-01', 'Male', 'john@example.com', 'Single', '123 Main St', 'New York', 'NY', '10001');

-- Insert sample signup2 data
INSERT INTO signup2 (form_no, religion, category, income, education, occupation, pan_number, aadhar_number, senior_citizen, existing_account) VALUES
('1234567890', 'Other', 'General', '250000-500000', 'Graduate', 'Engineer', 'ABCDE1234F', '123456789012', FALSE, FALSE);

-- Insert sample signup3 data
INSERT INTO signup3 (form_no, account_type, card_number, pin, facility) VALUES
('1234567890', 'Savings', '5040936012345678', '1234', 'ATM Card, Internet Banking, Mobile Banking, Email Alerts, Cheque Book, E-Statement');

-- Insert sample bank transactions
INSERT INTO bank (pin, date, type, amount) VALUES
('1234', '2024-01-01', 'Deposit', 10000.00),
('1234', '2024-01-02', 'Withdrawal', 500.00),
('1234', '2024-01-03', 'Deposit', 2500.00);

-- Grant permissions (adjust username and password as needed)
-- GRANT ALL PRIVILEGES ON bankmanagementsystem.* TO 'root'@'localhost' IDENTIFIED BY 'root';
-- FLUSH PRIVILEGES;

