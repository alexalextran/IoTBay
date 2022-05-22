<%-- 
    Document   : addPaymentMethod
    Created on : 22 May 2022, 4:07:57 pm
    Author     : vietd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uts.isd.controller.UpdatePayment"%>



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
    
    <% 
  int paymentid = Integer.valueOf(request.getParameter("paymentid"));

  if(request.getParameter("cardno") != null && request.getParameter("name") != null && request.getParameter("expdate") != null && request.getParameter("seccode") != null){
        UpdatePayment payment = new UpdatePayment();
        payment.Update(payment.getConnDB(), request.getParameter("cardno"), request.getParameter("name"), request.getParameter("expdate"), request.getParameter("seccode"), paymentid);
            }
    %>
    <body>
        
<div class="viewStaff">
           <div class="viewStaff-inner">
               <h1>Update Current Payment Details</h1>
          
           </div>         

    <form class="enterform__input" action="updatePaymentMethod.jsp?paymentid=<%=  paymentid %>" method="POST">
            <input type="text" name="cardno" value="" placeholder="Card number"/>
            <input type="text" name="name" value="" placeholder="Name on card"/>
            <input type="text" name="expdate" value="" placeholder="Expiration date (MM / YY)"/>
            <input type="text" name="seccode" value="" placeholder="Security code"/>
            <button class='button'>Save</button>
            <a href="Main.jsp?user=customer">Back to Main page</a>
        </form>
      
    </body>
</html>
