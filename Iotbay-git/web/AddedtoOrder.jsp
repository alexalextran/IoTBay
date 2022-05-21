<%-- 
    Document   : AddedtoOrder
    Created on : 21 May 2022, 3:00:53 pm
    Author     : j13x002
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uts.isd.controller.InsertingOrders"%>
<%@page import="uts.isd.controller.FetchSelectedProduct"%>
<%@page import="uts.isd.model.Order"%>
<%@page import="uts.isd.model.Product"%>
<%@page import="uts.isd.model.Customer"%>




<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <% 
      int amount = Integer.parseInt(request.getParameter("amount"));
      int productid = Integer. parseInt(request.getParameter("productid"));
      FetchSelectedProduct fp = new FetchSelectedProduct(); 
      Product product = fp.getProduct(fp.getConnDB(), productid);
      InsertingOrders ATO = new InsertingOrders();
      Customer customer = (Customer)session.getAttribute("user"); 
      ATO.Insert(ATO.getConnDB(), product.getname(), amount, product.getprice()*amount, customer.getId());
    %>
    
    
    <body>
        <h1>Your order has been added to cart!</h1>
 <a href="MyOrder.jsp">Go Back</a>  
    </body>
</html>
