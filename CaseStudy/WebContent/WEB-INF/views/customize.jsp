
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
 <!-- header tags -->
<%@ include file ="headertags.jsp" %>
<title>Customize Page</title>


</head>
<body>

	<!-- Navbar -->
	<%@ include file="navbar.jsp"%>

	<!--************************ form ********************************************************-->
	<div class="container">
	<div class="row">
  <div class="col-sm-12" >Custom Cakes</div>
  
</div>
	<div class="row">
  <div class="col-sm-12" style="font-family: 'Sofia', cursive;"></div>
  
</div>
	 <div class="row" style=" 
 					 padding: 35px;">
    <div class="col-sm-4"  >
    	<img class="img-fluid"  src="./images/masterpiece.jpg" alt="Chania">
    </div>
    <div class="col-sm-8">
  

		<form:form action="submitOrder" method="post"
			modelAttribute="cakeOrderForm"  >
			
				<div class="form-group">
					<label for="size">Cake Size:*</label>
					<form:select path="cakeSize" class="form-control" id="size"
						>
						<c:forEach var="size" items="${sizeList}" >
							<form:option value="${size}">${size.getDesc()}
				</form:option>
						</c:forEach>
					</form:select>
					<small> <form:errors path="cakeSize" cssClass="errormsg" />
					</small>
				</div>

				<div class="form-group">
					<label for="frosting">Cake Frosting:*</label>
					<form:select path="cakeFrosting" class="form-control" id="frosting"
						>
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
					<label for="filling">Cake Filling:*</label>
					<form:select path="cakeFilling" class="form-control" id="filling"
						>
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
					<label for="flavor">Cake Flavor:*</label>
					<form:select path="cakeFlavor" class="form-control" id="flavor"
						>
						<c:forEach var="flavor" items="${flavorList}">
							<form:option value="${flavor}">${flavor.getDesc()}
				</form:option>
						</c:forEach>
					</form:select>
					<small> <form:errors path="cakeFlavor" cssClass="errormsg" />
					</small>
				</div>
				
				<div class="form-group">
						<label for="orderDate">Order Date:*</label>
						<form:input type="date" class="form-control" id="eventDate" path="orderDate" />
						<small> <form:errors path="orderDate" cssClass="errormsg" />
						</small>
					</div>
				
				


				<!-- Price div -->
				<div class="text-center mb-3 col-md-12" >
                <button type="submit" class="btn btn purple-gradient btn-block btn-rounded z-depth-1">Order</button>
            </div>
				
		</form:form>
		</div>
		</div>
	</div>


	<!-- Footer -->
	<%@ include file="footer.jsp"%>
	
	

</body>
</html>