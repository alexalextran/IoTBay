<%-- 
    Document   : StaffLogin
    Created on : 16 Apr 2022, 12:26:26 am
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
            <input class="greenBorder" type="text" name="email" value="" placeholder="Email"/>
            <input class="greenBorder" type="text" name="position" value="" placeholder="Position"/>
            <input  class="greenBorder" type="text" name="password" value="" placeholder="Password"/>
            <button class='button greenBG'>Login </button>
        </form>
          
          <a href="StaffRegister.jsp">Don't have an account? click here!</a>
          
        </div>
     </div>
    </body>
   
  
</html>
