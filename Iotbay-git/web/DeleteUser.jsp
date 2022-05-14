<%-- 
    Document   : DeleteUser
    Created on : 21 Apr 2022, 11:14:12 pm
    Author     : atran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uts.isd.model.Customer"%>
<%@page import="uts.isd.model.Staff"%>
<%@page import="uts.isd.controller.DeleteUser"%>
<%@page import="uts.isd.controller.DeleteStaff"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/css.css">
        <title>JSP Page</title>
        <%
            if(request.getParameter("user").equals("customer")){
              Customer customer = (Customer)session.getAttribute("user"); 
             DeleteUser is = new DeleteUser();
             is.Delete(is.getConnDB(), customer.getId());
             //is.DeleteAcessLogs(is.getConnDB(), customer.getId());
             session.invalidate();
        }
            else{
                Staff staff = (Staff)session.getAttribute("user"); 
                DeleteStaff ds = new DeleteStaff();
                String result = ds.delete(ds.getConnDB(), staff.getid());
                session.invalidate();
                    }
           
             
            %>
            
        
    </head>
    <body>
        <div class="welcome__details box-shadow">
            <h1>Your account has been <span class="turqoise">deleted</span> successfully</h1>
            <a href="index.html" class="button__link turqoiseBG">Click here to head back to the start</a>
        </div>
    </body>
</html>
