<%-- 
    Document   : deleteStaff.jsp
    Created on : 17/04/2022, 9:43:46 PM
    Author     : Aliza faisal
--%>


<%@page import="uts.isd.model.Staff"%>

<%@page import="uts.isd.controller.DeleteStaff"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
              <%
                  int id = Integer. parseInt(request.getParameter("id"));
                  DeleteStaff ds = new DeleteStaff();
                  String result = ds.delete(ds.getConnDB(), id);
           
              %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Deleted Staff</title>
          <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>

    <body>
         <div class="alert alert-success" role="alert">
      <%= result %>
      </div>
      <a href="viewStaff.jsp" class="btn btn-primary">View Staff Members</a>
        

       </div>
       
    </body>
</html>
