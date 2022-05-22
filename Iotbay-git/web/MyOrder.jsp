<%-- 
    Document   : MyOrder
    Created on : 19 May 2022, 3:54:21 pm
    Author     : j13x002
--%>


<%@page import="uts.isd.controller.FetchOrders"%>
<%@page import="uts.isd.model.Order"%>
<%@page import="java.util.ArrayList"%>
<%@page import="uts.isd.model.Customer"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Orders</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  
     <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
       <link rel="stylesheet" href="style.css">
        
    </head>
    <body>
       <div class="viewStaff">
           <div class="viewStaff-inner">
               <h1>My Order</h1>
          
           </div>
           <hr>
           <div class="searchFields">
            <div class="row">
        <div class="col">
            <div class="input-group">
                <div class="form-outline">
                    <form action="" method="get">
                        <input type="search" id="search" class="form-control" placeholder="Search by Name" name="search"/>
                    </form>
                 
                </div>
            </div>
        </div>

    </div>
</div>
<hr>           
                <% 
            String params = request.getParameter("search");
            FetchOrders fo = new FetchOrders();
            Customer customer = (Customer)session.getAttribute("user");
            List <Order> OrderList = fo.getOrders(fo.getConnDB(), params, customer.getId());
            if(OrderList.size() == 0){
                %>
             
                <p >No Order exists. Please add Order</p>
              
              
              <%
            }else{
%>
        <table class="table">
            <thead>
              <tr>
                <th scope="col">#</th>
                <th scope="col">Date</th>
                <th scope="col">Name</th>
                <th scope="col">Amount</th>
                <th scope="col">Total Price</th>
                <th scope="col">Delete</th>
                <th scope="col">Update</th>
                <th scope="col">Submit</th>
              </tr>
            </thead>
             <tbody>
                 <%
                     for(int i = 0; i < OrderList.size(); i++ ){
            int id = OrderList.get(i).getID();
            String selectedDate = OrderList.get(i).getDate();
            String selectedName = OrderList.get(i).getName();
            int selectedAmount =  OrderList.get(i).getAmount();
            Double selectedPrice =  OrderList.get(i).getPrice();
                     %>
           
             <tr>   
                <td><%= id %></td>
                <td><%= selectedDate %></td>
                <td><%= selectedName %></td>
                <td><%= selectedAmount %></td>
                <td><%= selectedPrice %></td>
                
               
                <td><a href="DeletedOrder.jsp?orderid=<%= id %>" class="btn btn-primary">DELETE</a>
                <td><a href="UpdateOrder.jsp?orderid=<%= id %>" class="btn btn-primary">UPDATE</a>
                <td><a href="addPaymentMethod.jsp?orderid=<%= id %>" class="btn btn-primary">SUBMIT</a>

              </tr>
              
           
         <%
             }
             }
        %> 
             </tbody>
        </table>
         <a href="Main.jsp?user=customer" class="btn btn-primary">Go Back</a>
         <a href="MyOrder.jsp" class="btn btn-primary">View all orders</a>

       </div>

    </body>
</html>
