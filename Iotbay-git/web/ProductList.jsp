<%-- 
    Document   : ProductList
    Created on : 28 Apr 2022, 5:42:47 pm
    Author     : brend
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Iot Products</title>
</head>
<body>
    <center>
        <h1>Product List</h1>
        <h2>
            <a class='button__link greenBG' href="Product.jsp">Add New Products</a> 
            <%--&nbsp;&nbsp;&nbsp;--%>
             
        </h2>
    </center>
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>List of Product</h2></caption>
            <tr>
                <th>Name</th>
                <th>Type</th>
                <th>Price</th>
                <th>Stock</th>
                <th>Actions</th>>
            </tr>
            <c:forEach var="Product" items="${listProduct}">
                <tr>
                    <td><c:out value="${Product.Name}" /></td>
                    <td><c:out value="${Product.Type}" /></td>
                    <td><c:out value="${Product.Price}" /></td>
                    <td><c:out value="${Product.Stock}" /></td>
                    <<td>
                        <a href="/edit?id=<c:out value='${Product.Name}' />">Edit</a>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="/delete?id=<c:out value='${Product.Name}' />">Delete</a>                     
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>   
</body>
</html>