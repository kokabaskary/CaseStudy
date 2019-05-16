<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

   <!-- header tags -->
<%@ include file ="headertags.jsp" %>
<title>Order Success!</title>
</head>


<body>

<!-- Navbar -->
<%@ include file ="navbar.jsp" %>

<div>
<h1>${headerMessage}</h1>
	<h2>Congratulations! Order submitted successfully!</h2>
	<h3>${msg}</h3>
	<h3>Order details</h3>
</div>
	<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Size of cake:</th>
      <th scope="col">Choice of frosting:</th>
      <th scope="col">Choice of Filling:</th>
      <th scope="col">Choice of Flavor:</th>
     
     
      <th scope="col">Total bill:</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>${customCake.cakeSize.getDesc()}</td>
      <td>${customCake.cakeFrosting.getDesc()}</td>
     <td>${customCake.cakeFrosting.getDesc()}</td>
     <td>${customCake.cakeFlavor.getDesc()}</td>
     
     <td>$${customCake.totalPrice}</td>
    </tr>
    
  </tbody>
</table>
	
	
	<!-- Footer -->
<%@ include file ="footer.jsp" %>


  
</body>
</html>