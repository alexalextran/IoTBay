/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package uts.isd.model;

import java.util.ArrayList;

/**
 *
 * @author vietd
 */
public class Payment {
  private int PaymentID;
  private String name;
  private String card;
  private String expdate;
  private int CustomerID;

    public int getCustomerID() {
        return CustomerID;
    }

    public void setCustomerID(int CustomerID) {
        this.CustomerID = CustomerID;
    }

    public int getPaymentID() {
        return PaymentID;
    }

    public void setPaymentID(int PaymentID) {
        this.PaymentID = PaymentID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCard() {
        return card;
    }

    public void setCard(String card) {
        this.card = card;
    }

    public String getExpdate() {
        return expdate;
    }

    public void setExpdate(String expdate) {
        this.expdate = expdate;
    }

    public String getSeccode() {
        return seccode;
    }

    public void setSeccode(String seccode) {
        this.seccode = seccode;
    }

    public int getOrderID() {
        return OrderID;
    }

    public void setOrderID(int OrderID) {
        this.OrderID = OrderID;
    }
  private String seccode;
  private int OrderID;

    public Payment(int PaymentID, String card, String name, String expdate, String seccode, int OrderID, int CustomerID) {
        this.PaymentID = PaymentID;
        this.name = name;
        this.card = card;
        this.expdate = expdate;
        this.CustomerID = CustomerID;
        this.seccode = seccode;
        this.OrderID = OrderID;
    }

}
