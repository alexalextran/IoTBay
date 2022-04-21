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
        <title>JSP Page</title>
        <%
             Customer customer = (Customer)session.getAttribute("customer"); 
             
             DeleteUser is = new DeleteUser();
             String result = is.Delete(is.getConnDB(), customer.getName());
             
            %>
            
        
    </head>
    <body>
         <%= result %>
        <div>
            Your account has been deleted successfully
            <a href="index.html">Click here to head back to the start</a>
        </div>
    </body>
</html>
