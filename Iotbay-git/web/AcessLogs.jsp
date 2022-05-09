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
        <title>JSP Page</title>
         <% 
            Customer customer = (Customer)session.getAttribute("user"); 
            ReadCustomer readCustomer = new ReadCustomer();
            customer.setAcessLogs(readCustomer.getAcessLogs(readCustomer.getConnDB(), customer.getId()));
            
                %>
    </head>
    <body>
           <table class="table">
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
           
    </body>
</html>
