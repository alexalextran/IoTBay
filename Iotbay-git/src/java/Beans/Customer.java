/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Beans;

import java.util.ArrayList;
import java.io.Serializable;

/**
 *
 * @author atran
 */
public class Customer implements Serializable{
    private String name;
    private String email;
    private String password;
    private ArrayList<Order> order;
    private Products products;
    

    public Customer(String name, String email, String password) {
        this.name = name;
        this.email = email;
        this.password = password;
        order = new ArrayList<Order>();
        products = new Products();
    }
    
    public void createOrdrer(String userID, boolean status, String date, String productName){
      
    }
    
   //ublic Product findProduct(String name){
       //turn products.findProduct();
   //

    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }
    
}
