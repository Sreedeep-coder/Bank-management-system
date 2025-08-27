# Quick Start Guide

## 🚀 Get Running in 5 Minutes

### 1. Download MySQL JDBC Driver
```
Download: https://repo1.maven.org/maven2/mysql/mysql-connector-java/8.0.33/mysql-connector-java-8.0.33.jar
Save as: lib/mysql-connector-java.jar
```

### 2. Set Up Database
```sql
-- Run this in MySQL:
source database_setup.sql;
```

### 3. Open in NetBeans
- File → Open Project → Select this folder
- Right-click project → Clean and Build
- Right-click project → Run

### 4. Test Login
- Card: 5040936012345678
- PIN: 1234

## ⚠️ Common Issues & Quick Fixes

| Problem | Solution |
|---------|----------|
| "Driver not found" | Download mysql-connector-java.jar to lib/ folder |
| "Database connection failed" | Check MySQL is running, run database_setup.sql |
| "Class not found" | Clean and Build project |
| "Port in use" | Change port in Conn.java or stop other MySQL instances |

## 🔧 If You Get Stuck
1. Run `setup.bat` to check your setup
2. Read `SETUP_GUIDE.md` for detailed instructions
3. Make sure MySQL Server is running
4. Verify database credentials in `Conn.java`

## 📱 Test Features
- ✅ Login/Logout
- ✅ Deposit Money
- ✅ Withdraw Cash
- ✅ Check Balance
- ✅ View Transactions
- ✅ Change PIN
- ✅ User Registration

