<%-- 
    Document   : updatedProduct
    Created on : 17/04/2022, 9:20:12 PM
    Author     : Brendon Mai 
--%>


<%@page import="uts.isd.model.Product"%>
<%@page import="uts.isd.controller.FetchSelectedProduct"%>
<%@page import="uts.isd.controller.UpdateProduct"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
              <%
            int id = Integer. parseInt(request.getParameter("id"));
            String name = request.getParameter("updatedname");
            double price = Double.parseDouble(request.getParameter("updatedprice"));
            String type = request.getParameter("updatedtype");
            int  stock = Integer.parseInt(request.getParameter("updatedstock"));
            UpdateProduct us = new UpdateProduct();
            String result = us.Update(us.getConnDB(),id, name,price,stock,type);
          
              %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Updated Staff</title>
         
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="style.css">
    </head>


    <body>
        <div class="record-wrapper">
            <div class="records-inner">
        <div class="alert alert-success" role="alert">
            <img class="tick" src="images/tick.png">
            <p><%= result %>y</p>
        </div>
    </div>
      <a href="ProductList.jsp" class="btn btn-primary">View Products</a>
        

       </div>
       
    </body>
</html>

