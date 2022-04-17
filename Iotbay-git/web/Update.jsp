<%-- 
    Document   : Update
    Created on : 15 Apr 2022, 11:36:43 pm
    Author     : Alex Tran
--%>

<%@page import="Beans.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            if(request.getParameter("email") != null || request.getParameter("password") != null || request.getParameter("name") != null){
            customer.setName(request.getParameter("name"));
            session.setAttribute("customer", customer);
            }
            
         Customer customer = (Customer)session.getAttribute("customer"); 
        %>
        <form method="POST" action=""Update.jsp>
            <input type="text" name="name" value="${customer.name}" />
            <input type="text" name="email" value="${customer.email}" />
            <input type="text" name="password" value="${customer.password}"/>
            <button>Submit</button>
        </form>
            
            <a href="Main.jsp">Back to welcome page</a>
    </body>
</html>
