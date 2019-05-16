<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Application Success!</title>
</head>
<body>
	<h1>${headerMessage}</h1>
	<h2>Congratulations! Order submitted successfully!</h2>
	<h3>${msg}</h3>
	<h3>Order details</h3>
	<p>
	Size of cake: ${customCake.cakeSize.getDesc()}
	</p>
	<p>
	Choice of frosting: ${customCake.cakeFrosting.getDesc()}
	</p>
	<p>
	Total bill: $${customCake.totalPrice}
	</p>
	<br>
</body>
</html>