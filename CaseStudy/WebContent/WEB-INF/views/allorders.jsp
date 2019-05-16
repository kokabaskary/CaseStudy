<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Order List Page</title>
<!-- header tags -->
<%@ include file="headertags.jsp"%>
</head>

<body>
	<!-- Navbar -->
	<%@ include file="navbar.jsp"%>



	<!-- Start your project here-->
	<div class="container">
		<h2>All orders:</h2>

		<div class="table-responsive">

			<table class="table table-bordered">
				<thead>
					<tr>
						<th>ID</th>
						<th>Total Price:</th>
						<th>Order Date:</th>
						<th>Status:</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${orderList}" var="orders">
						<!--  from search controller-->
						<tr>
							
							<td>${orders.id}</td>
							<td>${orders.totalPrice}</td>
							<td>${orders.orderDate}</td>
							<td>${orders.status}</td>
							

						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div class="col-md-12">
				<p class="font-small white-text d-flex justify-content-end">
					Go Back To Home Page? <a href="index"
						class="pink-text ml-1 font-weight-bold"> Home</a>
				</p>
			</div>

			
		</div>
	</div>
	<!-- /Start your project here-->
	<!-- Footer -->
	<%@ include file="footer.jsp"%>



</body>

</html>