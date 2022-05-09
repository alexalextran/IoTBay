<%-- 
    Document   : editProduct
    Created on : 14/04/2022, 7:48:23 PM
    Author     : Aliza faisal
--%>
<%@page import="uts.isd.model.Product"%>
<%@page import="uts.isd.controller.FetchSelectedProduct"%>
<%@page import="uts.isd.controller.UpdateProduct"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Product Details</title>
          <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
            <link rel="stylesheet" href="style.css">
    </head>
    
    

        <%
        int id = Integer.parseInt(request.getParameter("id"));
        FetchSelectedProduct fsp = new FetchSelectedProduct();
        Product product = fsp.getProduct(fsp.getConnDB() , id);
        String selectedname = product.getname();
        double selectedprice = product.getprice();
        int selectedstock = product.getstock();
        String selectedtype = product.gettype();
       
        %>
        <body >
            <div class="container">
                <div class="inner-container">
            <h1>Edit Product</h1>
            <form action="updatedProduct.jsp?id=<%= id %>" method="POST">
                <div class="form-group">
                    <label for="name">Name</label>
                    <input  type="text" class="form-control" id="name" placeholder="Enter First Name" name="updatedname" value="<%= selectedname %>">
                </div>
                <div class="form-group">
                    <label for="price">Price</label>
                    <input type="text" class="form-control" id="price" placeholder="Enter Last Name" name="updatedprice" value="<%= selectedprice %>">
                </div>
                <div class="form-group">
                    <label for="stock">Stock</label>
                    <input type="text" class="form-control" id="stock" placeholder="Enter stock" name="updatedstock" value="<%= selectedstock %>">
                </div>
                <div class="form-group">
                  <label for="type">Type</label>
                  <input type="text" class="form-control" id="type"  placeholder="Enter type" name="updatedtype" value="<%= selectedtype %>">
                </div>
             
                <div class="form-butns">
              <button type="submit" class="btn btn-primary">Update</button>
                <a href="ProductList.jsp" class="btn btn-primary">View Product</a>
              </div>
            </form>
                 
              </div>
           </div>
           
        </body>
</html>
