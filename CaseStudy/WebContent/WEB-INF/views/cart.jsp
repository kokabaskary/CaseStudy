<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>

<link href="/simple_cart.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha384-tsQFqpEReu7ZLhBV2VZlAu7zcOV+rXbYlF2cqB8txI/8aZajjp4Bqd+V6D5IgvKT"
	crossorigin="anonymous"></script>
<script src="/jQuery.SimpleCart.js"></script>
<!-- header tags -->
<%@ include file="headertags.jsp"%>
</head>

<body>
	<!-- Navbar -->
	<%@ include file="navbar.jsp"%>




	<!-- Start your project here-->

	<div class="container-fluid"
		style="text-align: center; font-family: 'Sofia', cursive;">


		<div class="row">
			<div class="col-sm-4">
				<img class="img-fluid" src="./images/anniversarycake" alt="Chania">
			</div>
			<div class="col"
				style="font-family: 'Sofia', cursive; border: 1px solid pink;">
				<h3 style="padding: 35px;">Home made desserts and custom made
					cakes for everyday or special occasions Some of my specialities
					that are loved by family and friends. We are passionate about
					tailoring each and every sweet creation to your style. Above all,
					we believe any love is worth celebrating. Sweets equally serves
					every one with a story to tell.</h3>
				<button class="sc-add-to-cart" data-name="Product" data-price="50"
					type="submit">ADD To Cart</button>
					
			</div>
			<div class="col-sm-4">
			<div id="cart"></div>
			</div>

		</div>
	</div>
	<!-- /Start your project here-->
	<!-- Footer -->
	<%@ include file="footer.jsp"%>



</body>

</html>