package ASimulatorSystem;

import java.sql.*;  

public class Conn{
    Connection c;
    Statement s;
    public Conn(){  
        try{  
            // Ensure MySQL JDBC driver is available
            Class.forName("com.mysql.cj.jdbc.Driver");  

            // Use explicit host/port and recommended connection params
            String host = System.getenv().getOrDefault("DB_HOST", "localhost");
            String port = System.getenv().getOrDefault("DB_PORT", "3306");
            String db   = System.getenv().getOrDefault("DB_NAME", "bankdb");
            String user = System.getenv().getOrDefault("DB_USER", "root");
            String pass = System.getenv().getOrDefault("DB_PASS", "Sreenava@2005");

            String url = String.format(
                "jdbc:mysql://%s:%s/%s?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC",
                host, port, db
            );

            c = DriverManager.getConnection(url, user, pass);
            if (c == null) {
                throw new SQLException("DriverManager returned null Connection");
            }
            s = c.createStatement();
            if (s == null) {
                throw new SQLException("Failed to create SQL Statement");
            }
        }catch(Exception e){ 
            throw new RuntimeException("Database connection failed. Ensure MySQL is running, the '" 
                + System.getenv().getOrDefault("DB_NAME", "bankdb") + "' schema exists, and MySQL Connector/J is on the classpath. Reason: " + e.getMessage(), e);
        }  
    }  
}