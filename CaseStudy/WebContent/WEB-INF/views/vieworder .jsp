<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
 <!-- header tags -->
<%@ include file ="headertags.jsp" %>


<title>Order Success!</title>
</head>


<body>

	<!-- Navbar -->
	<%@ include file="navbar.jsp"%>

	<div>
		<h1>${headerMessage}</h1>
		<h2>Congratulations! Order submitted successfully!</h2>
		<h3>${msg}</h3>
		<h3>Order details</h3>
	</div>
	<table class="table table-bordered">
		<thead>
			<tr>
				<th>#</th>
				<th>Size of cake:</th>
				<th>Choice of frosting:</th>
				<th>Choice of Filling:</th>
				<th>Size of cake:</th>
				<th>Total bill:</th>
				<th>Order Date:</th>
				<th>Status:</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th>1</th>
				<td>${customCake.cakeSize.getDesc()}</td>
				<td>${customCake.cakeFrosting.getDesc()}</td>
				<td>${customCake.cakeFrosting.getDesc()}</td>
				<td>${customCake.cakeFlavor.getDesc()}</td>
				<td>$${customCake.totalPrice}</td>
				<td>${customCake.orders.orderDate}</td>
				<td>${customCake.orders.status}</td>
			</tr>
			<tr>
				<td><input class="btn btn-dark" type="submit" value="Save"></td>
			</tr>

		</tbody>
	</table>
	<div class="col-md-12">
		<p class="font-small white-text d-flex justify-content-end">
			Go Back To Home Page? <a href="index"
				class="pink-text ml-1 font-weight-bold"> Home</a>
		</p>
	</div>


	<!-- Footer -->
	<%@ include file="footer.jsp"%>

</body>
</html>