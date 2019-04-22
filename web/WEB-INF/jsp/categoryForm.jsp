<%-- 
    Document   : roomTest
    Created on : May 31, 2018, 9:08:18 PM
    Author     : hlouizyas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
 
        <title>JSP Page</title>
    </head>
    <body>
        
          <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <!-- Brand/logo -->
  <a class="navbar-brand" href="dashboard">KIC Admin</a>
  
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
        <div class="container">
            <div class="row">
                <div class="col-4">
                    
                     <div class="card bg-light text-dark">
    <div class="card-body text-center">Add Category</div>
  </div>
                     <form action="category.save" method="post">
  <div class="form-group">
   <label for="categoryId">Category ID:</label>
    <input type="text" class="form-control" id="categoryId" name="categoryId" value="${param.categoryId==null? '':param.categoryId}" required>
  </div>
  <div class="form-group">
   <label for="categoryName">category Name</label>
    <input type="text" class="form-control" id="categoryName" name="categoryName" value="${param.categoryName==null? '':param.categoryName}" required>
  </div>
  
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
                    
                </div>
                <div class="col-6">
        <p>KIC Admin </p>
       

        
        
         <table class="table table-bordered table-hover" border="0">
            <thead>
                <tr>
                    <th>Category id</th>
                    <th>Category name</th>
                    
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${requestScope.categories}" var="cat">
                <tr>
                    <td>${cat.id }</td>
                    <td>${cat.name }</td>
                    
                </tr>
                </c:forEach>
            </tbody>
        </table>
                </div>
                
                
        </div>
    </body>
</html>
