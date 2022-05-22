<%-- 
    Document   : addPaymentMethod
    Created on : 22 May 2022, 4:07:57 pm
    Author     : vietd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uts.isd.controller.InsertPayment"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment Method</title>
        <link rel="stylesheet" href="css/css.css">
    </head>
    
    <% 
  int orderid = Integer.parseInt(request.getParameter("orderid"));

  if(request.getParameter("cardno") != null && request.getParameter("name") != null && request.getParameter("expdate") != null && request.getParameter("seccode") != null){
            InsertPayment payment = new InsertPayment();
            payment.Insert(payment.getConnDB(), request.getParameter("cardno"), request.getParameter("name"), request.getParameter("expdate"),  request.getParameter("seccode"), orderid);
            }
    %>
    <body>
        <p>"Your payment details have been added</p>
        <form class="enterform__input" action="addPaymentMethod.jsp?orderid=<%= orderid %>" method="POST">
            <input type="text" name="cardno" value="" placeholder="Card number"/>
            <input type="text" name="name" value="" placeholder="Name on card"/>
            <input type="text" name="expdate" value="" placeholder="Expiration date (MM / YY)"/>
            <input type="text" name="seccode" value="" placeholder="Security code"/>
            <button class='button'>Save</button>
            <a href="Main.jsp?user=customer">Back to Main page</a>
        </form>
      
    </body>
</html>
