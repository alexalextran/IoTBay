
package uts.isd.controller;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import uts.isd.model.Customer;
import uts.isd.model.Staff;
import uts.isd.model.database.DataBaseConnector;



public class ReadCustomer{ 
    private DataBaseConnector dbConn;
    private Connection connDB; 
    
    public ReadCustomer() throws ClassNotFoundException, SQLException {
       this.dbConn = new DataBaseConnector();
       connDB = dbConn.connectionStart();
    }

    public Connection getConnDB() {
        return connDB;
    }
    
        public static Customer Read(Connection conn, String email, String password) throws SQLException {
    String sqlQuery = "SELECT * FROM ALIZA.\"Users\" where EMAIL = '" +email+ "' and password='" +password+ "'";
    Statement statement = conn.createStatement();
      ResultSet rs = statement.executeQuery(sqlQuery);
      while(rs.next()){
          String customerEmail = rs.getString(3);
          String customerPassword = rs.getString(4);
          if(customerEmail.equals(email) && customerPassword.equals(password)){
               int customerId = rs.getInt(1);
              String customerName = rs.getString(2);
              String customerPhone = rs.getString(5);
              Customer customer = new Customer(customerId, customerName, customerEmail, customerPassword, customerPhone);
          return customer;
      }
      }
      return null;      
  }
        
     public static Staff ReadStaff(Connection conn, String email, String password) throws SQLException {
    String sqlQuery = "SELECT * FROM ALIZA.\"Staff\" where EMAIL = '" +email+ "' and password='" +password+ "'";
    Statement statement = conn.createStatement();
      ResultSet rs = statement.executeQuery(sqlQuery);
      while(rs.next()){
          String StaffEmail = rs.getString(5);
          String StaffPassword = rs.getString(7);
          if(StaffEmail.equals(email) && StaffPassword.equals(password)){
               int staffId = rs.getInt(1);
              String fname = rs.getString(2);
              String lname = rs.getString(3);
              String adress = rs.getString(4);
              String username = rs.getString(6);
              String position = rs.getString(8);
              String mobile = rs.getString(9);
              boolean status = rs.getBoolean(10);
               
              
              
              Staff staff = new Staff(staffId, fname, lname, adress, StaffEmail, username, StaffPassword, position, status, mobile );
          return staff;
      }
      }
      return null;      
  }
        
        
}




