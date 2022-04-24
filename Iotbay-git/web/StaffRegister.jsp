<%-- 
    Document   : StaffRegister
    Created on : 24 Apr 2022, 9:35:41 pm
    Author     : atran
--%>

<%@page import="uts.isd.model.Staff"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Staff Register</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    <body>
        
       <div class="container">
        <h1>Register Staff</h1>
        <form action="Welcome.jsp" method="POST">
            <div class="form-group">
                <label for="fname">First Name</label>
                <input  type="text" class="form-control" id="fname" placeholder="Enter First Name" name="fname">
            </div>
            <div class="form-group">
                <label for="lname">Last Name</label>
                <input type="text" class="form-control" id="lname" placeholder="Enter Last Name" name="lname">
            </div>
            <div class="form-group">
                <label for="address">Home Address</label>
                <input type="text" class="form-control" id="address" placeholder="Enter Address" name="address">
            </div>
            <div class="form-group">
              <label for="email">Email address</label>
              <input type="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter email" name="email">
            </div>
            <div class="form-group">
                <label for="username">Username</label>
                <input type="text" class="form-control" id="username" placeholder="Enter Username" name="username"> 
            </div>
            <div class="form-group">
              <label for="password">Password</label>
              <input type="password" class="form-control" id="password" placeholder="Password" placeholder="Enter Password" name="password">
            </div>
            <div class="form-group">
                <label for="position">Position</label>
                <input type="text" class="form-control" id="position" placeholder="Enter Your Current Role" name="position">
            </div>
            <div class="form-group">
                <label for="mobile">Mobile Number</label>
                <input type="text" class="form-control" id="mobile" placeholder="+61 000 000 000" name="mobile">
            </div>
             <div class="form-group">
                <label for="staffStatus">Staff Status</label>
                <input type="text" class="form-control" id="staffStatus" placeholder="Active/Deactive" name="staffStatus">
            </div>
            
            <button type="submit" class="btn btn-primary">Register</button>
            
          </form>
       </div>
    
    </body>
</html>
