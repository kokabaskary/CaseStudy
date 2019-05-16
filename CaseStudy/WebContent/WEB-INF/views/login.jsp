<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">

<head>
   <title>Login Page</title>
  
  <!-- header tags -->
<%@ include file ="headertags.jsp" %>
<style>
    .error {
        color: red; font-weight: bold;
    }
</style>
  
</head>

<body>

<!-- Navbar -->
<%@ include file ="navbar.jsp" %>
  <!-- Start your project here-->
  <!--Section: Live preview-->
  
  
<section class="form-dark ">
<div style="height: 100vh;">
           <div class="flex-center">
               
           
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-offset-3">
<!--Form without header-->
<div class="card card-image" style="background-image: url('./images/masterpiece.jpg'); width: 50rem;">
    <div class="deep-purple-text rgba-stylish-strong py-5 px-5 z-depth-4">

        <!--Header-->
        <div class="text-center">
            <h3 class="pink-text mb-5 mt-4 font-weight-bold"><strong>Welcome</strong> <a class="pink-text font-weight-bold"><strong> Back</strong></a></h3>
        </div>

        <!--Body-->
        <form:form action="/CaseStudy/saveLogin" method="POST"
			modelAttribute="loginUser">
			<div class="form-group md-form pink-text">
				
				<form:input type="email" class="form-control  deep-purple-text"
					 path="loginUser.email" placeholder="Enter Email" />
					 <label for="Form-email5">Your Email:*</label>
				<small> 
				  <form:errors path="loginUser.email" cssClass="errormsg" />
				</small>
			</div>
			<div class="form-group md-form pb-3">
				
				<form:input type="password" class="form-control  pink-text" 
					 path="loginUser.password" placeholder="Enter password" id="Form-pass5" />
					 <label for="Form-pass5">Your Password:*</label>
				<small> 
				  <form:errors path="loginUser.password" cssClass="errormsg" />
				</small>
			</div>
       

        <!--Grid row-->
        <div class="row d-flex align-items-center mb-4">

            <!--Grid column-->
            <div class="text-center mb-3 col-md-12" >
                <button type="button" class="btn btn purple-gradient btn-block btn-rounded z-depth-1">Login</button>
            </div>
            <!--Grid column-->
        </div>
        </form:form>
        <!--Grid row-->

        <!--Grid column-->
        <div class="col-md-12">
            <p class="font-small white-text d-flex justify-content-end">Don't have an account? <a href="registration" class="pink-text ml-1 font-weight-bold"> Sign Up</a></p>
        </div>
        <!--Grid column-->

    </div>
</div>
<!--/Form without header-->
</div>
</div>
</div>
</div>
</div>
</section>
<!--Section: Live preview-->
  <!-- /Start your project here-->
  
  <!-- Footer -->
<%@ include file ="footer.jsp" %>

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