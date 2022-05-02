
package uts.isd.controller;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import uts.isd.model.database.DataBaseConnector;



public class UpdateStaff{ 
    private DataBaseConnector dbConn;
    private Connection connDB; 
    
    public UpdateStaff() throws ClassNotFoundException, SQLException {
       this.dbConn = new DataBaseConnector();
       connDB = dbConn.connectionStart();
    }

    public Connection getConnDB() {
        return connDB;
    }
    
    public static String Update(Connection conn,int id, String fName, String lName, String email, String position, String address, String username, String password, Boolean staffStatus, String mobileNumber) throws SQLException {
    String sqlQuery = "UPDATE ALIZA.\"Staff\" SET FNAME ='"+fName+"', LNAME = '" +lName+ "', ADDRESS = '"+ address+ "', EMAIL = '"+email+"', USERNAME = '" + username+"', PASSWORD = '" + password+ "', POSITION = '" + position+"', MOBILE = '"+ mobileNumber+"', STATUS = "+ staffStatus + " WHERE id =" + id;
    try (Statement statement = conn.createStatement()) {
      statement.executeUpdate(sqlQuery);
      return "Staff record updated successfully";
      } catch (SQLException e) {
        return "Got an exception! " + e.getMessage(); 
    }   
        
  }

}


