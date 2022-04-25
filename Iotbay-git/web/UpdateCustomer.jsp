<%-- 
    Document   : Update
    Created on : 15 Apr 2022, 11:36:43 pm
    Author     : Alex Tran
--%>

<%@page import="uts.isd.model.Customer"%>
<%@page import="uts.isd.model.Staff"%>
<%@page import="uts.isd.controller.UpdateCustomer"%>
<%@page import="uts.isd.controller.UpdateStaff"%>

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
            //update customer
            if(request.getParameter("user").equals("customer")){
            
            Customer customer = (Customer)session.getAttribute("user"); 
            //if successful update
            if(request.getParameter("email") != null || request.getParameter("password") != null || request.getParameter("name") != null || request.getParameter("phone") != null){
           
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
                <form class="enterform__input" method="POST" action="UpdateCustomer.jsp?user=customer">
              <h3>Name</h3>
            <input type="text" name="name" value="<% out.println(customer.getName()); %>" />
              <h3>Email</h3>
            <input type="text" name="email" value="<% out.println(customer.getEmail()); %>" />
              <h3>Password</h3>
            <input type="text" name="password" value="<% out.println(customer.getPassword()); %>"/>
              <h3>Phone</h3>
            <input type="text" name="phone" value="<% out.println(customer.getPhone()); %>"/>
            <button class="button__link">Submit</button>
        </form>
            
            <a href="Main.jsp?user=customer">Back to welcome page</a>
            </div>
          <%
            // no changes
        } else{
             customer = (Customer)session.getAttribute("user");
            %>
              <div class="enterform box-shadow">
                <form class="enterform__input" method="POST" action="UpdateCustomer.jsp?user=customer">
              <h3>Name</h3>
                  <input type="text" name="name" value="<% out.println(customer.getName()); %>" />
              <h3>Email</h3>
            <input type="text" name="email" value="<% out.println(customer.getEmail()); %>" />
              <h3>Password</h3>
            <input type="text" name="password" value="<% out.println(customer.getPassword()); %>"/>
              <h3>Phone</h3>
            <input type="text" name="phone" value="<% out.println(customer.getPhone()); %>"/>
            <button class="button__link">Submit</button>
        </form>
            
            <a href="Main.jsp?user=customer">Back to welcome page</a>
            </div>
          <%
          }
        } else{
            //staff update

            Staff staff = (Staff)session.getAttribute("user"); 

            String updatedfname = request.getParameter("updatedfname");
            String updatedlname = request.getParameter("updatedlname");
            String updatedaddress = request.getParameter("updatedaddress");
            String updatedemail = request.getParameter("updatedemail");
            String updatedusername = request.getParameter("updatedusername");
            String updatedpassword = request.getParameter("updatedpassword");
            String updatedposition = request.getParameter("updatedposition");
            String updatedmobile = request.getParameter("updatedmobile");
           boolean updatedStatus = true;

            if(updatedfname != null || updatedlname != null || updatedaddress != null || updatedemail != null || updatedusername != null || updatedpassword != null || updatedposition != null || updatedmobile != null){
            //if changes
           UpdateStaff us = new UpdateStaff();
           us.Update(us.getConnDB(), staff.getid(), updatedfname, updatedlname, updatedemail, updatedposition, updatedaddress, updatedusername, updatedpassword, updatedStatus, updatedmobile);
          
       
            
            staff.setFirstName(request.getParameter("updatedfname"));
            staff.setLastName(request.getParameter("updatedlname"));
            staff.setAddress(request.getParameter("updatedaddress"));
            staff.setEmail(request.getParameter("updatedemail"));
            staff.setUsername(request.getParameter("updatedusername"));
            staff.setPassword(request.getParameter("updatedpassword"));
            staff.setPosition(request.getParameter("updatedposition"));
           staff.setMobileNumber(request.getParameter("updatedmobile"));
            //staff.setStatus(request.getParameter("updatedStatus"));
              %>
              
               <div class="welcome__gretting">
                <h1>Your details have been successfully changed</h1> 
                </div>
              
              <div class="enterform box-shadow">
                <form class="enterform__input" method="POST" action="UpdateCustomer.jsp?user=staff">
             
                <h3>First Name</h3>
                <input type="text" name="updatedfname" value="<% out.println(staff.getFirstName()); %>">
           
            
                <h3>Last Name</h3>
                <input type="text" name="updatedlname" value="<% out.println(staff.getLastName()); %>">
           
            
                <h3>Home Address</h3>
                <input type="text"name="updatedaddress" value="<%  out.println(staff.getAddress()); %>">
            
            
              <h3>Email address</h3>
              <input type="email" name="updatedemail" value="<% out.println(staff.getEmail()); %>">
            
            
                <h3>Username</h3>
                <input type="text" name="updatedusername" value="<%  out.println(staff.getUsername()); %>"> 
            
            
              <h3>Password</h3>
              <input type="password" name="updatedpassword" value="<% out.println(staff.getPassword()); %>">
            
            
                <h3>Position</h3>
                <input type="text" name="updatedposition" value="<% out.println(staff.getPosition()); %>">
            
            
                <h3>Mobile Number</h3>
                <input type="text" name="updatedmobile" value="<% out.println(staff.getMobileNumber()); %>">
            
             
                <h3>Staff Status</h3>
                <input type="text" name="updatedstaffStatus" value="true">
            
         <button class="button__link">Submit</button>
        </form>
             
            
              <a href="Main.jsp?user=staff">Back to Main page</a>
             </div>
            <%
               } else{
                // no changes

            staff = (Staff)session.getAttribute("user"); 
               
            %>
                     <div class="enterform box-shadow">
                <form class="enterform__input" method="POST" action="UpdateCustomer.jsp?user=staff">
             
                  <h3>First Name</h3>
                <input type="text" name="updatedfname" value="<% out.println(staff.getFirstName()); %>">
           
            
                <h3>Last Name</h3>
                <input type="text" name="updatedlname" value="<% out.println(staff.getLastName()); %>">
           
            
                <h3>Home Address</h3>
                <input type="text"name="updatedaddress" value="<%  out.println(staff.getAddress()); %>">
            
            
              <h3>Email address</h3>
              <input type="email" name="updatedemail" value="<% out.println(staff.getEmail()); %>">
            
            
                <h3>Username</h3>
                <input type="text" name="updatedusername" value="<%  out.println(staff.getUsername()); %>"> 
            
            
              <h3>Password</h3>
              <input type="password" name="updatedpassword" value="<% out.println(staff.getPassword()); %>">
            
            
                <h3>Position</h3>
                <input type="text" name="updatedposition" value="<% out.println(staff.getPosition()); %>">
            
            
                <h3>Mobile Number</h3>
                <input type="text" name="updatedmobile" value="<% out.println(staff.getMobileNumber()); %>">
             
                <h3>Staff Status</h3>
                <input type="text" name="updatedstaffStatus" value="true">
            
         <button class="button__link">Submit</button>
        </form>
             
            
              <a href="Main.jsp?user=staff">Back to Main page</a>
             </div>
            
            <%
                }
            }
        %>
      
    </body>
</html>
