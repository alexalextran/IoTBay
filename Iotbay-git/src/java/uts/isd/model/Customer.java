/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package uts.isd.model;

import java.util.ArrayList;
import java.io.Serializable;
//alexgayloltest
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
    private ArrayList<AcessLog> AcessLogs;
    
    

    public Customer(int id, String name, String email, String password, String phone) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.password = password;
        this.phone = phone;
        
    }

    public void setAcessLogs(ArrayList<AcessLog> AcessLogs) {
        this.AcessLogs = AcessLogs;
    }

    public ArrayList<AcessLog> getAcessLogs() {
        return AcessLogs;
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
