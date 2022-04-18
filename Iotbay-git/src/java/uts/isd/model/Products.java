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
public class Products {
      private ArrayList<Product> products;

    public Products() {
         products = new ArrayList<Product>();
         products.add(new Product("WebCam", 20, 50.25, "windows compatable webcam 1080p"));
    }
      
      
}
