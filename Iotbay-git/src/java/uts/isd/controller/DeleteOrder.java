
package uts.isd.controller;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import uts.isd.model.database.DataBaseConnector;



public class DeleteOrder{ 
    private DataBaseConnector dbConn;
    private Connection connDB; 
    
    public DeleteOrder() throws ClassNotFoundException, SQLException {
       this.dbConn = new DataBaseConnector();
       connDB = dbConn.connectionStart();
    }

    public Connection getConnDB() {
        return connDB;
    }
    
    
    public static String Delete(Connection conn, int id) throws SQLException {
    String sqlQuery = "DELETE FROM ALIZA.\"Order\" WHERE ID = "+id+" ";
     try (Statement statement = conn.createStatement()) {
      statement.executeUpdate(sqlQuery);
      return "Customer deleted successfully"; 
      } catch (SQLException e) {
        return "Got an exception! " + e.getMessage(); 
    }   
    
  }
    public static String DeletePayment(Connection conn, int orderid) throws SQLException {
    String sqlQuery = "DELETE FROM ALIZA.\"Payment\" WHERE ORDERID = "+orderid+" ";
     try (Statement statement = conn.createStatement()) {
      statement.executeUpdate(sqlQuery);
      return "Customer deleted successfully"; 
      } catch (SQLException e) {
        return "Got an exception! " + e.getMessage(); 
    }   
    
  }
    
    
        
  }




