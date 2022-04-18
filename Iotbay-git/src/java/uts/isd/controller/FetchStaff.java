
package uts.isd.controller;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.*;
import uts.isd.model.Staff;
import uts.isd.model.database.DataBaseConnector;



public class FetchStaff{ 
    private DataBaseConnector dbConn;
    private Connection connDB; 
    
    public FetchStaff() throws ClassNotFoundException, SQLException {
               
       this.dbConn = new DataBaseConnector();
       connDB = dbConn.connectionStart();
    }

    public Connection getConnDB() {
        return connDB;
    }
   
    public static  List <Staff> getStaff(Connection conn) throws SQLException {
    //String sqlQuery = "SELECT * FROM ALIZA.\"Staff\"";
    String sqlQuery = "SELECT * FROM ALIZA.\"Staff\"";
    try (Statement statement = conn.createStatement()) {
      ResultSet res = statement.executeQuery(sqlQuery);
      List <Staff> StaffList = new ArrayList <Staff>();
      

         
      while (res.next()) {
          
        Staff currentStaff = new Staff();
        currentStaff.setid(res.getInt("ID")) ;
        currentStaff.setFirstName(res.getString("FNAME"));
        currentStaff.setLastName(res.getString("LNAME"));
        currentStaff.setAddress(res.getString("ADDRESS"));
        currentStaff.setEmail(res.getString("EMAIL"));
        currentStaff.setPosition(res.getString("POSITION"));
        currentStaff.setMobileNumber(res.getString("MOBILE"));
        currentStaff.setUsername(res.getString("USERNAME"));
        currentStaff.setPassword(res.getString("PASSWORD"));
        currentStaff.setStaffStatus(res.getBoolean("status"));
        StaffList.add(currentStaff);  
      }
        return StaffList;
     
    } catch (SQLException e) {
      System.out.println("something went wrong");
    }
        return null;
       
        
        
  }
//     public static void main(String[] args) throws ClassNotFoundException, SQLException{
//        FetchStaff fs = new FetchStaff();
//        List <Staff> StaffList = fs.getStaff(fs.getConnDB());
//        for(int i = 0; i < StaffList.size(); i++ ){
//        System.out.println(StaffList.get(i).getFirstName());
//        }
//    }

   

}


