
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
<!-- header tags -->
<%@ include file="headertags.jsp"%>
<title>Inquiry Page</title>


</head>
<body>

	<!-- Navbar -->
	<%@ include file="navbar.jsp"%>

	<!--************************ form ********************************************************-->
	<div class="container">
		
		<div class="row">
			<div class="col-sm-12" style="font-family: 'Sofia', cursive; padding: 35px;">Customize Inquiry Form</div>

		</div>
		<div class="row">
			<div class="col-sm-4">
				<img class="img-fluid" src="./images/masterpiece.jpg" style="height:100%; width:250%; padding: 35px;" alt="Chania">
			</div>
			<div class="col-sm-8">


				<form:form action="submitInquiry" method="post"
					modelAttribute="inquiryCustomerForm" id="inquiryform">

					<div class="form-group">
						<label for="name">Name:*</label>
						<form:input type="text" class="form-control" id="name" path="inquiryCustomer.name" />
						<small> <form:errors path="inquiryCustomer.name" cssClass="errormsg" />
						</small>
					</div>
					<div class="form-group">
						<label for="email">Email:*</label>
						<form:input type="email" class="form-control" id="email"
							path="inquiryCustomer.email" />
						<small> <form:errors path="inquiryCustomer.email" cssClass="errormsg" />
						</small>
					</div>
					<div class="form-group">
						<label for="phone">Phone:*</label>
						<form:input type="phone" class="form-control" id="phone"
							path="inquiryCustomer.phone"  placeholder="123-456-7890"/>
						<small> <form:errors path="inquiryCustomer.phone" cssClass="errormsg" />
						</small>
					</div>
					<div class="form-group">
						<label for="eventDate">Date Of Event:*</label>
						<form:input type="date" class="form-control" id="eventDate" path="inquiryCustomer.eventDate" />
						<small> <form:errors path="inquiryCustomer.eventDate" cssClass="errormsg" />
						</small>
					</div>
					<div class="form-group">
						<label for="peopleServing">Number Of People Serving:*</label>
						<form:input type="text" class="form-control" id="peopleServing"
							path="inquiryCustomer.peopleServing" />
						<small> <form:errors path="inquiryCustomer.peopleServing" cssClass="errormsg" />
						</small>
					</div>
					
					


					<div class="form-group">
						<label for="size">Cake Size:*</label>
						<form:select path="cakeSize" class="form-control" id="size">
							<c:forEach var="size" items="${sizeList}">
								<form:option value="${size}">${size.getDesc()}
				</form:option>
							</c:forEach>
						</form:select>
						<small> <form:errors path="cakeSize" cssClass="errormsg" />
						</small>
					</div>

					<div class="form-group">
						<label for="frosting">Cake Frosting:*</label>
						<form:select path="cakeFrosting" class="form-control"
							id="frosting">
							<c:forEach var="frosting" items="${frostingList}">
								<form:option value="${frosting}">${frosting.getDesc()}
				</form:option>
							</c:forEach>
						</form:select>
						<small> <form:errors path="cakeFrosting"
								cssClass="errormsg" />
						</small>
					</div>

					<div class="form-group">
						<label for="frosting">Cake Filling:*</label>
						<form:select path="cakeFilling" class="form-control" id="filling">
							<c:forEach var="filling" items="${fillingList}">
								<form:option value="${filling}">${filling.getDesc()}
				</form:option>
							</c:forEach>
						</form:select>
						<small> <form:errors path="cakeFilling"
								cssClass="errormsg" />
						</small>
					</div>

					<div class="form-group">
						<label for="frosting">Cake Flavor:*</label>
						<form:select path="cakeFlavor" class="form-control" id="flavor">
							<c:forEach var="flavor" items="${flavorList}">
								<form:option value="${flavor}">${flavor.getDesc()}
				</form:option>
							</c:forEach>
						</form:select>
						<small> <form:errors path="cakeFlavor" cssClass="errormsg" />
						</small>
					</div>
					
					<div class="form-group">
						<label for="message">Message( What do you have in mind):*</label>
						<form:textarea type="text" class="form-control" id="message"
							path="inquiryCustomer.message" />
						<small> <form:errors path="inquiryCustomer.message" cssClass="errormsg" />
						</small>
					</div>


					<!-- end of  check box -->

					<!-- Price div -->
					<div class="text-center mb-3 col-md-12">
						<button type="submit"
							class="btn btn purple-gradient btn-block btn-rounded z-depth-1">Inquire</button>
					</div>

				</form:form>
			</div>
		</div>
	
</div>

	<!-- Footer -->
	<%@ include file="footer.jsp"%>



</body>
</html>