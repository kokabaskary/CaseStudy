<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <title>Image Gallery Page !</title>
  
  <!-- header tags -->
<%@ include file ="headertags.jsp" %>


</head>

<body>

<!-- Navbar -->
<%@ include file ="navbar.jsp" %>



  <!-- Start your project here-->
  <div class="container" style=" text-align: center;">

  <h1 class="font-weight-light text-center text-lg-left mt-4 mb-0" style="text-align: center; font-family: 'Sofia', cursive;">Image Gallery</h1>

  <hr class="mt-2 mb-5 ">

  <div class="row text-center text-lg-left">
  
  

    <div class="col-lg-3 col-md-4 col-6 view overlay zoom " >
      <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="./images/purpleRossettee.jpg" alt="">
          </a>
          
    </div>
    
   
    <div class="col-lg-3 col-md-4 col-6 view overlay zoom">
      <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="./images/anniversarycake.jpg" alt="">
          </a>
    </div>
    <div class="col-lg-3 col-md-4 col-6 view overlay zoom">
      <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="./images/basketball.jpg" alt="">
          </a>
    </div>
    <div class="col-lg-3 col-md-4 col-6 view overlay zoom">
      <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="./images/m&m.jpg" alt="">
          </a>
    </div>
    <div class="col-lg-3 col-md-4 col-6 view overlay zoom">
      <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="./images/hollywoodcake.jpg" alt="">
          </a>
    </div>
    <div class="col-lg-3 col-md-4 col-6 view overlay zoom">
      <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="./images/cardssake.jpg" alt="">
          </a>
    </div>
    <div class="col-lg-3 col-md-4 col-6 view overlay zoom">
      <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="./images/cameracake.jpg" alt="">
          </a>
    </div>
    <div class="col-lg-3 col-md-4 col-6 view overlay zoom">
      <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="./images/cakeflower.jpg" alt="">
          </a>
    </div>
    <div class="col-lg-3 col-md-4 col-6 view overlay zoom">
      <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="./images/brideToBe.jpg" alt="">
          </a>
    </div>
    <div class="col-lg-3 col-md-4 col-6 view overlay zoom">
      <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="./images/bayblade.jpg" alt="">
          </a>
    </div>
    <div class="col-lg-3 col-md-4 col-6 view overlay zoom">
      <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="./images/batman.jpg" alt="">
          </a>
    </div>
    <div class="col-lg-3 col-md-4 col-6 view overlay zoom">
      <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="./images/basketball.jpg" alt="">
          </a>
    </div>
  </div>

</div>
<!-- /.container -->

<nav aria-label="Page navigation example">
  <ul class="pagination justify-content-center z">
    <li class="page-item disabled">
      <a class="page-link pink-text" href="#" tabindex="-1">Previous</a>
    </li>
    <li class="page-item "><a class="page-link pink-text" href="imagePage1">1</a></li>
    <li class="page-item"><a class="page-link pink-text" href="imagePage2">2</a></li>
    <li class="page-item"><a class="page-link pink-text" href="#">3</a></li>
    <li class="page-item">
      <a class="page-link pink-text" href="magePage2">Next</a>
    </li>
  </ul>
</nav>
  <!-- /Start your project here-->
<!-- Footer -->
<%@ include file ="footer.jsp" %>


  
</body>

</html>