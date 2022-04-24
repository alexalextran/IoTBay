
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
    
    public static String Delete(Connection conn, String name) throws SQLException {
    String sqlQuery = "DELETE FROM ALIZA.\"Users\" WHERE NAME = '"+name+"' ";
    try (Statement statement = conn.createStatement()) {
      statement.executeUpdate(sqlQuery);
      return "User deleted Succesfully"; 
      } catch (SQLException e) {
        return "Got an exception! " + e.getMessage(); 
    }   
        
  }

}


