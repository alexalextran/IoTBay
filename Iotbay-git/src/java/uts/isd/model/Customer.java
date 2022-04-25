/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package uts.isd.model;

import java.util.ArrayList;
import java.io.Serializable;

/**
 *
 * @author atran
 */
public class Customer implements Serializable{
    private int id;
    private String name;
    private String email;
    private String password;
    private String phone;
    private ArrayList<Order> order;
    private Products products;
    
    

    public Customer(int id, String name, String email, String password, String phone) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.password = password;
        this.phone = phone;
        order = new ArrayList<Order>();
        products = new Products();
    }
    
    public void createOrdrer(String userID, boolean status, String date, String productName){
      
    }
    
    

    public void setName(String name) {
        this.name = name;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
  

    public void setPhone(String phone) {
        this.phone = phone;
    }
    
    

    public int getId() {
        return id;
    }

    public String getPhone() {
        return phone;
    }
    

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
