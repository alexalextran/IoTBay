/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package uts.isd.model;

/**
 *
 * @author atran
 */
public class Calculator {

   public int add(int a, int b){

      return a+b;

  } 

  public int subtract(int a, int b){

    return a-b;

  }

  public int mul(int a, int b){

      return a*b;

  }

  public double power(int a, int b){

      return Math.pow(a,b);

  }

  public int evaluate(String expression) {

    int sum = 0;

    for (String summand: expression.split("\\+"))

      sum += Integer.valueOf(summand);

    return sum;

  }

}
