
package uts.isd.controller;
//import static com.sun.corba.se.spi.presentation.rmi.StubAdapter.request;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.*;
import uts.isd.model.Payment;
import uts.isd.model.database.DataBaseConnector;



public class FetchPayment{ 
    private DataBaseConnector dbConn;
    private Connection connDB; 
    
    public FetchPayment() throws ClassNotFoundException, SQLException {
               
       this.dbConn = new DataBaseConnector();
       connDB = dbConn.connectionStart();
    }

    public Connection getConnDB() {
        return connDB;
    }
   
     
         public static  ArrayList<Payment> getPayments(Connection conn, int id) throws SQLException {
    
         String sqlQuery = "SELECT * FROM ALIZA.\"Payment\" WHERE CUSTOMERID = "+id+" "; 
 
        Statement statement = conn.createStatement();
        ResultSet res = statement.executeQuery(sqlQuery);
        ArrayList<Payment> paymentList = new ArrayList <Payment>();
      
      while (res.next()) {
        int paymentID = res.getInt(1);
        String cardno = res.getString(2);
        String name = res.getString(3);
        String expdate = res.getString(4);
        String seccode = res.getString(5);
        int orderID = res.getInt(6);
        int customerID = res.getInt(7);
        Payment payment1 = new Payment(paymentID, cardno, name, expdate, seccode, orderID, customerID);
        paymentList.add(payment1);  
      }
        return paymentList;
      
  }

}


