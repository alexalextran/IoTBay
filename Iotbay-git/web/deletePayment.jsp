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
    </head>
    
    <% 
        DeletePayment payment = new DeletePayment();
        payment.Delete(payment.getConnDB(), 1);

    %>
    
    <body>
        <h1>Order has been deleted!</h1>
        <a href="MyOrder.jsp" class="btn btn-primary">Go back to My Orders</a>
    </body>
    
    
</html>
