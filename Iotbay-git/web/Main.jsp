<%-- 
    Document   : Main
    Created on : 15 Apr 2022, 11:34:51 pm
    Author     : Alex Tran
--%>

<%@page import="uts.isd.model.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/css.css">
              <%
              Customer customer = (Customer)session.getAttribute("customer"); 
              %> 
    </head>
    <body>
        <header>Hey ${customer.name} welcome to IOT BAY!</header>
        <div class='main__div'>
            
            <div class="main__account">
              <h2>Account & Details</h2>
            <a href="Update.jsp">Update Details</a>
             <a href="Update.jsp">Delete account</a>
            <a href="Logout.jsp">Log out</a>
           
        </div>
            
            <div class='main__products'>
                <h2>Orders & Products</h2>
                <a href="Products.jsp">View Products </a>
                <a href="Products.jsp">My Orders</a>
                
            </div>
            
        </div>
        
    </body>
</html>
