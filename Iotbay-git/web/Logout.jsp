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
        <div class="welcome__details box-shadow">
            <h1>You have successfully <span class="turqoise">logged</span> out</h1>
            <a href="index.html" class="button__link turqoiseBG">Click here to head back to the start</a>  
        </div>

    </body>
</html>
