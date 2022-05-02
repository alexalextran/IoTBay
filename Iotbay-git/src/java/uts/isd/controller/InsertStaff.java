
package uts.isd.controller;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import uts.isd.model.database.DataBaseConnector;



public class InsertStaff{ 
    private DataBaseConnector dbConn;
    private Connection connDB; 
    
    public InsertStaff() throws ClassNotFoundException, SQLException {
       this.dbConn = new DataBaseConnector();
       connDB = dbConn.connectionStart();
    }

    public Connection getConnDB() {
        return connDB;
    }
    
    public static String Insert(Connection conn, String fName, String lName, String email, String position, String address, String username, String password, Boolean staffStatus, String mobileNumber) throws SQLException {
    String sqlQuery = "INSERT INTO ALIZA.\"Staff\" (FNAME, LNAME, ADDRESS, EMAIL, USERNAME, PASSWORD, POSITION, MOBILE, STATUS) VALUES ('"+fName +"', '" +lName+ "','"+ address+ "','"+email+"','" + username+"','" + password+ "','" + position+"' ,'"+ mobileNumber+"',"+ staffStatus+")";
    try (Statement statement = conn.createStatement()) {
      statement.executeUpdate(sqlQuery);
      return "Staff record added successfully"; 
      } catch (SQLException e) {
        return "Got an exception! " + e.getMessage(); 
    }   
        
  }

}


