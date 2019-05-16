<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
   <title>Image Gallery Page3</title>
  
  <!-- header tags -->
<%@ include file ="headertags.jsp" %>

</head>

<body>


<!-- Footer -->
<%@ include file ="navbar.jsp" %>

  <!-- Start your project here-->
  <div class="container">

  <h1 class="font-weight-light text-center text-lg-left mt-4 mb-0" style="text-align: center; font-family: 'Sofia', cursive;">Image Gallery</h1>

  <hr class="mt-2 mb-5 ">

  <div class="row text-center text-lg-left">

    <div class="col-lg-3 col-md-4 col-6 view overlay zoom">
      <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="./images/farewell.jpg" alt="">
          </a>
    </div>
   
    <div class="col-lg-3 col-md-4 col-6 view overlay zoom">
      <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="./images/cars.jpg" alt="">
          </a>
    </div>
    <div class="col-lg-3 col-md-4 col-6 view overlay zoom">
      <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="./images/purse.jpg" alt="">
          </a>
    </div>
    <div class="col-lg-3 col-md-4 col-6 view overlay zoom">
      <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="./images/owl.jpg" alt="">
          </a>
    </div>
    <div class="col-lg-3 col-md-4 col-6 view overlay zoom">
      <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="./images/drzahroo.jpg" alt="">
          </a>
    </div>
    <div class="col-lg-3 col-md-4 col-6 view overlay zoom">
      <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="./images/princess.jpg" alt="">
          </a>
    </div>
    <div class="col-lg-3 col-md-4 col-6 view overlay zoom">
      <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="./images/dora.jpg" alt="">
          </a>
    </div>
    <div class="col-lg-3 col-md-4 col-6 view overlay zoom">
      <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="./images/cricket.jpg" alt="">
          </a>
    </div>
    <div class="col-lg-3 col-md-4 col-6 view overlay zoom">
      <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="./images/cherryblossom.jpg" alt="">
          </a>
    </div>
    <div class="col-lg-3 col-md-4 col-6 view overlay zoom">
      <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="./images/cheesecake.jpg" alt="">
          </a>
    </div>
    <div class="col-lg-3 col-md-4 col-6 view overlay zoom">
      <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="./images/brightstar.jpg" alt="">
          </a>
    </div>
    <div class="col-lg-3 col-md-4 col-6 view overlay zoom">
      <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="./images/angrybirds.jpg" alt="">
          </a>
    </div>
  </div>

</div>
<!-- /.container -->

<nav aria-label="Page navigation example">
  <ul class="pagination justify-content-center z">
    <li class="page-item ">
      <a class="page-link pink-text" href="imagePage2" tabindex="-1">Previous</a>
    </li>
    <li class="page-item "><a class="page-link pink-text" href="imagePage1">1</a></li>
    <li class="page-item"><a class="page-link pink-text" href="imagePage2">2</a></li>
    <li class="page-item"><a class="page-link pink-text" href="imagePage3">3</a></li>
    <li class="page-item disabled">
      <a class="page-link pink-text" href="#">Next</a>
    </li>
  </ul>
</nav>

<!-- Footer -->
<%@ include file ="footer.jsp" %>


  <!-- /Start your project here-->

  <!-- SCRIPTS -->
  <!-- JQuery -->
  <script type="text/javascript" src="./js/jquery-3.4.0.min.js"></script>
  <!-- Bootstrap tooltips -->
  <script type="text/javascript" src="./js/popper.min.js"></script>
  <!-- Bootstrap core JavaScript -->
  <script type="text/javascript" src="./js/bootstrap.min.js"></script>
  <!-- MDB core JavaScript -->
  <script type="text/javascript" src="./js/mdb.min.js"></script>
</body>

</html>