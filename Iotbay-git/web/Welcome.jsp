<%-- 
    Document   : register
    Created on : 12 Apr 2022, 11:09:49 pm
    Author     : Alex Tran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
           <%@page import="Beans.Customer"%> 
         <%
 
            String name = request.getParameter("Name");
            String email=request.getParameter("email");
            String password = request.getParameter("password");
            Customer customer = new Customer(name, email , password);
            
            session.setAttribute("customer", customer);
            
        
        %> 
        
        <a href="index.jsp">Index page</a>
        
        <h1>Welcome <%out.println(name);%> </h1>
        <h1>Your details are</h1>
         <h1>email : <%out.println(email);%> </h1>
            <h1>password : <%out.println(password);%></h1>
            
            <a href="Main.jsp"> Proceed to the main page!</a>
    </body>
</html>
