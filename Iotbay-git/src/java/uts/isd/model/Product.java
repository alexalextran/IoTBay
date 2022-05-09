/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package uts.isd.model;

import java.util.ArrayList;
import java.io.Serializable;
/**
 *
 * @author Alex Tran
 */
public class Product {
    private String name;
    private int stock;
    private double price;
    private String description;

    public Product(String name, int stock, double price, String description) {
        this.name = name;
        this.stock = stock;
        this.price = price;
        this.description = description;
        ArrayList AddProduct = new ArrayList<Product>();
        
    }
    
    public void createProduct(String name, int stock, double price, String description){
      
    }
    
        public String getname() {
        return name;
    }
    
        public int getstock() {
        return stock;
    }
    
        public double getprice() {
        return price;
    }
        
        public String getdescription() {
        return description;
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
    
    public void setdescription(String description) {
        this.description = description;
    }
    
    
    
    

}
