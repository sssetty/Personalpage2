
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="css-b/bootstrap.css" type="text/css"/>
 <script src="js-b/bootstrap.js"></script>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="jquery_functions.js"></script>
<link href="css/lightbox.css" rel="stylesheet">
<title>Sadhana Seetamsetty</title>
 </head>
    <body>
     <header>
        <h3>Sadhana Seetamsetty</h3>
    </header>   
       
<nav class="navbar  navbar-inverse">
  <div class="container-fluid">
   <!-- <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
     
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">-->
      <ul class="nav navbar-nav" id="head">
          <c:if test="${sessionScope.user != null}">
              <li><a href="adminportal.jsp">Admin Portal</a><li>
                  </c:if>
          <li><a href="about.jsp">About</a></li>
        
        <li><a href="blogcontroller?action=blog">Blog</a></li>
        
        <li><a href="gallery.jsp">Photography</a></li>
      </ul>
      
    </div>
  
</nav>
 <script>
     $(document).ready(function(){
        $('.container-fluid').css("visibility","visible").hide().fadeIn(1500);
        $('header').css("visibility","visible").hide().fadeIn(1500);
         
     });
     
     </script>
