
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
   
    public static  List <Payment> getPayments(Connection conn, String params, int customerid) throws SQLException {
    String sqlQuery;
    if(params!=null){
        if(!params.contains("/")){
            int id = Integer.parseInt(params);
            sqlQuery = "SELECT * FROM ALIZA.\"Payment\" WHERE CUSTOMERID = "+customerid+" and ID = " +id+"  " ; 
        }
        
        else{
            sqlQuery = "SELECT * FROM ALIZA.\"Payment\" WHERE CUSTOMERID = "+customerid+" and DATE = '"+params+"' " ; 

        }
        
        
    }else{
        sqlQuery = "SELECT * FROM ALIZA.\"Payment\" WHERE CUSTOMERID = "+customerid+"";
    }
    //String sqlQuery = "SELECT * FROM ALIZA.\"Staff\"";
    try (Statement statement = conn.createStatement()) {
      ResultSet res = statement.executeQuery(sqlQuery);
      List<Payment> PaymentList = new ArrayList<Payment>();
      

         
      while (res.next()) {
          
        Payment currentPayment = new Payment();
        currentPayment.setID(res.getInt("ID"));
        currentPayment.setDate(res.getString("DATE"));
        currentPayment.setName(res.getString("NAME"));
        currentPayment.setAmount(res.getInt("AMOUNT"));
        currentPayment.setPrice(res.getDouble("PRICE"));
        
       
        PaymentList.add(currentPayment);  
      }
        return PaymentList;
     
    } catch (SQLException e) {
      System.out.println("something went wrong");
    }
        return null;
       
        
        
  }

   

}


