<%-- 
    Document   : deleteProduct.jsp
    Created on : 17/04/2022, 9:43:46 PM
    Author     : Aliza faisal
--%>


<%@page import="uts.isd.model.Product"%>

<%@page import="uts.isd.controller.DeleteProduct"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
              <%
                  int id = Integer.parseInt(request.getParameter("id"));
                  DeleteProduct ds = new DeleteProduct();
                  String result = ds.delete(ds.getConnDB(), id);
           
              %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Deleted Product</title>
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
      <a href="ProductList.jsp" class="btn btn-primary">View Products</a>
        

       </div>
    </body>
</html>
