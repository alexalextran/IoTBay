
package uts.isd.controller;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import uts.isd.model.database.DataBaseConnector;



public class InsertProduct{ 
    private DataBaseConnector dbConn;
    private Connection connDB; 
    
    public InsertProduct() throws ClassNotFoundException, SQLException {
       this.dbConn = new DataBaseConnector();
       connDB = dbConn.connectionStart();
    }

    public Connection getConnDB() {
        return connDB;
    }
    
    public static String Insert(Connection conn,String name, int stock, String type, double price) throws SQLException {
    String sqlQuery = "INSERT INTO ALIZA.\"Product\" (NAME, STOCK, TYPE ,PRICE) VALUES ('"+name +"', "+stock+",'"+ type+ "',"+price+")";
    
    try (Statement statement = conn.createStatement()) {
      statement.executeUpdate(sqlQuery);
      return "Product added successfully"; 
      } catch (SQLException e) {
        return "Got an exception! " + e.getMessage(); 
    }   
        
  }

}


