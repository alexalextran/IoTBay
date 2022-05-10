/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package uts.isd.model;

import java.util.ArrayList;
import java.io.Serializable;
/**
 *
 * @author Brendon Mai
 */
public class Product {
     private int id;
    private String name;
    private int stock;
    private double price;
    private String type;

    public Product(int id, String name, int stock, String type, double price) {
        this.id = id;
        this.name = name;
        this.stock = stock;
        this.price = price;
        this.type = type;
    }
      public int getid() {
        return id;
    }
       public void setid( int id) {
        this.id= id;
    }
    
      public Product() {
    }
    
//    public void createProduct(String name, int stock, double price, String description){
//      
//    }
//    
        public String getname() {
        return name;
    }
    
        public int getstock() {
        return stock;
    }
    
        public double getprice() {
        return price;
    }
        
        public String gettype() {
        return type;
    }
    
     public void setname(String name) {
        this.name = name;
    }
     
    public void setstock(int stock) {
        this.stock = stock;
    }
    
    public void setprice(double price) {
        this.price = price;
    }
    
    public void settype(String type) {
        this.type = type;
    }
    
    
    
    

}
