<%-- 
    Document   : register
    Created on : 12 Apr 2022, 11:09:49 pm
    Author     : Alex Tran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uts.isd.model.Customer"%>
<%@page import="uts.isd.controller.InsertUser"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/css.css">
    </head>
    <body>
      
           
         <%
 
            String name = request.getParameter("Name");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String phone = request.getParameter("phone");
            Customer customer = new Customer(name, email , password);
            
            session.setAttribute("customer", customer);
            
             InsertUser is = new InsertUser();
             String result = is.Insert(is.getConnDB(), name, email, password, phone);
        %> 
        
        
        <div class="welcome__gretting">
            
            <h1>Welcome <span class="blue"><%out.println(name);%></span> you successfully logged in</h1>
        <h1>Your details are</h1>
        </div>
        
        <div class='welcome__details box-shadow'>
            <table class="welcome__table">
     <tr>
    <th>Name</th>
    <th>Email</th>
    <th>Password</th>
  </tr>
  <td>
      <%out.println(name);%>
  </td>
  <td>
      <%out.println(email);%>
  </td>
  <td>
      <%out.println(password);%>
  </td>
        </table>
     <%= result %>
  <a href="Main.jsp"> Proceed to the main page!</a>
         </div>
       
            
            
    </body>
</html>
