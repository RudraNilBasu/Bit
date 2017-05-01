/*
 * Bit : DBEngine.java
 * Copyright (c) Bytes Club
 * Authors:
 * Rudra Nil Basu <rudra.nil.basu.1996@gmail.com>
 */
package DBControl;

import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.*;

import Constants.Constants;
import Constants.DatabaseLogin;

/**
 *
 * @author rudra
 */
public class DBEngine {
    private String DBName;
    private String user;
    private String password;
    private String url;
    private Connection connection;
    
    public DBEngine() {
        this.DBName = Constants.DB_NAME;
        this.url = "jdbc:mysql://localhost:3306/" + this.DBName;
        
        DatabaseLogin myDatabase = new DatabaseLogin();
        this.user = myDatabase.getUser();
        this.password = myDatabase.getPassword();
    }
    
    public void establishConnection() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.jdbc.Driver");
        this.connection = DriverManager.getConnection(this.url, this.user, this.password);
    }
    
    public void closeConnection() throws SQLException {
        connection.close();
    }
    
    public Connection getConnection() {
        return this.connection;
    }
}
