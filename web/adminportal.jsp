

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="jquery_functions.js"></script>
<script type="text/javascript" src="js/jquery-3.0.0.js"></script>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="header.jsp" %>

<nav class="navbar navbar-inverse">
    <div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#admin">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        </button>
        </div>
    <div class="container-fluid">
        
<div class="collapse navbar-collapse" id="admin">
        <ul class="nav navbar-nav">
            <li><a href="newblog.jsp">Add new Blog</a></li>
            <li><a href="editblog.jsp">Edit Existing Blog</a></li>
            <li><a href="delete.jsp">Delete a Blog</a></li>
            <li><a href="index.jsp">Log Out</a></li>
        </ul>
        
    </div>
        </div>
</nav>