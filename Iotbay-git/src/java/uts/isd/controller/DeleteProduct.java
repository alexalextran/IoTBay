
package uts.isd.controller;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import uts.isd.model.database.DataBaseConnector;


public class DeleteProduct{ 
    private DataBaseConnector dbConn;
    private Connection connDB; 
    
    public DeleteProduct() throws ClassNotFoundException, SQLException {
       this.dbConn = new DataBaseConnector();
       connDB = dbConn.connectionStart();
    }

    public Connection getConnDB() {
        return connDB;
    }
    
    public static String delete(Connection conn, int id) throws SQLException {
    String sqlQuery = "DELETE FROM ALIZA.\"Product\" WHERE id = " + id;
    try (Statement statement = conn.createStatement()) {
      statement.executeUpdate(sqlQuery);
      return "Product record deleted successfully";
      } catch (SQLException e) {
        return "Got an exception! " + e.getMessage(); 
    }
  }

   

}


