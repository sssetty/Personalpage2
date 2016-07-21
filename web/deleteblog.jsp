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
<div class="blog">

     <c:forEach var="bloglist" items="${searchdata}" varStatus="count">
         
        <div class="panel panel-default" >
            <div class="panel-heading">
                <a data-toggle="collapse" href="#accordian${count.count}" data-parent="accordian">
                    <h4><c:out value="${bloglist.postname}"/></h4>
                    
                </a>
                    
            </div>
            <div id="accordian${count.count}" class="panel-collapse collapse ">
                <div class="panel-body">
                    <form action="blogcontroller" class="form-horizontal edit" method="post">
                        <input type="hidden" name="action" value="deleteblog">
                        <input type="hidden" class="form-control" name="postid" value="<c:out value="${bloglist.postid}"/>">
                   <div class="row">
                    <div class="col-md-3">
                    <img src="<c:url value="${bloglist.imageurl}"/>" height="290" width="200" class="img-responsive">
                    </div>
                    <div class="col-md-7 col-md-offset-1">
                    <h4><c:out value="${bloglist.blog}"/></h4>
                    
                    </div>
                    </div>
                    <div class="row">
                        <div class="col-md-offset-10">
                    <p style="text-align: center"><c:out value="${bloglist.datecreated}"/><p>
                        </div>
                        </div>
                   <button type="submit" class="btn btn-success del">Delete</button>

                </div>
            </div>
        </div>    
    </c:forEach>
</div>