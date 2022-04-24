
package uts.isd.controller;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import uts.isd.model.Customer;
import uts.isd.model.database.DataBaseConnector;



public class FindCustomer{ 
    private DataBaseConnector dbConn;
    private Connection connDB; 
    
    public FindCustomer() throws ClassNotFoundException, SQLException {
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
}




