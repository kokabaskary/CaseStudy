<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Image Gallery Page !</title>

<!-- header tags -->
<%@ include file="headertags.jsp"%>


</head>

<body>

	<!-- Navbar -->
	<%@ include file="navbar.jsp"%>



	<!-- Start your project here-->
	<div class="container-fluid">
		<h1  style="font-family: 'Sofia', cursive; text-align: center">About Cakelicious</h1>

		<div class="row">
		<div class=col-sm-4">
		  <img class="img-fluid" src="./images/hollywood.jpg" alt="Chania" style="width:75%; height:100%; 
 					 padding: 35px;"></div>
		

			<div class="col" style="font-family: 'Sofia', cursive;   border: 1px solid pink;"><h3 style=" padding: 35px;">
				Cakelicious by Aelya is a home-based cake studio in Queens, New York
				specializing in decadently delicious cakes with elegant, handcrafted
				designs. Owner Aelya Askary started as a hobby baker in 2009, and
				self-taught herself the fine art of baking and decorating cakes.
				Starting with well tested recipes, each cake is made entirely from
				scratch using fresh, all natural ingredients. The simple ingredients
				of butter, sugar, flour, eggs, and cream turn into the most glorious
				cake layers and fillings. With well balanced layers of flavors.
				Always striving for a handcrafted look, with an eye for detail and
				well balanced composition, Aelya loves to create cakes tailored to
				your event. When family and friends gather in celebration, they
				share food and traditions that bring them closer. And end with a
				little slice of sweetness to start the beginning of something new.
				We look forward to working with you. We want to make your
				celebrations unforgettable and create beautiful cakes, just for you.
				</h3>
			</div>

		
		<div class=col-sm-4" ></div>
		
	</div>
	</div>
	<!-- /Start your project here-->
	<!-- Footer -->
	<%@ include file="footer.jsp"%>



</body>

</html>