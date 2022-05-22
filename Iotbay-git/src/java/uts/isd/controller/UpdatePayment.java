
package uts.isd.controller;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import uts.isd.model.database.DataBaseConnector;



public class UpdatePayment{ 
    private DataBaseConnector dbConn;
    private Connection connDB; 
    
    public UpdatePayment() throws ClassNotFoundException, SQLException {
       this.dbConn = new DataBaseConnector();
       connDB = dbConn.connectionStart();
    }

    public Connection getConnDB() {
        return connDB;
    }
    
    public static String Update(Connection conn, String cardno, String name, String expdate, String seccode, int id) throws SQLException {
    String sqlQuery = "UPDATE ALIZA.\"Payment\" SET CARDNO ='"+cardno+"', NAMEONCARD = '" +name+ "', MMYY = '"+ expdate+ "', SECCODE = '"+seccode+"' WHERE ID =" +id+"";
    try (Statement statement = conn.createStatement()) {
      statement.executeUpdate(sqlQuery);
      return "Product record updated successfully";
      } catch (SQLException e) {
        return "Got an exception! " + e.getMessage(); 
    }   
        
  }

}


