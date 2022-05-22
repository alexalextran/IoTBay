<%-- 
    Document   : choosePayment
    Created on : 22 May 2022, 4:06:10 pm
    Author     : vietd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Orders</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  
     <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
       <link rel="stylesheet" href="style.css">
        
    </head>
    <body>
       <div class="viewStaff">
           <div class="viewStaff-inner">
               <h1>Choose Payment Method</h1>
          
           </div>         

        <table class="table">
            <thead>
              <tr>
                <th scope="col">PaymentID</th>
                <th scope="col">Name</th>
                <th scope="col">Type</th>
                <th scope="col">Debit Card Number</th>
                <th scope="col">Delete</th>
                <th scope="col">Update</th>
              </tr>
            </thead>
             <tbody>
                 <td></td>
                 <td></td>
                 <td></td>
                 <td></td>
                <td><a class="btn btn-primary">DELETE</a></td>
                <td><a href="updatePaymentMethod.jsp" class="btn btn-primary">UPDATE</a></td>
             </tbody>
        </table>
           <a href="addPaymentMethod.jsp" class="btn btn-primary">ADD</a>
          
        <a href="MyOrder.jsp" class="btn btn-primary">Go Back</a>
        <a href="finishOrder.jsp" class="btn btn-primary">Pay Now</a>


    </body>
</html>
