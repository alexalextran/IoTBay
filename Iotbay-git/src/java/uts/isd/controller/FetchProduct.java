
package uts.isd.controller;
//import static com.sun.corba.se.spi.presentation.rmi.StubAdapter.request;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.*;
import uts.isd.model.Product;
import uts.isd.model.database.DataBaseConnector;



public class FetchProduct{ 
    private DataBaseConnector dbConn;
    private Connection connDB; 
    
    public FetchProduct() throws ClassNotFoundException, SQLException {
               
       this.dbConn = new DataBaseConnector();
       connDB = dbConn.connectionStart();
    }

    public Connection getConnDB() {
        return connDB;
    }
   
    public static  List <Product> getProduct(Connection conn, String params) throws SQLException {
    String sqlQuery;
    if(params!=null){
        sqlQuery = "SELECT * FROM ALIZA.\"Product\" WHERE NAME like '%" +params+"%' or TYPE like '%" +params+"%'"; 
    }else{
        sqlQuery = "SELECT * FROM ALIZA.\"Product\"";
    }
    //String sqlQuery = "SELECT * FROM ALIZA.\"Staff\"";
    try (Statement statement = conn.createStatement()) {
      ResultSet res = statement.executeQuery(sqlQuery);
      List<Product> ProductList = new ArrayList<Product>();
      

         
      while (res.next()) {
          
        Product currentProduct = new Product();
        currentProduct.setid(res.getInt("ID")) ;
        currentProduct.setname(res.getString("NAME"));
        currentProduct.setstock(res.getInt("STOCK"));
        currentProduct.setprice(res.getDouble("PRICE"));
        currentProduct.settype(res.getString("TYPE"));
       
        ProductList.add(currentProduct);  
      }
        return ProductList;
     
    } catch (SQLException e) {
      System.out.println("something went wrong");
    }
        return null;
       
        
        
  }

   

}


