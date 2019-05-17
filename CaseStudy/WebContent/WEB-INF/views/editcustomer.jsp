<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
   
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <title>Edit Customer Page</title>
  
  <!-- header tags -->
<%@ include file ="headertags.jsp" %>

</head>

<body>
<!-- Navbar -->
<%@ include file ="navbar.jsp" %>



  <!-- Start your project here-->
  <div class="container">
		<h2>Customer Details:</h2>

		<div class="table-responsive">
		
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>ID</th>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Email</th>
						<th>Password</th>
						<th>Phone</th>
						<th>Street</th>
						<th>City</th>
						<th>State</th>
						<th>Zip Code</th>
						

					</tr>
				</thead>
				<tbody>
				<form:form action="editCustomer" method="POST" modelAttribute="registrationForm">
					<tr>
					
						<td><form:hidden path="id" /></td>
						<td><form:input path="fName" /></td>
						<td><form:input path="lName" /></td>
						<td><form:input path="loginUser.email" /></td>
						<td><form:input path="loginUser.password" /></td>
						<td><form:input path="sMobile" /></td>
						
						<td><form:input path="street" /></td>
						<td><form:input path="city" /></td>
						<td><form:input path="state" /></td>
						<td><form:input path="zipcode" /></td>
					
					</tr>
					<tr>
					<td><input class="btn btn-info btn-lg btn purple-gradient text-light" type="submit" value="Save"></td>
					</tr>
				</form:form>
				</tbody>
			</table>
			
			
			
		</div>
	</div>
  
  <!-- /Start your project here-->
<!-- Footer -->
<%@ include file ="footer.jsp" %>

</body>

</html>