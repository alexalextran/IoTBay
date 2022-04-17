<%-- 
    Document   : Main
    Created on : 15 Apr 2022, 11:34:51 pm
    Author     : Alex Tran
--%>

<%@page import="Beans.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
              <%
              Customer customer = (Customer)session.getAttribute("customer");
              String name = customer.returnName();
             %> 
    </head>
    <body>
        <header>Hey ${customer.name} welcome to IOT BAY!</header>
        <div>
            <a href="Update.jsp">Update Details</a>
            <a href="Products.jsp">View Products</a>
        </div>
    </body>
</html>
