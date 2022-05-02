<%-- 
    Document   : Product
    Created on : 25 Apr 2022, 8:20:27 pm
    Author     : brend
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Books Store Application</title>
</head>
<body>
    <center>
        <h1>Product Management</h1>
        <h2>
            <a href="Product.jsp">Add New Product</a><%--NEED TO FIX--%>
            &nbsp;&nbsp;&nbsp;
            <a href="ProductList.jsp">List All Products</a><%--NEED TO FIX--%>
             
        </h2>
    </center>
    <div align="center">
        <c:if test="${book != null}">
            <form action="update" method="post">
        </c:if>
        <c:if test="${book == null}">
            <form action="insert" method="post">
        </c:if>
        <table border="1" cellpadding="5">
                <c:if test="${book != null}">
                    <input type="hidden" name="id" value="<c:out value='${book.id}' />" />
                </c:if>           
            <tr>
                <th>Name: </th>
                <td>
                    <input type="text" name="title" size="45"
                            value="<c:out value='${Product.Name}' />"
                        />
                </td>
            </tr>
            <tr>
                <th>Type: </th>
                <td>
                    <input type="text" name="author" size="45"
                            value="<c:out value='${Product.Type}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Price: </th>
                <td>
                    <input type="text" name="price" size="5"
                            value="<c:out value='${Product.price}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Stock: </th>
                <td>
                    <input type="text" name="price" size="5"
                            value="<c:out value='${Product.Stock}' />"
                    />
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Save" />
                </td>
            </tr>
        </table>
        </form>
    </div>   
</body>
</html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Product List</h1>
        <form method = "get" action = "Product.jsp" >
         Product Name: <input type = "text" name = "Product Name">
         <br />
         Product Type: <input type = "text" name = "Product Type" />
         <br />
         Product Price: <input type = "text" name = "Product Price">
         <br />
         Product Stock: <input type = "text" name = "Quantity">
         <br />
         <input type = "submit" value = "Submit" />
       </body>
</html>

