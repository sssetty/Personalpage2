<%-- 
    Document   : admin
    Created on : 16 Jul, 2016, 2:37:12 PM
    Author     : SAI KUMAR
--%>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="jquery_functions.js"></script>
<script type="text/javascript" src="js/jquery-3.0.0.js"></script>
<%@ include file="header.jsp" %>
    <div class="admin">
         
<form action="blogcontroller" class="form-horizontal" method="post">
    <input type="hidden" name="action" value="login">
  <div class="form-group">
      <label class="control-label col-sm-2 col-sm-offset-2" for="username">Username</label>
      <div class="col-sm-4">
        <input type="text" class="form-control" name="username" placeholder="Enter Username">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2 col-sm-offset-2" for="password">Password</label>
      <div class="col-sm-4">
        <input type="password" class="form-control" name="password" placeholder="Enter Password">
      </div>
    </div>
   
    <div class="form-group">
      <div class="col-sm-offset-3">
        <button type="submit" class="btn btn-success">Log In</button>
         <c:if test="${msg!=null}">
             
                    <p class="msg">${msg}</p>
                    
   </c:if>
      </div>
       
    </div>
   
</form>
         
</div>