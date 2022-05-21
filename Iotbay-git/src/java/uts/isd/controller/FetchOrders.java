
package uts.isd.controller;
//import static com.sun.corba.se.spi.presentation.rmi.StubAdapter.request;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.*;
import uts.isd.model.Order;
import uts.isd.model.database.DataBaseConnector;



public class FetchOrders{ 
    private DataBaseConnector dbConn;
    private Connection connDB; 
    
    public FetchOrders() throws ClassNotFoundException, SQLException {
               
       this.dbConn = new DataBaseConnector();
       connDB = dbConn.connectionStart();
    }

    public Connection getConnDB() {
        return connDB;
    }
   
    public static  List <Order> getOrders(Connection conn, String params) throws SQLException {
    String sqlQuery;
    if(params!=null){
        sqlQuery = "SELECT * FROM ALIZA.\"Order\" WHERE NAME like '%" +params+"%' or TYPE like '%" +params+"%'"; 
    }else{
        sqlQuery = "SELECT * FROM ALIZA.\"Order\"";
    }
    //String sqlQuery = "SELECT * FROM ALIZA.\"Staff\"";
    try (Statement statement = conn.createStatement()) {
      ResultSet res = statement.executeQuery(sqlQuery);
      List<Order> OrderList = new ArrayList<Order>();
      

         
      while (res.next()) {
          
        Order currentOrder = new Order();
        currentOrder.setID(res.getInt("ID"));
        currentOrder.setName(res.getString("NAME"));
        currentOrder.setAmount(res.getInt("AMOUNT"));
        currentOrder.setPrice(res.getDouble("PRICE"));
        
       
        OrderList.add(currentOrder);  
      }
        return OrderList;
     
    } catch (SQLException e) {
      System.out.println("something went wrong");
    }
        return null;
       
        
        
  }

   

}


