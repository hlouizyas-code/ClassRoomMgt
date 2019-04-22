<%-- 
    Document   : CategoryForm
    Created on : Jun 8, 2018, 7:49:01 AM
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
 
 
   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
 <style>
     /* ==========================================================================
         
        ========================================================================== */

      #wrapper { 
        width:595px;
        margin:0 auto;
      }
      legend {
        margin-top: 20px;
      }
      #attribution {
        font-size:12px;
        color:#999;
        padding:20px;
        margin:20px 0;
        border-top:1px solid #ccc;
      }
      #O_o { 
        text-align: center; 
        background: #33577b;
        color: #b4c9dd;
        border-bottom: 1px solid #294663;
      }
      #O_o a:link, #O_o a:visited {
        color: #b4c9dd;
        border-bottom: #b4c9dd;
        display: block;
        padding: 8px;
        text-decoration: none;
      }
      #O_o a:hover, #O_o a:active {
        color: #fff;
        border-bottom: #fff;
        text-decoration: none;
      }
      @media only screen and (max-width: 620px), only screen and (max-device-width: 620px) {
        #wrapper {
          width: 90%;
        }
        legend {
          font-size: 24px;
          font-weight: 500;
        }
      }
</style>
   
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
    <div class="container">
        
        <div class="row">
            
            <div class="col-3">
            </div>
            <div col-6>
    <div id="wrapper">
     
        <form action="course.save" class="" method="post" id="sign-up_area" role="form">
     
           <div id="entry1" class="clonedInput_1">
               
          
                   <div class="card bg-light text-dark">
                       <div class="card-body text-center"><i class="fa fa-plus-circle"></i> Add Course</div>
  </div>
               
               <label  class="">Course ID</label>
        <div class="input-group mb-3">
          <div class="input-group-prepend">
            <div class="input-group-text">@</div>
          </div>
          <input type="text" class="form-control" id="id" name="id" placeholder="">
        </div>
               
               
           <label for="code">Course Code:</label>
        <div class="input-group mb-3">
          <div class="input-group-prepend">
            <div class="input-group-text">@</div>
          </div>
          <input type="text" class="form-control" id="twitter_handle" name="code" placeholder="">
        </div>
   
            <label for="title">Title:</label>
        <div class="input-group mb-3">
          <div class="input-group-prepend">
            <div class="input-group-text">@</div>
          </div>
          <input type="text" class="form-control" id="twitter_handle" name="title" placeholder="">
        </div>

             <label for="short_name">Short Name:</label>
        <div class="input-group mb-3">
          <div class="input-group-prepend">
            <div class="input-group-text">@</div>
          </div>
          <input type="text" class="form-control" id="twitter_handle" name="short_name" placeholder="">
        </div>

             
             
             
    <!-- Begin cloned email section -->
       
        <!-- Select Basic -->
        <label class="label_ttl control-label" for="category">Category:</label>
        <div class="form-group">
            <select class="select_ttl form-control" name="category" id="title">
              <option value="" selected="selected" disabled="disabled">Select Category</option>
              <c:forEach items="${requestScope.categories}" var="cat">
                  <option value="${cat.id}">${cat.name}</option>
              </c:forEach>
             
            </select> <!-- end .select_ttl -->
          </div>

        
       
    
          <!-- Text input-->
          <div class="form-group">
            <label class="control-label" for="credits">Credits:</label>
            <input id="credits" name="credits" type="number" placeholder="" class=" form-control">
          </div>
       
          
          
          <!-- Text input-->
         <!-- Select Basic -->
        <label class="label_ttl control-label " for="is_elective">Is Elective?</label>
        <div class="form-group ">
            <select class="select_ttl form-control " name="is_elective" id="title">
             
                <option selected="selected" value="true">Yes</option>
              <option value="false">No</option>
          
            </select> <!-- end .select_ttl -->
          </div>
           </div>
          <!-- end .clonedInput_1 -->

        <!-- Button (Double) -->
        <div class="mb-3 text-right">
            <button type="button" id="btnAdd_1" name="btnAdd" class="btn btn-outline-primary"> <i class="fa fa-plus-circle"></i> Add Form</button>
          <button type="button" id="btnDel_1" name="btnDel" class="btn btn-outline-danger"><span class="ui-button-text"><i class="fa fa-minus-circle"></i> Remove Form</span></button>
        </div>
    

        
        <!-- Button -->
        <div class="mb-3">
          <button id="submit_button" name="submit_button" class="btn btn-primary">Submit</button>
        </div>

        </fieldset>
        </form>
       <!-- end attribution -->
    </div> <!-- end wrapper -->
            </div>
            <div class="col-4">
            </div>
            <!-- end col -->
        </div><!-- end row -->
    </div><!-- end container -->
    
   <script>
       
       </script>
              <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

    <script type="text/javascript" src="clone-form-td-multiple.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/js/bootstrap.min.js" integrity="sha384-a5N7Y/aK3qNeh15eJKGWxsqtnX/wWdSZSKp+81YjTmS15nvnvxKHuzaWwXHDli+4" crossorigin="anonymous"></script> <!-- only added as a smoke test for js conflicts -->

         
    </body>
</html>
