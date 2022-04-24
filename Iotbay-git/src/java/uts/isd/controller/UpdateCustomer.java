
package uts.isd.controller;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import uts.isd.model.Customer;
import uts.isd.model.database.DataBaseConnector;



public class UpdateCustomer{ 
    private DataBaseConnector dbConn;
    private Connection connDB; 
    
    public UpdateCustomer() throws ClassNotFoundException, SQLException {
       this.dbConn = new DataBaseConnector();
       connDB = dbConn.connectionStart();
    }

    public Connection getConnDB() {
        return connDB;
    }
    
        public void Update(Connection conn, String name, String email, String password, String phone, int id) throws SQLException {
    String sqlQuery = "UPDATE ALIZA.\"Users\" SET NAME = '" +name+ "' ,EMAIL = '" +email+ "' ,PASSWORD='" +password+ "', PHONE='" +phone+ "' WHERE ID = '" +id+ "'";
    Statement statement = conn.createStatement();
   statement.executeQuery(sqlQuery);
      }
          
  
}




