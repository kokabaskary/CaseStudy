<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Edit Inquiry Page</title>

<!-- header tags -->
<%@ include file="headertags.jsp"%>

</head>

<body>
	<!-- Navbar -->
	<%@ include file="navbar.jsp"%>



	<!-- Start your project here-->
	<div class="container">
		<h2>Inquiry Details:</h2>

		<div class="table-responsive">

			<table class="table table-bordered">
				<thead>
					<tr>
						<th>ID</th>
						<th>Name:</th>
						<th>Email:</th>
						<th>Phone:</th>
						<th>Date of Event:</th>
						<th>Number Of People Serving:</th>
						<th>Size of cake:</th>
						<th>Choice of frosting:</th>
						<th>Choice of Filling:</th>
						<th>Size of cake:</th>
						<th>Message( What do you have in mind):</th>
						<th>Total bill:</th>


					</tr>
				</thead>
				<tbody>
					<form:form action="editInformation" method="POST"
						modelAttribute="inquiryForm">
						<tr>

							<td><form:hidden path="id" /></td>
							<td><form:input path="inquiryCustomer.name" /></td>
							<td><form:input path="inquiryCustomer.email" /></td>
							<td><form:input path="inquiryCustomer.phone" /></td>
							<td><form:input path="inquiryCustomer.eventDate" /></td>
							<td><form:input path="inquiryCustomer.peopleServing" /></td>
							<td><form:select path="cakeSize" /></td>
							<td><form:select path="cakeFrosting" /></td>
							<td><form:select path="cakeFilling" /></td>
							<td><form:select path="cakeFlavor" /></td>
							<td><form:textarea path="inquiryCustomer.message" /></td>

						</tr>
						<tr>
							<td><input
								class="btn btn-info btn-lg btn purple-gradient text-light"
								type="submit" value="Save"></td>
						</tr>
					</form:form>
				</tbody>
			</table>



		</div>
	</div>

	<!-- /Start your project here-->
	<!-- Footer -->
	<%@ include file="footer.jsp"%>
	
	

</body>

</html>