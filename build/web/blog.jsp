<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="jquery_functions.js"></script>
<script type="text/javascript" src="js/jquery-3.0.0.js"></script>

<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="header.jsp" %>
<div class="blogouter">
<div class="blog"> 

    <c:forEach var="bloglist" items="${blogdata}" varStatus="count">
        <div class="panel panel-default" >
            <div class="panel-heading">
                <a  data-toggle="collapse" href="#accordian${count.count}" data-parent="accordian">
                    <h4><c:out value="${bloglist.postname}"/></h4>
                </a>
            </div>
            <div id="accordian${count.count}" class="panel-collapse collapse ">
                <div class="panel-body">
                   <div class="row">
                    <div class="col-md-3">
                    <img src="<c:url value="${bloglist.imageurl}"/>" class="img-responsive">
                    </div>
                    <div class="col-md-7 col-md-offset-1">
                    <h4><c:out value="${bloglist.blog}"/></h4>
                    
                    </div>
                    </div>
                    <div class="row">
                        <div class="col-md-offset-10">
                    <p><c:out value="${bloglist.datecreated}"/><p>
                        </div>
                        </div>
                </div>
            </div>
        </div>    
    </c:forEach>
</div>
   </div>
<script>
    $(document).ready(function(){
       $('.blogouter').hide().fadeIn(1500); 
    });
    </script>