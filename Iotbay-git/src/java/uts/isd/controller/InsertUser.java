
package uts.isd.controller;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import uts.isd.model.database.DataBaseConnector;



public class InsertUser{ 
    private DataBaseConnector dbConn;
    private Connection connDB; 
    
    public InsertUser() throws ClassNotFoundException, SQLException {
       this.dbConn = new DataBaseConnector();
       connDB = dbConn.connectionStart();
    }

    public Connection getConnDB() {
        return connDB;
    }
    
    public static String Insert(Connection conn, String name, String email, String password, String phone) throws SQLException {
    String sqlQuery = "INSERT INTO ALIZA.\"User\" (NAME, EMAIL, PASSWORD, PHONE) VALUES ('"+name +"', '" +email+ "', '" +password+ "', '"+ phone+")";
    try (Statement statement = conn.createStatement()) {
      statement.executeUpdate(sqlQuery);
      return "User record added successfully"; 
      } catch (SQLException e) {
        return "Got an exception! " + e.getMessage(); 
    }   
        
  }

}


