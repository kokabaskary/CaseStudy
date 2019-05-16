<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">

<head>

<title>Contact Page</title>
<!-- header tags -->
<%@ include file="headertags.jsp"%>



</head>

<body>
	<!-- Navbar -->
	<%@ include file="navbar.jsp"%>
	
	<div class="container">
<div class="bg-image"></div>
		<h2>${msg}</h2>
		<form:form action="/CaseStudy/saveContactInfo" method="POST"
			modelAttribute="contactInfo">
			<div class="form-group">
				<label for="name"> Name:*</label>
				<form:input type="text" class="form-control" id="name" path="name"  />
				<small> <form:errors path="name" cssClass="errormsg" />
				</small>
			</div>

			<div class="form-group">
				<label for="email">Email: *</label>
				<form:input type="email" class="form-control" id="email"
					path="email" />
				<small> <form:errors path="email" cssClass="errormsg" />
				</small>
			</div>
			<div class="form-group">
				<label for="subject">Subject: *</label>
				<form:input type="text" class="form-control" id="subject"
					path="subject" />
				<small> <form:errors path="subject" cssClass="errormsg" />
				</small>
			</div>

			<div class="form-group">
				<label for="message">Message:*</label>
				<form:textarea type="text" class="md-textarea form-control" id="street"
					path="message" />
				<small> <form:errors path="message" cssClass="errormsg" />
				</small>
			</div>
			<!-- Trigger the modal with a button -->
			<button type="submit"
				class="btn btn-info btn-lg btn purple-gradient text-light"
				data-toggle="modal" data-target="#myModal">Sent</button>

			<!-- Modal -->
			<div class="modal fade" id="myModal" role="dialog">
				<div class="modal-dialog">

					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title">Information Sent</h4>
						</div>
						<div class="modal-body">
							<p>Your querry has been posted. Will be contacting you
								shortly. Thanks for Posting</p>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
						</div>
					</div>

				</div>
			</div>

			<!-- <button type="submit" class="btn purple-gradient text-light">Send</button>
			<br>
			<br> -->
		</form:form>

	</div>

	<!-- Footer -->
	<%@ include file="footer.jsp"%>



</body>

</html>