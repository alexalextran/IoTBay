<%-- 
    Document   : viewStaff
    Created on : 14/04/2022, 7:24:21 PM
    Author     : Aliza faisal
--%>
<%@page import="uts.isd.controller.FetchStaff"%>
<%@page import="uts.isd.model.Staff"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.*"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All Staff Members</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  
     <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        
    </head>
    <body>
       <div class="container">
           <div class="">
             <h1>All Staff Members</h1>
             <a href="addStaff.jsp" class="btn btn-primary">Add Staff Member</a>
               
           </div>
           <hr>
           <div class="searchFields">
    <div class="row">
        <div class="col">
            <div class="input-group">
                <div class="form-outline">
                  <input type="search" id="form1" class="form-control" placeholder="Search by name" />
                </div>
                <button type="button" class="btn btn-primary">Search</button>
            </div>
        </div>
        <div class="col">
            <div class="input-group">
                <div class="form-outline">
                  <input type="search" id="form1" class="form-control" placeholder="Search by Position"/>
                </div>
                <button type="button" class="btn btn-primary">Search</button>
            </div>
        </div>

    </div>
</div>
               <hr>
        <table class="table">
            <thead>
              <tr>
                <th scope="col">#</th>
                <th scope="col">First Name</th>
                <th scope="col">Last Name</th>
                <th scope="col">Email</th>
                <th scope="col">Home Address</th>
                <th scope="col">Username</th>
                <th scope="col">Password</th>
                <th scope="col">Position</th> 
                <th scope="col">Mobile</th>
                <th scope="col">Staff status</th>
                <th scope="col">Action</th>
              </tr>
            </thead>
             <tbody>
            <% 
            FetchStaff fs = new FetchStaff();
            List <Staff> staffList = fs.getStaff(fs.getConnDB());
           for(int i = 0; i < staffList.size(); i++ ){
            int id = staffList.get(i).getid();
            String selectedfname = staffList.get(i).getFirstName();
            String selectedlname =  staffList.get(i).getLastName();
            String selectedaddress =  staffList.get(i).getAddress();
            String selectedemail =  staffList.get(i).getEmail();
            String selectedusername =  staffList.get(i).getUsername();
            String selectedpassword =  staffList.get(i).getPassword();
            String selectedposition =  staffList.get(i).getPosition();
            String selectedmobile =  staffList.get(i).getMobileNumber();
            Boolean selectedstaffStatus =  staffList.get(i).getStaffStatus();
                
                
            %>
           
             <tr>   
                <td><%= id %></td>
                <td><%= selectedfname %></td>
                <td><%= selectedlname %></td>
                <td><%= selectedemail %></td>
                <td><%= selectedaddress %></td>
                <td><%= selectedusername %></td>
                <td><%= selectedpassword %></td>
                <td><%= selectedposition %></td>
                <td><%= selectedmobile %></td>
                <td><%= selectedstaffStatus %></td>
                
                <td><a href="deleteStaff.jsp?id=<%= id %>" class="btn btn-primary">Delete</a><a href="editStaff.jsp?id=<%= id %>" class="btn btn-primary">Edit</a></td>
              </tr>
           
         <%
             }
        %> 
             </tbody>
        </table>
       </div>
                     <%
//                         Staff staff = new Staff(fname,lname, email, position, address, username, password, staffStatus, mobile );
//                         session.setAttribute("staff" , staff);
                         %>
    </body>
</html>
