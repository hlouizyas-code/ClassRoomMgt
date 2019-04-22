<%-- 
    Document   : roomForm
    Created on : May 24, 2018, 10:31:01 AM
    Author     : user0
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Add a room</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <link rel="stylesheet" href="css/styles.css" type="text/css"/>
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
 
    </head>
    <body>
         <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <!-- Brand/logo -->
  <a class="navbar-brand" href="#">KIC Admin</a>
  
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
        <div class="header">
            <h1>KIC Admin</h1>
        </div>
        <div class="row">
           
            <div class="col-4 col-s-4">
                <c:forEach items="${requestScope.errors}" var="error">
                    <dl>
                        <dt>Error place: ${error.key}</dt>
                        <dd>Error type:  ${error.value}</dd>
                    </dl>
                </c:forEach>
                
            </div>
             <div class="col-4 col-s-4">
                 <div class="card bg-light text-dark">
    <div class="card-body text-center">Add Room</div>
  </div>
                <form action="room.save" method="post">
  <div class="form-group">
   <label for="roomId">Room ID:</label>
    <input type="text" class="form-control" id="roomId" name="roomId" value="${param.roomId==null? '':param.roomId}" required>
  </div>
  <div class="form-group">
   <label for="roomCap">Capacity</label>
    <input type="number" class="form-control" id="roomCap" name="roomCap" value="${param.roomCap==null? '':param.roomCap}" required>
  </div>
  
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
                
                
               
            </div>
  
   <div class="col-2 col-s-2">
       
  
        </div>
            
        <div class="footer">
            <p>Room Admin has been developed with Web Application Development Course</p>
        </div>
    </body>
</html>
