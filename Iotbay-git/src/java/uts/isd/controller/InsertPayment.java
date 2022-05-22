
package uts.isd.controller;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import uts.isd.model.database.DataBaseConnector;



public class InsertPayment{ 
    private DataBaseConnector dbConn;
    private Connection connDB; 
    
    public InsertPayment() throws ClassNotFoundException, SQLException {
       this.dbConn = new DataBaseConnector();
       connDB = dbConn.connectionStart();
    }

    public Connection getConnDB() {
        return connDB;
    }
    
    public static String Insert(Connection conn, String cardno, String name, String expdate, String seccode, int OrderID) throws SQLException {
    String sqlQuery = "INSERT INTO ALIZA.\"Payment\" (CARDNO, NAMEONCARD, MMYY, SECCODE, ORDERID) VALUES ('"+cardno+"', '" +name+ "', '" +expdate+ "', '"+seccode+"', "+OrderID+")";
    try (Statement statement = conn.createStatement()) {
      statement.executeUpdate(sqlQuery);
      return "Payment added successfully"; 
      } catch (SQLException e) {
        return "Got an exception! " + e.getMessage(); 
    }   
        
  }

}


