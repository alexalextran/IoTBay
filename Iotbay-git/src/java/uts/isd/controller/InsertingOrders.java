
package uts.isd.controller;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import uts.isd.model.database.DataBaseConnector;



public class InsertingOrders{ 
    private DataBaseConnector dbConn;
    private Connection connDB; 
    
    public InsertingOrders() throws ClassNotFoundException, SQLException {
       this.dbConn = new DataBaseConnector();
       connDB = dbConn.connectionStart();
    }

    public Connection getConnDB() {
        return connDB;
    }
    
    public static String Insert(Connection conn, String date, String name, int amount, double price, int customerid) throws SQLException {
    String sqlQuery = "INSERT INTO ALIZA.\"Order\" (DATE, NAME, AMOUNT ,PRICE, CUSTOMERID) VALUES ('"+date+"', '"+name +"', "+amount+","+ price+ ", "+customerid+")";
    
    try (Statement statement = conn.createStatement()) {
      statement.executeUpdate(sqlQuery);
      return "Product added to order!"; 
      } catch (SQLException e) {
        return "Got an exception! " + e.getMessage(); 
    }   
        
  }

}


