<%-- 
    Document   : DeleteUser
    Created on : 21 Apr 2022, 11:14:12 pm
    Author     : atran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uts.isd.model.Customer"%>
<%@page import="uts.isd.controller.DeleteUser"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/css.css">
        <title>JSP Page</title>
        <%
             Customer customer = (Customer)session.getAttribute("customer"); 
             
             DeleteUser is = new DeleteUser();
             is.Delete(is.getConnDB(), customer.getName());
             
            %>
            
        
    </head>
    <body>
        <div class="welcome__details box-shadow">
            <h1>Your account has been <span class="blue">deleted</span> successfully</h1>
            <a href="index.html" class="button__link">Click here to head back to the start</a>
        </div>
    </body>
</html>
