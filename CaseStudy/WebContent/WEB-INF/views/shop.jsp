<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
   <title>Shop Page</title>
  
  <!-- header tags -->
<%@ include file ="headertags.jsp" %>

    </head>
    <body>
    
    <!-- Navbar -->
<%@ include file ="navbar.jsp" %>
       
            <div class="shop-items">
                <div class="shop-item">
                    <span class="shop-item-title">Owl Cupcakes</span>
                    <img class="shop-item-image" src="./images/owlcupcake.jpg">
                    <div class="shop-item-details">
                        <span class="shop-item-price">$12.99</span>
                        <button class="btn btn-primary shop-item-button" type="button">ADD TO CART</button>
                    </div>
                </div>
                <div class="shop-item">
                    <span class="shop-item-title">M&M </span>
                    <img class="shop-item-image" src="./images/m&m.jpg">
                    <div class="shop-item-details">
                        <span class="shop-item-price">$14.99</span>
                        <button class="btn btn-primary shop-item-button"type="button">ADD TO CART</button>
                    </div>
                </div>
                <div class="shop-item">
                    <span class="shop-item-title">6-Tired Rainbow</span>
                    <img class="shop-item-image" src="./images/rainbow.jpg">
                    <div class="shop-item-details">
                        <span class="shop-item-price">$9.99</span>
                        <button class="btn btn-primary shop-item-button" type="button">ADD TO CART</button>
                    </div>
                </div>
                <div class="shop-item">
                    <span class="shop-item-title">Candid Camera</span>
                    <img class="shop-item-image" src="./images/cameracake.jpg">
                    <div class="shop-item-details">
                        <span class="shop-item-price">$19.99</span>
                        <button class="btn btn-primary shop-item-button" type="button">ADD TO CART</button>
                    </div>
                </div>
            </div>
       
        <section class="container content-section">
           
            <div class="shop-items">
                <div class="shop-item">
                    <span class="shop-item-title">Buttercream Rossette</span>
                    <img class="shop-item-image" src="./images/purpleRossettee.jpg">
                    <div class="shop-item-details">
                        <span class="shop-item-price">$19.99</span>
                        <button class="btn btn-primary shop-item-button" type="button">ADD TO CART</button>
                    </div>
                </div>
                <div class="shop-item">
                    <span class="shop-item-title">BasketBall Cake</span>
                    <img class="shop-item-image" src="./images/basketball.jpg">
                    <div class="shop-item-details">
                        <span class="shop-item-price">$6.99</span>
                        <button class="btn btn-primary shop-item-button" type="button">ADD TO CART</button>
                    </div>
                </div>
            </div>
        </section>
        <!-- Footer -->
<%@ include file ="footer.jsp" %>

    </body>
</html>