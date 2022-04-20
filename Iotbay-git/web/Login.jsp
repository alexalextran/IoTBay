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
        <title>Login</title>
         <link rel="stylesheet" href="css/css.css">
    </head>
     <body>
        <div class='enterform box-shadow'>
            
            
        
          <h1>Login</h1>
          <form class="enterform__input" action="Welcome.jsp" method="POST">
            <input type="text" name="Name" value="" placeholder="Name" />
            <input type="text" name="email" value="" placeholder="Email"/>
            <input type="text" name="password" value="" placeholder="Password"/>
            <button class='button'>Login </button>
        </form>
          
          <a href="Register.jsp">Don't have an account? click here!</a>
          
        </div>
    </body>
</html>
