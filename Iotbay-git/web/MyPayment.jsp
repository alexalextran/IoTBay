<%-- 
    Document   : Payment
    Created on : 21 May 2022, 10:22:00 pm
    Author     : Jason Vu
--%>

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
           
                    <h1>Payment History</h1>
          
           </div>    
           <div class="searchFields">
            <div class="row">
        <div class="col">
            <div class="input-group">
                <div class="form-outline">
                    <form action="" method="get">
                        <input type="search" id="search" class="form-control" placeholder="Search for Order" name="search"/>
                    </form>
                 
                </div>
            </div>
        </div>

    </div>
</div>
<hr>      
                    
         <table class="table">
            <thead>
              <tr>
                <th scope="col">PaymentID</th>
                <th scope="col">OrderID</th>
                <th scope="col">Name</th>
                <th scope="col">Date</th>
              </tr>
            </thead>
             </tbody>
        </table>
        <a href="Main.jsp?user=customer" class="btn btn-primary">Go Back</a>

    </body>
</html>
