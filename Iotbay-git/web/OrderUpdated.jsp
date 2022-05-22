<%-- 
    Document   : OrderUpdated
    Created on : 21 May 2022, 10:49:15 pm
    Author     : j13x002
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uts.isd.model.Order"%>
<%@page import="uts.isd.controller.UpdateOrder"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <% 
        int updateamount = Integer.parseInt(request.getParameter("updateamount"));
        int orderid = Integer.parseInt(request.getParameter("orderid"));

        UpdateOrder UO = new UpdateOrder();
        
        UO.Update(UO.getConnDB(),updateamount,orderid);


        %>
    
    <body>
       
        <h1>Your order has been updated!</h1>
        <a href="MyOrder.jsp" class="btn btn-primary">Go back</a>

    </body>
</html>
