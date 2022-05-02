<%-- 
    Document   : addedStaff
    Created on : 17/04/2022, 10:03:44 PM
    Author     : Aliza faisal
--%>

<%@page import="uts.isd.model.Staff"%>
<%@page import="uts.isd.controller.InsertStaff"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
    <head>
              <%
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
              %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Added Staff</title>
          <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
            <link rel="stylesheet" href="style.css">
    </head>
    
    <body> 
        <div class="record-wrapper">
          <div class="records-inner">
        <div class="alert alert-success" role="alert">
          <img class="tick" src="images/tick.png">
          <p> <%= result %></p>
        </div>
      </div>
        <a href="viewStaff.jsp" class="btn btn-primary">View Staff Members</a>
          
  
         </div>
         
      </body>
   
</html>


