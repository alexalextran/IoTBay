package uts.isd.controller;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import uts.isd.model.Order;
import uts.isd.model.database.DataBaseConnector;



public class UpdateOrder{ 
    private DataBaseConnector dbConn;
    private Connection connDB; 
    
    public UpdateOrder() throws ClassNotFoundException, SQLException {
       this.dbConn = new DataBaseConnector();
       connDB = dbConn.connectionStart();
    }

    public Connection getConnDB() {
        return connDB;
    }
    
        public void Update(Connection conn, int amount, int id) throws SQLException {
    String sqlQuery = "UPDATE ALIZA.\"Order\" SET AMOUNT = " +amount+ " WHERE ID = " +id; 
    Statement statement = conn.createStatement();
   statement.executeUpdate(sqlQuery);
      }
          
  
}
