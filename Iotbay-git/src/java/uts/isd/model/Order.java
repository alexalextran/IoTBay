/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package uts.isd.model;

import java.util.ArrayList;

/**
 *
 * @author Alex Tran
 */
public class Order {
   private int orderId;
   private int userID;
   private boolean orderStatus;
   private String orderDate;
   private ArrayList<ProductOrder> productOrder;
   

    public Order(int orderId, int userID, boolean orderStatus, String orderDate) {
        this.orderId = orderId;
        this.userID = userID;
        this.orderStatus = orderStatus;
        this.orderDate = orderDate;
        productOrder = new ArrayList<ProductOrder>();
       
    }
   
   
   
}
