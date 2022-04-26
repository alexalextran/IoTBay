<%-- 
    Document   : register
    Created on : 12 Apr 2022, 11:09:49 pm
    Author     : Alex Tran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uts.isd.model.Customer"%>
<%@page import="uts.isd.controller.InsertCustomer"%>
<%@page import="uts.isd.controller.ReadCustomer"%>
<%@page import="uts.isd.controller.FindUser"%>
<%@page import="uts.isd.model.Staff"%>
<%@page import="uts.isd.controller.InsertStaff"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/css.css">
    </head>
    <body>
      
           
         <%
             //REGISTERING A STAFF MEMBER
             if(request.getParameter("user").equals("staffregister")){
             String fname = request.getParameter("fname");
              String lname = request.getParameter("lname");
              String address = request.getParameter("address");
              String email = request.getParameter("email");
              String username = request.getParameter("username");
             String password = request.getParameter("password");
             String position = request.getParameter("position");
             String mobile = request.getParameter("mobile");
             Boolean staffStatus = true;
             InsertStaff is = new InsertStaff();
             String result = is.Insert(is.getConnDB(), fname,lname, email, position, address, username, password, staffStatus, mobile);
             FindUser finduser = new FindUser();
             Staff staff = finduser.FindStaff(finduser.getConnDB(), fname, email, password, mobile);
              session.setAttribute("user", staff);
             
             %>
             
             
              <div class="welcome__gretting">
            
            <h1>Welcome <span class="green"><%out.println(fname);%></span> you successfully registered</h1>
        <h1>Your details are</h1>
        </div>
        
        <div class='welcome__details box-shadow'>
           <table class="welcome__table">
     <tr>
         <th class="green">Staff ID</th>
    <th class="green">Name</th>
    <th class="green">Email</th>
    <th class="green">Password</th>
     <th class="green">Phone</th>
     <th class="green">Position</th>
  </tr>
  <td>
      <%out.println(staff.getid());%>
  </td>
  <td>
      <%out.println(staff.getFirstName() + " " + staff.getLastName());%>
  </td>
  <td>
      <%out.println(staff.getEmail());%>
  </td>
  <td>
      <%out.println(staff.getPassword());%>
  </td>
  <td>
      <%out.println(staff.getMobileNumber());%>
  </td>
  <td>
      <%out.println(staff.getPosition());%>
  </td>
        </table>
     
  <a href="Main.jsp?user=staff" class="button__link greenBG"> Proceed to the main page!</a>
         </div>
             <%
             }
             // LOGGING IN A STAFF MEMBER
            else if(request.getParameter("user").equals("stafflogin")) {
            ReadCustomer readCustomer = new ReadCustomer();
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            
            //SUCCESSFUL LOGIN
             if(readCustomer.ReadStaff(readCustomer.getConnDB(), request.getParameter("email"), request.getParameter("password")) != null){
             Staff staff = readCustomer.ReadStaff(readCustomer.getConnDB(), request.getParameter("email"), request.getParameter("password"));
             session.setAttribute("user", readCustomer.ReadStaff(readCustomer.getConnDB(), request.getParameter("email"), request.getParameter("password")));
             %>
            <div class="welcome__gretting">
            
            <h1>Welcome <span class="green"><%out.println(staff.getFirstName());%></span> you successfully Logged in</h1>
        <h1>Your details are</h1>
        </div>
        
        <div class='welcome__details box-shadow'>
           <table class="welcome__table">
     <tr>
     <th class="green">Staff ID</th>
    <th class="green" >Name</th>
    <th class="green">Email</th>
    <th class="green">Password</th>
     <th class="green">Phone</th>
     <th class="green">Position</th>
  </tr>
  <td>
      <%out.println(staff.getid());%>
  </td>
  <td>
      <%out.println(staff.getFirstName() + " " + staff.getLastName());%>
  </td>
  <td>
      <%out.println(staff.getEmail());%>
  </td>
  <td>
      <%out.println(staff.getPassword());%>
  </td>
  <td>
      <%out.println(staff.getMobileNumber());%>
  </td>
  <td>
      <%out.println(staff.getPosition());%>
  </td>
        </table>
     
  <a href="Main.jsp?user=staff" class="button__link greenBG"> Proceed to the main page!</a>
         </div>
                <%
                }
            else{
            //FAILED LOGIN
                %>
                  <div class='welcome__details box-shadow'>
            <h1>The details entered were <span class="green">incorrect</span> please try again!</h1>
     
             <a href="StaffLogin.jsp" class="button__link greenBG"> Try again?</a>
                 </div>
                <%
                } 
                }
             else{
            // REGISTERING A CUSTOMER
            if(request.getParameter("user").equals("customerregister")){
            String name = request.getParameter("Name");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String phone = request.getParameter("phone");
            
            InsertCustomer is = new InsertCustomer();
             is.Insert(is.getConnDB(), name, email, password, phone);
             
             FindUser finduser = new FindUser();
             Customer customer = finduser.Find(finduser.getConnDB(), name, email, password, phone);
            
            session.setAttribute("user", customer);
            
             
             %>
               
        <div class="welcome__gretting">
            
            <h1>Welcome <span class="blue"><%out.println(customer.getName());%></span> you successfully registered</h1>
        <h1>Your details are</h1>
        </div>
        
        <div class='welcome__details box-shadow'>
           <table class="welcome__table">
     <tr>
     <th>Customer ID</th>
    <th>Name</th>
    <th>Email</th>
    <th>Password</th>
     <th>Phone</th>
  </tr>
  <td>
      <%out.println(customer.getId());%>
  </td>
  <td>
      <%out.println(customer.getName());%>
  </td>
  <td>
      <%out.println(customer.getEmail());%>
  </td>
  <td>
      <%out.println(customer.getPassword());%>
  </td>
  <td>
      <%out.println(customer.getPhone());%>
  </td>
        </table>
     
  <a href="Main.jsp?user=customer" class="button__link"> Proceed to the main page!</a>
         </div>
            
             <% } else{
             //LOGGIN IN A CUSTOMER
             ReadCustomer readCustomer = new ReadCustomer();
            String email = request.getParameter("email");
            String password = request.getParameter("password");
     
            //SUCCESFFUL LOGIN
             if(readCustomer.Read(readCustomer.getConnDB(), request.getParameter("email"), request.getParameter("password")) != null){
             Customer customer = readCustomer.Read(readCustomer.getConnDB(), request.getParameter("email"), request.getParameter("password"));
             session.setAttribute("user", customer);
              
             %>
              <div class="welcome__gretting">
            
            <h1>Welcome <span class="blue"><%out.println(customer.getName());%></span> you successfully logged in</h1>
        <h1>Your details are</h1>
        </div>
        
        <div class='welcome__details box-shadow'>
            <table class="welcome__table">
     <tr>
     <th>Customer ID</th>
    <th>Name</th>
    <th>Email</th>
    <th>Password</th>
     <th>Phone</th>
  </tr>
  <td>
      <%out.println(customer.getId());%>
  </td>
  <td>
      <%out.println(customer.getName());%>
  </td>
  <td>
      <%out.println(customer.getEmail());%>
  </td>
  <td>
      <%out.println(customer.getPassword());%>
  </td>
  <td>
      <%out.println(customer.getPhone());%>
  </td>
        </table>
     
  <a href="Main.jsp?user=customer" class="button__link"> Proceed to the main page!</a>
         </div>
             
             
             <%
             } else{
               //FAILED LOGIN
            %>
        </div>
        
        <div class='welcome__details box-shadow'>
        <h1>The details entered were <span class="blue">incorrect</span> please try again!</h1>
     
         <a href="Login.jsp" class="button__link"> Try again?</a>
         </div>
             <%
             }
             }
             }
        %> 
        
      
       
            
            
    </body>
</html>
