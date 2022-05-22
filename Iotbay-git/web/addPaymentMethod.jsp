<%-- 
    Document   : addPaymentMethod
    Created on : 22 May 2022, 4:07:57 pm
    Author     : vietd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uts.isd.controller.InsertPayment"%>
<%@page import="uts.isd.model.Customer"%>
<%@page import="uts.isd.model.Payment"%>
<%@page import="uts.isd.controller.FetchPayment"%>
<%@page import="java.util.ArrayList"%>

<%@page import="uts.isd.controller.InsertPayment"%>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment Method</title>
        <link rel="stylesheet" href="css/css.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
     <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
       <link rel="stylesheet" href="style.css">
    </head>
    <body>
    
    <% 
  int orderid = Integer.parseInt(request.getParameter("orderid"));

            InsertPayment payment = new InsertPayment();
            Customer customer = (Customer)session.getAttribute("user"); 
            payment.Insert(payment.getConnDB(), request.getParameter("cardno"), request.getParameter("name"), request.getParameter("expdate"),  request.getParameter("seccode"), orderid, customer.getId());
            
            FetchPayment readpayment = new FetchPayment();
        
           
    %>
    
               
<div class="viewStaff">
           <div class="viewStaff-inner">
               <h1>My Payment Details</h1>
          
           </div>         

        <table class="table">
            <thead>
                    <tr>
                <th scope="col">PaymentID</th>
                <th scope="col">Name</th>
                <th scope="col">Debit Card Number</th>
                <th scope="col">Expiration Date</th>
                <th scope="col">Security Number</th>

                <th scope="col">Delete</th>
                <th scope="col">Update</th>
                <th scope="col">Use To Pay</th>

              </tr>
 
              
                <%
           ArrayList<Payment> payments = readpayment.getPayments(readpayment.getConnDB(), customer.getId());
           for(int i = 0; i < payments.size(); i++ ){
            int paymentID = payments.get(i).getPaymentID();
            String cardno = payments.get(i).getCard();
            String name = payments.get(i).getName();
            String expdate = payments.get(i).getExpdate();
            String seccode = payments.get(i).getSeccode();
            
            %>
          
            </thead>
             <tbody>
                 <td><%= paymentID%></td>
                 <td><%= name%></td>
                 <td><%= cardno%></td>
                 <td><%= expdate%></td>
                 <td><%= seccode%></td>
                <td><a href="deletePayment.jsp?paymentid=<%= paymentID %>" class="btn btn-primary">DELETE</a></td>
                <td><a href="updatePaymentMethod.jsp?paymentid=<%= paymentID %>" class="btn btn-primary">UPDATE</a></td>
                <td><a href="finishOrder.jsp" class="btn btn-primary">USE</a></td>

             </tbody>
             <%
                 }
             %>
        </table>
        <form class="enterform__input" action="addPaymentMethod.jsp?orderid=<%= orderid %>" method="POST">
            <input type="text" name="cardno" value="" placeholder="Card number"/>
            <input type="text" name="name" value="" placeholder="Name on card"/>
            <input type="text" name="expdate" value="" placeholder="Expiration date (MM / YY)"/>
            <input type="text" name="seccode" value="" placeholder="Security code"/>
            <button class='button'>Save</button>
            <a href="Main.jsp?user=customer">Back to Main page</a>
        </form>
    </body
        
 

  
</html>
