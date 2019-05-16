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

	<div style="font-family: 'Sofia', cursive;">
		<h1>${headerMessage}</h1>
		<h3 >Your Inquiry has been submitted!</h3>
		<h3>${msg}</h3>
		<h4 >Inquiry details</h4>
	</div>
	<div class="table-responsive">
	<table class="table table-bordered pink-text" style="font-family: 'Sofia', cursive;">
		<thead>
			<tr >
				<th>#</th>
				<th >Name:</th>
				<th>Email:</th>
				<th>Phone:</th>
				<th>Date of Event:</th>
				<th>Number Of People Serving:</th>
				<th>Size of cake:</th>
				<th>Choice of frosting:</th>
				<th>Choice of Filling:</th>
				<th>Choice of Flavor:</th>
				<th>Message( What do you have in mind):</th>
				<th>Total bill:</th>
				<th>Action:</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>${inquiryForm.id}</td>
				<td>${inquiryForm.inquiryCustomer.name}</td>
				<td>${inquiryForm.inquiryCustomer.email}</td>
				<td>${inquiryForm.inquiryCustomer.phone}</td>
				<td><fmt:formatDate value="${inquiryForm.inquiryCustomer.eventDate}" pattern="dd-MM-yyyy"/></td>
				<td>${inquiryForm.inquiryCustomer.peopleServing}</td>
				<td>${inquiryForm.cakeSize.getDesc()}</td>
				<td>${inquiryForm.cakeFrosting.getDesc()}</td>
				<td>${inquiryForm.cakeFilling.getDesc()}</td>
				<td>${inquiryForm.cakeFlavor.getDesc()}</td>
				<td>${inquiryForm.inquiryCustomer.message}</td>
				<td>$${inquiryForm.totalPrice}</td>
				
				<td> <a class="pink-text" href="/CaseStudy/deleteInquiry?id=${inquiryForm.id}">Delete</a>
					</td>
				
			</tr>
			

		</tbody>
	</table>
	</div>


	<!-- Footer -->
	<%@ include file="footer.jsp"%>

</body>
</html>