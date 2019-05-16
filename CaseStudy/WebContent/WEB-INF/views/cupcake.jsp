<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>

<!-- header tags -->
<%@ include file="headertags.jsp"%>

<style>
body, html {
  height: 100%;
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

* {
  box-sizing: border-box;
}

.bg-image {
  /* The image used */
  background-image: url("photographer.jpg");
  
  /* Add the blur effect */
  filter: blur(8px);
  -webkit-filter: blur(8px);
  
  /* Full height */
  height: 100%; 
  
  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}

/* Position text in the middle of the page/image */
.bg-text {
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0, 0.4); /* Black w/opacity/see-through */
  color: white;
  font-weight: bold;
  border: 3px solid #f1f1f1;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  z-index: 2;
  width: 80%;
  padding: 20px;
  text-align: center;
}
</style>
</head>

<body>
	<!-- Navbar -->
	<%@ include file="navbar.jsp"%>




	<!-- Start your project here-->
	<div class="container-fluid"
		style="text-align: center; font-family: 'Sofia', cursive;">
		<h1>Welcome To Cakelicious by Aelya</h1>
		<p>To Sweeten up your special occassions.....</p>

		<div class="row">
			<div class="col-sm-4">
				<img class="img-fluid" src="./images/masterpiece.jpg" alt="Chania">
			</div>
			<div class="col"
				style="font-family: 'Sofia', cursive; border: 1px solid pink;">
				<h3 style="padding: 35px;">Coming Soon</h3>
			</div>
			<div class="col-sm-4">
				<img class="img-fluid" src="./images/masterpiece.jpg" alt="Chania">
			</div>

		</div>
	</div>

	<!-- /Start your project here-->
	<!-- Footer -->
	<%@ include file="footer.jsp"%>



</body>

</html>