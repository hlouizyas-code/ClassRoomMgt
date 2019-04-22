<%-- 
    Document   : roomDeleteDetails
    Created on : Jun 3, 2018, 6:59:31 PM
    Author     : shema
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
    </head>
    <body>
       <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <!-- Brand/logo -->
  <a class="navbar-brand" href="#">Logo</a>
  
  <!-- Links -->
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="#">Welcome  ${sessionScope.userName}</a>
    </li>
    <li class="nav-item ">
        <a class="nav-link" href="logout"><i class="fa fa-sign-out-alt"> </i> Logout</a>
    </li>
  
  </ul>
</nav>
          
   
            <div class="container">
                 <div class="header">
        KIC Admin
    </div>
                <div class="row">
                    <div class="col-md-6 col-s-8">
                                              <div class="card">
                                                  <div class="card-header "><i class="fa fa-trash-alt"></i> Do you want to delete this room?</div>
  <div class="card-body">
  
      <p>Room Id: ${requestScope.delroom.id}</p>
      <p>Room Capacity: ${requestScope.delroom.capacity} </p>
  
      <a class="btn btn-danger" href="dashboard" ><i class="fa fa-times-circle"> </i> Cancel</a>
      <a class="btn btn-success" href="room.delete?roomId=${requestScope.delroom.id}" ><i class="fa fa-check-circle"> </i> Confirm</a>
                
  </div> 
 
</div>
                        
                    </div>
                    </div>
                
            </div>
            
            
    
       
  
        <div class="footer">
            <p><em>Room Admin has been developed with Web Application Development Course</em></p>
        </div>
    </body>
</html>
