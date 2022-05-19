<%-- 
    Document   : ProductList
    Created on : 14/04/2022, 7:24:21 PM
    Author     : Brendon Mai
--%>
<%@page import="uts.isd.controller.FetchProduct"%>
<%@page import="uts.isd.model.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.*"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All Products</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  
     <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
       <link rel="stylesheet" href="style.css">
        
    </head>
    <body>
       <div class="viewStaff">
           <div class="viewStaff-inner">
             <h1>All Products</h1>
          
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
            FetchProduct fs = new FetchProduct();
            List <Product> ProductList = fs.getProduct(fs.getConnDB(), params);
            if(ProductList.size() == 0){
                %>
             
                <p >No Product exists. Please add Product</p>
              
              
              <%
            }else{
%>
        <table class="table">
            <thead>
              <tr>
                <th scope="col">#</th>
                <th scope="col">Name</th>
                <th scope="col">Type</th>
                <th scope="col">Price</th>
                <th scope="col">Stock</th>
                <th scope="col">Action</th>
              </tr>
            </thead>
             <tbody>
           <%
           for(int i = 0; i < ProductList.size(); i++ ){
            int id = ProductList.get(i).getid();
            String selectedName = ProductList.get(i).getname();
            String selectedType =  ProductList.get(i).gettype();
            Double selectedPrice =  ProductList.get(i).getprice();
            int selectedStock =  ProductList.get(i).getstock();
            %>
           
             <tr>   
                <td><%= id %></td>
                <td><%= selectedName %></td>
                <td><%= selectedType %></td>
                <td><%= selectedPrice %></td>
                <td><%= selectedStock %></td>
               
                <td><a href="INSERT LINK HERE" class="btn btn-primary">PLACEHOLDER</a>
              </tr>
              
           
         <%
             }
             }
        %> 
             </tbody>
        </table>
         <a href="Main.jsp?user=customer" class="btn btn-primary">Go Back</a>
       </div>

    </body>
</html>
