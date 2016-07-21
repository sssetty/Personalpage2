<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="jquery_functions.js"></script>
<script type="text/javascript" src="js/jquery-3.0.0.js"></script>
<%@ include file="adminportal.jsp" %>
<div class="newblog">
    <form action="blogcontroller" class="form-horizontal" method="post">
    <input type="hidden" name="action" value="newblog">
  <div class="form-group">
      <label class="control-label col-sm-2 col-sm-offset-2" >Post Name</label>
      <div class="col-sm-4">
        <input type="text" class="form-control" name="postname">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2 col-sm-offset-2" >ImageURL</label>
      <div class="col-sm-4">
        <input type="text" class="form-control" name="imageurl">
      </div>
    </div>
   <div class="form-group">
  <label class="control-label col-sm-2 col-sm-offset-2">Post</label>
  <div class="col-sm-4">
  <textarea class="form-control" rows="8" name="post"></textarea>
</div>
  </div>
    <div class="form-group">
      <div class="col-sm-offset-3">
        <button type="submit" class="btn btn-success">Add</button>
        <c:if test="${msg!=null}">
             
                    <p class="msg">${msg}</p>
                    
   </c:if>
      </div>
       
    </div>
    </form>
    </div>