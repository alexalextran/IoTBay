<%-- 
    Document   : deletePayment
    Created on : 22 May 2022, 6:47:16 pm
    Author     : vietd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uts.isd.controller.DeletePayment"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="css/css.css">
    </head>
    
    <% 
        DeletePayment payment = new DeletePayment();
        payment.Delete(payment.getConnDB(), Integer.parseInt(request.getParameter("paymentid")));

    %>
    
    <body>
        <div class="welcome__details box-shadow">
        <h1>Order has been deleted!</h1>
        <a href="MyOrder.jsp" class="button_link">Go back to My Orders</a>
        </div>
    </body>
    
    
</html>
