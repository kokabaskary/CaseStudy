<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>

<title>Customer List Page</title>
<!-- header tags -->
<%@ include file="headertags.jsp"%>
</head>

<body>
	<!-- Navbar -->
	<%@ include file="navbar.jsp"%>



	<!-- Start your project here-->
	<div class="container"  style="font-family: 'Sofia', cursive;">
		<h2>All Customers List:</h2>
			
		</div>	
		<div class="table-responsive">
	
			<table class="table table-bordered pink-text" style="font-family: 'Sofia', cursive;">
				<thead>
					<tr>
						<th>ID</th>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Phone</th>
						<th>Email</th>
						<th>Password</th>
						<th>Street</th>
						<th>City</th>
						<th>State</th>
						<th>Zip Code</th>
						<th>Action</th>

					</tr>
				</thead>
				<tbody>
				<c:forEach items="${customerList}" var="customer"><!--  from search controller-->
					<tr>
						<td>${customer.id}</td>
						<td>${customer.fName}</td>
						<td>${customer.lName}</td>
						<td>${customer.sMobile}</td>
						<td>${customer.loginUser.email}</td>
						<td>${customer.loginUser.password}</td>
						<td>${customer.street}</td>
						<td>${customer.city}</td>
						<td>${customer.state}</td>
						<td>${customer.zipcode}</td>
						<td><a  class="pink-text"href="/CaseStudy/editCustomer/${customer.id}">Edit</a>
						&nbsp;&nbsp;&nbsp; <a  class="pink-text" href="/CaseStudy/delete?id=${customer.id}">Delete</a>
					</td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
			
			
		</div>
	
	<!-- /Start your project here-->
	<!-- Footer -->
	<%@ include file="footer.jsp"%>



</body>

</html>