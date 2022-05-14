
package uts.isd.controller;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import uts.isd.model.database.DataBaseConnector;



public class DeleteUser{ 
    private DataBaseConnector dbConn;
    private Connection connDB; 
    
    public DeleteUser() throws ClassNotFoundException, SQLException {
       this.dbConn = new DataBaseConnector();
       connDB = dbConn.connectionStart();
    }

    public Connection getConnDB() {
        return connDB;
    }
    
    
    public static void DeleteAcessLogs(Connection conn, int id) throws SQLException {
    String sqlQuery = "DELETE FROM ALIZA.\"Acess_Log\" WHERE CUSTOMER_ID = "+id+" ";
    Statement statement = conn.createStatement();
    statement.executeUpdate(sqlQuery);
    }
    
    public static void Delete(Connection conn, int id) throws SQLException {
    String sqlQuery = "DELETE FROM ALIZA.\"Users\" WHERE ID = "+id+" ";
      Statement statement = conn.createStatement();
      statement.executeUpdate(sqlQuery);
  }
    
    
        
  }



