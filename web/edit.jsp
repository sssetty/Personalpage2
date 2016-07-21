<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="jquery_functions.js"></script>
<script type="text/javascript" src="js/jquery-3.0.0.js"></script>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@ include file="adminportal.jsp" %>
<div class="count">
    <c:choose>
        <c:when test="${searchdata.size()==1}">
            <h3 class="count-ret"><c:out value="${searchdata.size()}"/> Result</h3>
        </c:when>
        <c:when test="${searchdata.size()==0}">
            <h3 class="count-ret">No record found</h3>
        </c:when>
        <c:when test="${searchdata.size()>0}">
            <h3 class="count-ret"><c:out value="${searchdata.size()}"/> Results</h3>
        </c:when>
    </c:choose>
</div>
<div class="search">

    <c:forEach var="list" items="${searchdata}" varStatus="count">

        <div class="panel panel-default">
            <div class="panel-heading">
                <a  data-toggle="collapse" href="#accordian${count.count}" data-parent="accordian"><h3>
                        <c:out value="${list.postname}"></c:out></h3></a>
                    </h3>    
                </div>

                <div id="accordian${count.count}" class="panel-collapse collapse ">
                <div class="panel-body">
                    <form action="blogcontroller" class="form-horizontal edit" method="post">
                        <input type="hidden" name="action" value="editblog">
                        <input type="hidden" class="form-control" name="postid" value="<c:out value="${list.postid}"/>">
                        <div class="form-group">
                            <label class="control-label col-sm-2 col-sm-offset-2" style="color:black" >Post Name</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" name="postname" value="<c:out value="${list.postname}"/>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2 col-sm-offset-2" style="color:black">ImageURL</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" name="imageurl" value="<c:out value="${list.imageurl}"/>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2 col-sm-offset-2" style="color:black">Post</label>
                            <div class="col-sm-4">
                                <textarea class="form-control" rows="8" name="post"><c:out value="${list.blog}"/></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-3">
                                <button type="submit" class="btn btn-success">Update</button>
                                
                            </div>

                        </div>
                </div>
                </form>
            </div>
        </div>

    </c:forEach>

</div>