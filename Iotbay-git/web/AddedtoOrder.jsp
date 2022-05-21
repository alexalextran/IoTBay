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



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <% 
      int productid = Integer. parseInt(request.getParameter("productid"));
      FetchSelectedProduct fp = new FetchSelectedProduct(); 
      Product product = fp.getProduct(fp.getConnDB(), productid);
      InsertingOrders ATO = new InsertingOrders();
      ATO.Insert(ATO.getConnDB(), product.getname(), 1, product.getprice());
    %>
    
    
    <body>
        <h1>Your order has been added to cart!</h1>
 <a href="MyOrder.jsp">Go Back</a>  
    </body>
</html>
