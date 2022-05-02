<%-- 
    Document   : editStaff
    Created on : 14/04/2022, 7:48:23 PM
    Author     : Aliza faisal
--%>
<%@page import="uts.isd.model.Staff"%>
<%@page import="uts.isd.controller.FetchSelectedStaff"%>
<%@page import="uts.isd.controller.UpdateStaff"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Staff Details</title>
          <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
            <link rel="stylesheet" href="style.css">
    </head>
    
    

        <%
        int id = Integer. parseInt(request.getParameter("id"));
        FetchSelectedStaff fss = new FetchSelectedStaff();
        Staff staff = fss.getStaff(fss.getConnDB() , id);
        String selectedfname = staff.getFirstName();
        String selectedlname = staff.getLastName();
        String selectedaddress = staff.getAddress();
        String selectedemail = staff.getEmail();
        String selectedusername = staff.getUsername();
        String selectedpassword = staff.getPassword();
        String selectedposition = staff.getPosition();
        String selectedmobile = staff.getMobileNumber();
        Boolean selectedstaffStatus = staff.getStaffStatus();
       
        %>
        <body >
            <div class="container">
                <div class="inner-container">
            <h1>Edit Staff Details</h1>
            <form action="updatedStaff.jsp?id=<%= id %>" method="POST">
                <div class="form-group">
                    <label for="fname">First Name</label>
                    <input  type="text" class="form-control" id="fname" placeholder="Enter First Name" name="updatedfname" value="<%= selectedfname %>">
                </div>
                <div class="form-group">
                    <label for="lname">Last Name</label>
                    <input type="text" class="form-control" id="lname" placeholder="Enter Last Name" name="updatedlname" value="<%= selectedlname %>">
                </div>
                <div class="form-group">
                    <label for="address">Home Address</label>
                    <input type="text" class="form-control" id="address" placeholder="Enter Address" name="updatedaddress" value="<%= selectedaddress %>">
                </div>
                <div class="form-group">
                  <label for="email">Email address</label>
                  <input type="text" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter email" name="updatedemail" value="<%= selectedemail %>">
                </div>
                <div class="form-group">
                    <label for="username">Username</label>
                    <input type="text" class="form-control" id="username" placeholder="Enter Username" name="updatedusername" value="<%= selectedusername %>"> 
                </div>
                <div class="form-group">
                  <label for="password">Password</label>
                  <input type="password" class="form-control" id="password" placeholder="Password" placeholder="Enter Password" name="updatedpassword" value="<%= selectedpassword %>">
                </div>
                <div class="form-group">
                    <label for="position">Position</label>
                    <input type="text" class="form-control" id="position" placeholder="Enter Your Current Role" name="updatedposition" value="<%= selectedposition %>">
                </div>
                <div class="form-group">
                    <label for="mobile">Mobile Number</label>
                    <input type="text" class="form-control" id="mobile" placeholder="+61 000 000 000" name="updatedmobile" value="<%= selectedmobile %>">
                </div>
                 <div class="form-group">
                    <label for="staffStatus">Staff Status</label>
                    <input type="text" class="form-control" id="staffStatus" placeholder="Active/Deactive" name="updatedstaffStatus" value="<%= selectedstaffStatus %>">
                </div>
                <div class="form-butns">
              <button type="submit" class="btn btn-primary">Update</button>
                <a href="viewStaff.jsp" class="btn btn-primary">View Staff Members</a>
              </div>
            </form>
                 
              </div>
           </div>
           
        </body>
</html>
