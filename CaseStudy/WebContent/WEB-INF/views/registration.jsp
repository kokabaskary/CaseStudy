<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <!-- Form Error -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">

<head>
   <title>Registration Page</title>
  
  <!-- header tags -->
<%@ include file ="headertags.jsp" %>

</head>

<body>

<!-- Navbar -->
<%@ include file ="navbar.jsp" %>

  <!-- Start your project here-->
  <!--************************ form ********************************************************-->
	<div class="container">

	<h2>${msg}</h2>
	
		<form:form action="/CaseStudy/saveCustomer" method="POST"
			modelAttribute="customer">
			<div class="form-group">
				<label for="fname">First Name:*</label>
				<form:input type="text" class="form-control" id="fname"
					 path="fName" placeholder="Enter First Name" />
				<small> 
				  <form:errors path="fName" cssClass="errormsg" />
				</small>
			</div>
			<div class="form-group">
				<label for="lname">Last Name:*</label>
				<form:input type="text" class="form-control" id="lname"
				 path="lName"  placeholder="Enter Last Name"/>
				<small> 
				  <form:errors path="lName" cssClass="errormsg" />
				</small>
			</div>
			
			<div class="form-group">
				<label for="mobile">Phone:*</label>
				<form:input type="text" class="form-control" id="mobile"
					placeholder="123-456-7890" path="sMobile" />
				<small> 
				<form:errors path="sMobile" cssClass="errormsg" />
				</small>
			</div>
			
			<div class="form-group">
				<label for="email">Email: *</label> 
				<form:input type="email"
							class="form-control" id="email" placeholder="Enter email"
							path="user.email"/>
							<small> 
				<form:errors path="user.email" cssClass="errormsg" />
				</small>
			</div>
			<div class="form-group">
						<label for="pwd">Password: *</label>
						 <form:input type="password"
							class="form-control" id="pwd" placeholder="Enter password"
							path="user.password"/>
							<small> 
				<form:errors path="user.password" cssClass="errormsg" />
				</small>
			</div>
			

			
			<div class="form-group">
				<label for="address">Address:</label>
				
			</div>
			<div class="form-group">
				<label for="street">Street:*</label>
				<form:input type="text" class="form-control" id="street"
					 path="street" />
				<small> 
				<form:errors path="street" cssClass="errormsg" />
				</small>
			</div>
			<div class="form-group">
				<label for="city">City:*</label>
				<form:input type="text" class="form-control" id="city"
					 path="city" />
				<small> 
				<form:errors path="city" cssClass="errormsg" />
				</small>
			</div>
			<div class="form-group">
				<label for="state">State:*</label>
				<form:input type="text" class="form-control" id="state"
					 path="state" />
				<small> 
				<form:errors path="state" cssClass="errormsg" />
				</small>
			</div>
			<div class="form-group">
				<label for="zipcode">ZipCode:*</label>
				<form:input type="text" class="form-control" id="zip"
					 path="zipcode" />
				<small> 
				<form:errors path="zipcode" cssClass="errormsg" />
				</small>
			</div>
			


			<button type="submit" class="btn purple-gradient text-light">Create</button><br><br>
		</form:form>
	</div>
	
	
	<!-- Footer -->
<%@ include file ="footer.jsp" %>

  <!-- /Start your project here-->

  <!-- SCRIPTS -->
  <!-- JQuery -->
  <script type="text/javascript" src="./js/jquery-3.4.0.min.js"></script>
  <!-- Bootstrap tooltips -->
  <script type="text/javascript" src="./js/popper.min.js"></script>
  <!-- Bootstrap core JavaScript -->
  <script type="text/javascript" src="./js/bootstrap.min.js"></script>
  <!-- MDB core JavaScript -->
  <script type="text/javascript" src="./js/mdb.min.js"></script>
</body>

</html>