<%-- 
    Document   : Logout
    Created on : 20 Apr 2022, 11:54:39 pm
    Author     : atran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uts.isd.model.Customer"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="css/css.css">
        <%
            session.invalidate();
          %>
    </head>
    <body>
        <div class='logout'>
         <h1>You have successfully logged out</h1>
        <a href="index.html">Click here to head back to the start</a>  
        </div>

    </body>
</html>
