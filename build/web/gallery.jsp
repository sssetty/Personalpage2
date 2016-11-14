<%-- 
    Document   : gallery
    Created on : 10 Jul, 2016, 12:06:01 PM
    Author     : SAI KUMAR
--%>
<link rel="stylesheet" href="css-b/bootstrap.css" type="text/css"/>
 <script src="js-b/bootstrap.js"></script>
 <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="jquery_functions.js"></script>
<%@ include file="header.jsp" %>
<div class="gallery">


<!--p class="gal">Welcome to my Gallery.Click on the thumbnails to view the enlarged image.Hope you enjoy my gallery.</p>
<h2>Loading...</h2> -->
          
<div class="container-img">

    <div class="row">
        <div class="col-sm-3"> 
            <a href="gallery/9.jpg" rel="lightbox" data-lightbox="img"><img src="gallery/9.jpg" class="img-thumbnail img-responsive" alt="Image" ></a>
            <a href="gallery/3.jpg" rel="lightbox" data-lightbox="img"><img src="gallery/3.jpg" class="img-thumbnail img-responsive" alt="Image" ></a>
            <a href="gallery/8.jpg" rel="lightbox" data-lightbox="img"><img src="gallery/8.jpg" class="img-thumbnail img-responsive" alt="Image" ></a>
            <a href="gallery/5.JPG" rel="lightbox" data-lightbox="img"><img src="gallery/5.JPG" class="img-thumbnail img-responsive" alt="Image" ></a>
            <!--<a href="gallery/25.JPG" rel="lightbox" data-lightbox="img"><img src="gallery/25.JPG" class="img-thumbnail img-responsive" alt="Image" ></a>-->

        </div>
        <div class="col-sm-3">
            <a href="gallery/1.JPG" rel="lightbox" data-lightbox="img"><img src="gallery/1.JPG" class="img-thumbnail img-responsive"  alt="Image" ></a>
            <a href="gallery/2.JPG" rel="lightbox" data-lightbox="img"><img src="gallery/2.JPG" class="img-thumbnail img-responsive" alt="Image" ></a>
            <a href="gallery/18.jpg" rel="lightbox" data-lightbox="img"><img src="gallery/18.jpg" class="img-thumbnail img-responsive" alt="Image" ></a>
            <a href="gallery/6.jpg" rel="lightbox" data-lightbox="img"><img src="gallery/6.jpg" class="img-thumbnail img-responsive" alt="Image" ></a>
            <!--<a href="gallery/22.JPG" rel="lightbox" data-lightbox="img"><img src="gallery/22.JPG" class="img-thumbnail img-responsive" alt="Image" ></a>-->

        </div>
        <div class="col-sm-3">
            <a href="gallery/11.jpg" rel="lightbox" data-lightbox="img"><img src="gallery/11.jpg" class="img-thumbnail img-responsive" alt="Image" ></a>
            <a href="gallery/12.jpg" rel="lightbox" data-lightbox="img"><img src="gallery/12.jpg" class="img-thumbnail img-responsive" alt="Image" ></a>
            <a href="gallery/13.jpg" rel="lightbox" data-lightbox="img"><img src="gallery/13.jpg" class="img-thumbnail img-responsive" alt="Image" ></a>
            <a href="gallery/14.JPG" rel="lightbox" data-lightbox="img"><img src="gallery/14.JPG" class="img-thumbnail img-responsive" alt="Image" ></a>

        </div>
        <div class="col-sm-3">
            <a href="gallery/16.JPG" rel="lightbox" data-lightbox="img"><img src="gallery/16.JPG" class="img-thumbnail img-responsive" alt="Image" ></a>
            <a href="gallery/17.JPG" rel="lightbox" data-lightbox="img"><img src="gallery/17.JPG" class="img-thumbnail img-responsive" alt="Image" height="200" width="400"></a>
            <a href="gallery/15.JPG" rel="lightbox" data-lightbox="img"><img src="gallery/15.JPG" class="img-thumbnail img-responsive" alt="Image" ></a>
            <!--<a href="gallery/10.JPG" rel="lightbox" data-lightbox="img"><img src="gallery/10.JPG" class="img-thumbnail img-responsive" alt="Image" ></a>-->
            <a href="gallery/4.jpg" rel="lightbox" data-lightbox="img"><img src="gallery/4.jpg" class="img-thumbnail img-responsive" alt="Image" height="320" width="400" ></a>
            <a href="gallery/7.JPG" rel="lightbox" data-lightbox="img"><img src="gallery/7.JPG" class="img-thumbnail img-responsive" alt="Image" ></a>

            <!--<a href="gallery/19.JPG" rel="lightbox" data-lightbox="img"><img src="gallery/19.JPG" class="img-thumbnail img-responsive" alt="Image" ></a>-->

        </div>
    </div>
</div>
</div>

<script>
   $(document).ready(function() {
    $('.container-img').fadeIn(5000);
   // $('h2').fadeOut(4000);
    
    
});
//setTimeout(function() {$(".container-img").show()},4000);
</script>
<%@ include file="footer.jsp"%>