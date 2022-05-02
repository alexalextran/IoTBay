
package uts.isd.controller;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import uts.isd.model.Staff;
import uts.isd.model.database.DataBaseConnector;



public class FetchSelectedStaff{ 
    private DataBaseConnector dbConn;
    private Connection connDB; 
    
    public FetchSelectedStaff() throws ClassNotFoundException, SQLException {
       this.dbConn = new DataBaseConnector();
       connDB = dbConn.connectionStart();
    }

    public Connection getConnDB() {
        return connDB;
    }
    
    public static Staff getStaff(Connection conn, int selectid ) throws SQLException {
    String sqlQuery = "SELECT * FROM ALIZA.\"Staff\" WHERE ID = " + selectid;
    try (Statement statement = conn.createStatement()) {
      ResultSet res = statement.executeQuery(sqlQuery);
      while (res.next()) {
        int id = res.getInt("ID");
        String fname = res.getString("FNAME");
        String lname = res.getString("LNAME");
        String address = res.getString("ADDRESS");
        String email = res.getString("EMAIL");
        String position = res.getString("POSITION");
        String mobile = res.getString("MOBILE");
        String uname = res.getString("USERNAME");
        String pass = res.getString("PASSWORD");
        Boolean status = res.getBoolean("status");
        Staff staff = new Staff(id, fname,lname, email, position, address, uname, pass, status, mobile );
        return staff;
//        System.out.println(fname + ", " + lname + ", " + address +
//                           ", " + email + ", " + position);
      }
    } catch (SQLException e) {
      System.out.println("something went wrong");
    }
        return null;
       
        
        
  }

   

}


