<%-- 
    Document   : dashboard
    Created on : May 23, 2018, 2:42:37 PM
    Author     : user0
--%>

<%@page import="kic.admin.DbController"%>
<%@page import="kic.models.Categories"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <jsp:useBean id="db" class="kic.admin.DbController" scope="request"/>

    <head>
        <title>KIC Admin</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
       <div class="container-fluid">
      
         

        <div class="row">
            <div class="col-md-2">
           <ul class="nav flex-column">
    <li class="nav-item">
        <a class="nav-link" href="room.form"> <i class="fa fa-plus-circle"></i> Add room</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="category.form"><i class="fa fa-plus-circle"></i> Add category</a>
    </li>
    
    <li class="nav-item">
      <a class="nav-link" href="course.form"><i class="fa fa-plus-circle"></i> Add course</a>
    </li>
   
  </ul>
            
            </div> 

            
            
            
            <div class="col-md-3">           
 <div class="card ">
    <div class="card-body text-center">List of Rooms</div>
  </div>
                 <table class="table table-striped table-bordered table-hover" border="0">
                     <thead class="thead-light">
                <tr>
                    <th>ID</th>
                    <th>Capacity</th>
                    <th>Delete</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${requestScope.rooms}" var="room">
                <tr>
                    <td>${room.id }</td>
                    <td>${room.capacity }</td>
                   <td> <a class="btn btn-danger" href="show?roomId=${room.id }"> <i class="fa fa-trash-alt"> </i> </a></td>
                 
                </tr>
                </c:forEach>
            </tbody>
        </table>
                
            </div>
            <div class="col-md-7">
 <div class="card ">
    <div class="card-body  text-center">List of Courses</div>
  </div>
                
            <table class="table table-striped table-bordered table-hover" border="0">
                
                <thead class="thead-light">
                    <tr>
                        <th>ID</th>
                        <th>Code</th>
                        <th>Title</th>
                        <th>Short Name</th>
                        <th>Category</th>
                        <th>Credits</th>
                        <th>Status</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        Categories cat = new Categories();
                 //       DbController db = new DbController();
                        %>
                    <c:forEach items="${requestScope.courses}" var="c">
                        <tr>
                            <td>${c.id }</td>
                            <td>${c.code }</td>
                             <td>${c.title }</td>
                              <td>${c.short_name }</td>
                              <td> ${db.fetchCategory(c.category).name}</td>
                                <td>${c.credits }</td>
                                 <td>${c.is_elective }</td>
                           
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            </div>
        </div>
        </div>
        
        <div class="footer ">
            <p>KIC Admin has been developed with Web Application Development Course</p>
        </div>

    </body>
</html>
