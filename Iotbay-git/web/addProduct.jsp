<%-- 
    Document   : addProduct
    Created on : 14/04/2022, 7:13:14 PM
    Author     : Brendon Man
--%>

<%@page import="uts.isd.model.Product"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Product</title>
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    <body>
        
       <div class="container">
           <div class="inner-container">
        <h1>Add Product</h1>
        <form action="addedProduct.jsp" method="POST">
            <div class="form-group">
                <label for="name">Name</label>
                <input  type="text" class="form-control" id="name" placeholder="Enter Name" name="name">
            </div>
            <div class="form-group">
                <label for="type">Type</label>
                <input type="text" class="form-control" id="type" placeholder="Enter Type" name="type">
            </div>
            <div class="form-group">
                <label for="price">Price</label>
                <input type="text" class="form-control" id="price" placeholder="Enter price" name="price">
            </div>
            <div class="form-group">
              <label for="stock">Stock</label>
              <input type="stock" class="form-control" id="stock" placeholder="Enter stock" name="stock">
            </div>
      
          
            <div class="form-butns">
            <button type="submit" class="btn btn-primary">Add</button>
            <a href="ProductList.jsp" class="btn btn-primary">View Products</a>
        </div>
          </form>
        </div>
       </div>
    
    </body>
</html>
