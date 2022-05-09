
package uts.isd.controller;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import uts.isd.model.Product;
import uts.isd.model.database.DataBaseConnector;



public class FetchSelectedProduct{ 
    private DataBaseConnector dbConn;
    private Connection connDB; 
    
    public FetchSelectedProduct() throws ClassNotFoundException, SQLException {
       this.dbConn = new DataBaseConnector();
       connDB = dbConn.connectionStart();
    }

    public Connection getConnDB() {
        return connDB;
    }
    
    public static Product getProduct(Connection conn, int selectid ) throws SQLException {
    String sqlQuery = "SELECT * FROM ALIZA.\"Product\" WHERE ID = " + selectid;
    try (Statement statement = conn.createStatement()) {
      ResultSet res = statement.executeQuery(sqlQuery);
      while (res.next()) {
        int id = res.getInt("ID");
        String name = res.getString("NAME");
        double price = Double.parseDouble(res.getString("PRICE"));
        String type = res.getString("TYPE");
        int stock = Integer.parseInt(res.getString("STOCK"));
        Product product = new Product(id, name, stock, type, price  );
        return product;
//        System.out.println(fname + ", " + lname + ", " + address +
//                           ", " + email + ", " + position);
      }
    } catch (SQLException e) {
      System.out.println("something went wrong");
    }
        return null;
       
        
        
  }

   

}


