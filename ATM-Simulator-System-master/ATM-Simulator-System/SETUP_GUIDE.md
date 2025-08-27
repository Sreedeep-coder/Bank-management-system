# ATM Simulator System - Setup Guide

## Prerequisites
1. **Java JDK 8 or higher** installed on your system
2. **MySQL Server** installed and running
3. **NetBeans IDE** (recommended) or any Java IDE

## Step-by-Step Setup

### 1. Download MySQL JDBC Driver
- Go to: https://dev.mysql.com/downloads/connector/j/
- Download the latest version (8.0.x)
- Place the .jar file in the `lib/` folder
- Rename it to: `mysql-connector-java.jar`

**Alternative direct download:**
- Download from: https://repo1.maven.org/maven2/mysql/mysql-connector-java/8.0.33/mysql-connector-java-8.0.33.jar
- Rename to: `mysql-connector-java.jar`
- Place in: `lib/` folder

### 2. Set Up MySQL Database
1. Open MySQL Command Line Client or MySQL Workbench
2. Run the SQL script: `database_setup.sql`
3. This will create:
   - Database: `bankmanagementsystem`
   - Tables: `login`, `signup`, `signup2`, `signup3`, `bank`
   - Sample data for testing

### 3. Configure Database Connection
1. Open `src/ASimulatorSystem/Conn.java`
2. Update the database credentials if needed:
   ```java
   c = DriverManager.getConnection("jdbc:mysql://localhost:3306/bankmanagementsystem","root","your_password");
   ```
3. Make sure the database name, username, and password match your MySQL setup

### 4. Open Project in NetBeans
1. Open NetBeans IDE
2. Go to File → Open Project
3. Navigate to the project folder and select it
4. NetBeans will automatically detect it as a Java project

### 5. Build and Run
1. Right-click on the project in NetBeans
2. Select "Clean and Build"
3. After successful build, right-click again and select "Run"

## Test Credentials
Use these sample credentials to test the system:
- **Card Number:** 5040936012345678
- **PIN:** 1234

## Troubleshooting

### Common Issues:

1. **"MySQL JDBC Driver not found"**
   - Make sure `mysql-connector-java.jar` is in the `lib/` folder
   - Check that the file name matches exactly

2. **"Database connection failed"**
   - Verify MySQL Server is running
   - Check database name, username, and password in `Conn.java`
   - Ensure the database exists and tables are created

3. **"Class not found" errors**
   - Clean and rebuild the project
   - Check that all Java files are in the correct package structure

4. **"Port already in use"**
   - Change the MySQL port in `Conn.java` if needed
   - Default is 3306

## Project Structure
```
ATM-Simulator-System/
├── src/ASimulatorSystem/          # Source code
│   ├── Login.java                 # Main entry point
│   ├── Conn.java                  # Database connection
│   ├── Transactions.java          # Main menu
│   ├── Deposit.java               # Deposit functionality
│   ├── Withdrawl.java             # Withdrawal functionality
│   ├── FastCash.java              # Quick cash withdrawal
│   ├── BalanceEquiry.java         # Balance check
│   ├── MiniStatement.java         # Transaction history
│   ├── Pin.java                   # PIN change
│   ├── Signup.java                # User registration
│   ├── Signup2.java               # Additional user details
│   └── Signup3.java               # Account setup
├── lib/                           # External libraries
├── nbproject/                     # NetBeans project files
├── build/                         # Compiled classes
├── database_setup.sql             # Database setup script
└── SETUP_GUIDE.md                # This file
```

## Features
- User authentication with card number and PIN
- Account registration and setup
- Deposit and withdrawal operations
- Fast cash withdrawal
- Balance inquiry
- Mini statement (transaction history)
- PIN change functionality
- Professional ATM-style interface

## Support
If you encounter any issues, check:
1. Java version compatibility
2. MySQL Server status
3. Database connection parameters
4. File paths and permissions

