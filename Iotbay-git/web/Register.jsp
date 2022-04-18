<%-- 
    Document   : Register
    Created on : 18 Apr 2022, 10:06:30 am
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
          <h1>Register</h1><form action="Welcome.jsp" method="POST">
            <input type="text" name="Name" value="" placeholder="Name" />
            <input type="text" name="email" value="" placeholder="Email"/>
            <input type="text" name="password" value="" placeholder="Password"/>
            <button>Login </button>
        </form>
    </body>
</html>
