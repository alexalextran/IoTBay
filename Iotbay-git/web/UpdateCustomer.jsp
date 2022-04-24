<%-- 
    Document   : Update
    Created on : 15 Apr 2022, 11:36:43 pm
    Author     : Alex Tran
--%>

<%@page import="uts.isd.model.Customer"%>
<%@page import="uts.isd.controller.UpdateCustomer"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/css.css">
    </head>
    <body>
        <% 
             Customer customer = (Customer)session.getAttribute("customer"); 
            if(request.getParameter("email") != null || request.getParameter("password") != null || request.getParameter("name") != null || request.getParameter("name") != null){
           
            UpdateCustomer updateCustomer = new UpdateCustomer();
            updateCustomer.Update(updateCustomer.getConnDB(), request.getParameter("name"), request.getParameter("email"), request.getParameter("password"), request.getParameter("phone"), customer.getId());
       
            
            customer.setName(request.getParameter("name"));
            customer.setEmail(request.getParameter("email"));
            customer.setPassword(request.getParameter("password"));
            customer.setPhone(request.getParameter("phone"));
            %>
            <div class="welcome__gretting">
                <h1>Your details have been successfully changed</h1> 
            </div>
           
            <div class="enterform box-shadow">
                <form class="enterform__input" method="POST" action="UpdateCustomer.jsp">
              <h3>Name</h3>
            <input type="text" name="name" value="${customer.name}" />
              <h3>Email</h3>
            <input type="text" name="email" value="${customer.email}" />
              <h3>Password</h3>
            <input type="text" name="password" value="${customer.password}"/>
              <h3>Phone</h3>
            <input type="text" name="phone" value="${customer.phone}"/>
            <button class="button__link">Submit</button>
        </form>
            
            <a href="Main.jsp">Back to welcome page</a>
            </div>
           <% 
               } else{ 
           %>
           <div class="enterform box-shadow">
                <form class="enterform__input" method="POST" action="UpdateCustomer.jsp">
              <h3>Name</h3>
            <input type="text" name="name" value="${customer.name}" />
              <h3>Email</h3>
            <input type="text" name="email" value="${customer.email}" />
              <h3>Password</h3>
            <input type="text" name="password" value="${customer.password}"/>
              <h3>Phone</h3>
            <input type="text" name="phone" value="${customer.phone}"/>
            <button class="button__link">Submit</button>
        </form>
            
            <a href="Main.jsp">Back to welcome page</a>
            </div>
            <% 
            }
        %>
      
    </body>
</html>
