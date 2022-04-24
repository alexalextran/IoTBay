
package uts.isd.controller;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import uts.isd.model.Customer;
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
              String customerName = rs.getString(2);
              String customerPhone = rs.getString(5);
              Customer customer = new Customer(customerName, customerEmail, customerPassword, customerPhone);
          return customer;
      }
      }
      return null;      
  }
}




