<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>

<!-- header tags -->
<%@ include file="headertags.jsp"%>
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