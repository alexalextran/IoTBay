<%-- 
    Document   : DeletedOrder
    Created on : 21 May 2022, 8:36:04 pm
    Author     : j13x002
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uts.isd.controller.DeleteOrder"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <% 
        DeleteOrder DO = new DeleteOrder();
        int orderid = Integer. parseInt(request.getParameter("orderid"));
        DO.Delete(DO.getConnDB(), orderid);

    %>
    
    <body>
        <div class="welcome__details box-shadow">
        <h1>Order has been deleted!</h1>
        <a href="MyOrder.jsp" class="button__link">Go back to My Orders</a>
        </div>
    </body>
    
    
</html>
