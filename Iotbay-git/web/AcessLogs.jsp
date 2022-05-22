<%-- 
    Document   : AcessLogs
    Created on : 8 May 2022, 4:08:41 pm
    Author     : atran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uts.isd.controller.ReadCustomer"%>
<%@page import="uts.isd.model.Customer"%>
<%@page import="uts.isd.model.AcessLog"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/css.css">
        <title>JSP Page</title>
         <% 
            Customer customer = (Customer)session.getAttribute("user"); 
            ReadCustomer readCustomer = new ReadCustomer();
            customer.setAcessLogs(readCustomer.getAcessLogs(readCustomer.getConnDB(), customer.getId()));
            
                %>
    </head>
    <body>
        
        <div class='accessLogs'>
           <table class="accessLogs-table">
            <thead>
              <tr>
                  <th scope="col">Date</th>
              </tr>
            </thead>
           <%
           ArrayList<AcessLog> AcessLogs = customer.getAcessLogs();
           for(int i = 0; i < customer.getAcessLogs().size(); i++ ){
            String date = AcessLogs.get(i).getDate();   
            %>
           
             <tr>   
                 <td><%= date %></td>
              </tr>
               <%
             }
                %> 
                 </table>
                   <a href="Main.jsp?user=customer">Head back?</a>
           </div>
    </body>
</html>
