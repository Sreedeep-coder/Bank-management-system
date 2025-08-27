@echo off
echo ========================================
echo ATM Simulator System - Setup Helper
echo ========================================
echo.

echo Checking Java installation...
java -version >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Java is not installed or not in PATH
    echo Please install Java JDK 8 or higher
    echo Download from: https://adoptium.net/
    pause
    exit /b 1
) else (
    echo Java is installed ✓
)

echo.
echo Checking if lib folder exists...
if not exist "lib" (
    echo Creating lib folder...
    mkdir lib
)

echo.
echo Checking for MySQL JDBC driver...
if not exist "lib\mysql-connector-java.jar" (
    echo WARNING: MySQL JDBC driver not found!
    echo.
    echo Please download the MySQL JDBC driver:
    echo 1. Go to: https://dev.mysql.com/downloads/connector/j/
    echo 2. Download the latest version (8.0.x)
    echo 3. Place the .jar file in the lib folder
    echo 4. Rename it to: mysql-connector-java.jar
    echo.
    echo Or download directly from:
    echo https://repo1.maven.org/maven2/mysql/mysql-connector-java/8.0.33/mysql-connector-java-8.0.33.jar
    echo.
    echo After downloading, run this script again.
) else (
    echo MySQL JDBC driver found ✓
)

echo.
echo Checking for database setup script...
if exist "database_setup.sql" (
    echo Database setup script found ✓
    echo.
    echo IMPORTANT: You need to set up the MySQL database:
    echo 1. Install MySQL Server if not already installed
    echo 2. Run the database_setup.sql script in MySQL
    echo 3. Update database credentials in src/ASimulatorSystem/Conn.java
) else (
    echo ERROR: database_setup.sql not found!
)

echo.
echo ========================================
echo Setup check completed!
echo ========================================
echo.
echo Next steps:
echo 1. Download MySQL JDBC driver (see above)
echo 2. Set up MySQL database using database_setup.sql
echo 3. Open project in NetBeans IDE
echo 4. Build and run the project
echo.
echo For detailed instructions, see SETUP_GUIDE.md
echo.
pause

