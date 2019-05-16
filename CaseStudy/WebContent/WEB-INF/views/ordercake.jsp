<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form:form action="submitOrder" method="post" modelAttribute="cakeOrderForm">
		<p>
		<form:select path="cakeSize">
			<c:forEach var="size" items="${sizeList}">
				<form:option value="${size}">${size.getDesc()}</form:option>
			</c:forEach>
		</form:select>
		</p>
		<p>
		<form:select path="cakeFrosting">
			<c:forEach var="frosting" items="${frostingList}">
				<form:option value="${frosting}">${frosting.desc}</form:option>
			</c:forEach>
		</form:select>
		</p>
		<input type="submit" value="Order">
	</form:form>
</body>
</html>