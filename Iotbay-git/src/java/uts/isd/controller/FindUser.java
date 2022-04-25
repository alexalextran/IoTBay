
package uts.isd.controller;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import uts.isd.model.Customer;
import uts.isd.model.Staff;
import uts.isd.model.database.DataBaseConnector;



public class FindUser{ 
    private DataBaseConnector dbConn;
    private Connection connDB; 
    
    public FindUser() throws ClassNotFoundException, SQLException {
       this.dbConn = new DataBaseConnector();
       connDB = dbConn.connectionStart();
    }

    public Connection getConnDB() {
        return connDB;
    }
    
        public static Customer Find(Connection conn,String name, String email, String password, String phone) throws SQLException {
    String sqlQuery = "SELECT * FROM ALIZA.\"Users\" where NAME = '" +name+ "'and EMAIL = '" +email+ "' and password='" +password+ "' and phone='" +phone+ "'";
    Statement statement = conn.createStatement();
     ResultSet rs = statement.executeQuery(sqlQuery);
      while(rs.next()){
          int customerID = rs.getInt(1);
          String customerName = rs.getString(2);
          String customerEmail = rs.getString(3);
          String customerPassword = rs.getString(4);
          String customerPhone = rs.getString(5);
          Customer customer = new Customer(customerID, customerName, customerEmail, customerPassword, customerPhone);
          return customer;
      
      }
      return null;      
  }
        
        
         public static Staff FindStaff(Connection conn,String name, String email, String password, String mobile) throws SQLException {
    String sqlQuery = "SELECT * FROM ALIZA.\"Staff\" where FNAME = '" +name+ "'and EMAIL = '" +email+ "' and password='" +password+ "' and MOBILE='" +mobile+ "'";
    Statement statement = conn.createStatement();
     ResultSet rs = statement.executeQuery(sqlQuery);
      while(rs.next()){
          int StaffID = rs.getInt(1);
          String fname = rs.getString(2);
          String lname = rs.getString(3);
          String address = rs.getString(4);
           String semail = rs.getString(5);
          String username = rs.getString(6);
          String spassword = rs.getString(7);
          String position = rs.getString(8);
          String smobile = rs.getString(9);
          Boolean status = rs.getBoolean(10);
          
          Staff staff = new Staff(StaffID, fname, lname, semail, position, address, username, spassword, status, smobile);
          return staff;
      
      }
      return null;      
  }
}




