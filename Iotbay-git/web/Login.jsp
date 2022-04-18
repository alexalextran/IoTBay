<%-- 
    Document   : Login
    Created on : 15 Apr 2022, 4:01:37 pm
    Author     : Alex Tran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Login</h1><form action="Welcome.jsp" method="POST">
            <input type="text" name="Name" value="" placeholder="Name" />
            <input type="text" name="email" value="" placeholder="Email"/>
            <input type="text" name="password" value="" placeholder="Password"/>
            <button>Login </button>
        </form>
    </body>
</html>
