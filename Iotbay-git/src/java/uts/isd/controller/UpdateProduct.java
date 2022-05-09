
package uts.isd.controller;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import uts.isd.model.database.DataBaseConnector;



public class UpdateProduct{ 
    private DataBaseConnector dbConn;
    private Connection connDB; 
    
    public UpdateProduct() throws ClassNotFoundException, SQLException {
       this.dbConn = new DataBaseConnector();
       connDB = dbConn.connectionStart();
    }

    public Connection getConnDB() {
        return connDB;
    }
    
    public static String Update(Connection conn,int id, String name, double price, int stock, String type) throws SQLException {
    String sqlQuery = "UPDATE ALIZA.\"Product\" SET NAME ='"+name+"', PRICE = " +price+ ", STOCK = "+ stock+ ", TYPE = '"+type+"' WHERE id =" + id;
    try (Statement statement = conn.createStatement()) {
      statement.executeUpdate(sqlQuery);
      return "Product record updated successfully";
      } catch (SQLException e) {
        return "Got an exception! " + e.getMessage(); 
    }   
        
  }

}


