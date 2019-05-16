<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>


<style>
* {
  box-sizing: border-box;
}

body {
  background-color: #f1f1f1;
  padding: 20px;
  font-family: Arial;
}

/* Center website */
.main {
  max-width: 1000px;
  margin: auto;
}

h1 {
  font-size: 50px;
  word-break: break-all;
}

.row {
  margin: 10px -16px;
}

/* Add padding BETWEEN each column */
.row,
.row > .column {
  padding: 8px;
}

/* Create three equal columns that floats next to each other */
.column {
  float: left;
  width: 33.33%;
  display: none; /* Hide all elements by default */
}

/* Clear floats after rows */ 
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Content */
.content {
  background-color: white;
  padding: 10px;
}

/* The "show" class is added to the filtered elements */
.show {
  display: block;
}

/* Style the buttons */
.btn {
  border: none;
  outline: none;
  padding: 12px 16px;
  background-color: white;
  cursor: pointer;
}

.btn:hover {
  background-color: #ddd;
}

.btn.active {
  background-color: #666;
  color: white;
}
</style>

<script src="simpleCart.js"></script>
<script>
 
  
  simpleCart({
	    cartColumns: [
	        { attr: "name" , label: "Name" } ,
	       
	        { attr: "total" , label: "SubTotal", view: 'currency' } ,
	        { view: "remove" , text: "Remove" , label: false }
	    ],
  
  checkout: {
      type: "PayPal",
      email: "you@yours.com"
    },
    
    currency: "USD",
    
 // "div" or "table" - builds the cart as a 
    // table or collection of divs
    cartStyle: "div", 
    
    
  // event callbacks 
  beforeAdd            : null,
  afterAdd            : null,
  load                : null,
  beforeSave        : null,
  afterSave            : null,
  update            : null,
  ready            : null,
  checkoutSuccess    : null,
  checkoutFail        : null,
  beforeCheckout        : null,
      beforeRemove           : null
	});
</script>
<!-- header tags -->
<%@ include file="headertags.jsp"%>
</head>

<body>
	<!-- Navbar -->
	<%@ include file="navbar.jsp"%>




	<!-- Start your project here-->
	<!-- MAIN (Center website) -->
<div class="main">

<h1 style=" color:#B39DDB; font-family: 'Sofia', cursive;">Order Online</h1>
<h5>These are made fresh to order and available for pick-up within 48 hours of order. For Fondant theme cakes 72 hours are required.</h5>
<hr>



<div id="myBtnContainer" style=" font-family: 'Sofia', cursive;">
  <button class=" btn btn-info btn-lg btn purple-gradient text-light active" onclick="filterSelection('all')" > Show all</button>
  <button class="btn btn-info btn-lg btn purple-gradient text-light" onclick="filterSelection('butter')"> ButterCream Cakes</button>
  <button class="btn btn-info btn-lg btn purple-gradient text-light" onclick="filterSelection('fondant')"> Fondant Cakes</button>
  <button class="btn btn-info btn-lg btn purple-gradient text-light" onclick="filterSelection('cupcake')"> Cupcakes</button>
</div>

<!-- Portfolio Gallery Grid -->


<div class="row" style=" font-family: 'Sofia', cursive;">
 
  <div class="column butter">
  <div class="simpleCart_shelfItem">
    <div class="content">
      <img src="./images/cricket.jpg" alt="buttercreamrose" style="width:100%">
      <h5 class="item_name">Soccer Field Cakes</h5>
      <h6>Rich Chocolate Flavor Sheet cake with ButterCream Frosting and hand crafted fondant accessories</h6>
    </div>
    <!-- Card footer -->
          <div class="card-footer px-1">
            <span class="float-left font-weight-bold">
              <h6 class="item_price">$150</h6>
            </span>
            <span class="float-right snipcart-add-item">
         
             
              <a  class="active item_add" data-toggle="tooltip" data-placement="top" title="Add to Cart" href="javascript:;">
                <h6> <i class="fas fa-shopping-cart "></i></h6>
              </a>
              
            </span>
          </div>
  </div>
  </div>
  
  <div class="column butter">
  <div class="simpleCart_shelfItem">
    <div class="content">
    <img src="./images/watercolor.jpg" alt="Lights" style="width:100%">
      <h5 class="item_name" >WaterColor Effect</h5>
      <h6>Mocha Flavor Sheet cake with water color ButterCream effect Frosting.</h6>
    </div>
    <!-- Card footer -->
          <div class="card-footer px-1">
            <span class="float-left font-weight-bold">
              <h6 class="item_price">$100</h6>
            </span>
            <span class="float-right">
              <a  class="active item_add" data-toggle="tooltip" data-placement="top" title="Add to Cart" href="javascript:;">
                <h6> <i class="fas fa-shopping-cart "></i></h6>
              </a>
              
            </span>
          </div>
  </div>
  </div>
  
  <div class="column butter">
  <div class="simpleCart_shelfItem">
    <div class="content">
    <img src="./images/threecolorrosettecake.jpg" alt="Nature" style="width:100%">
      <h5 class="item_name">Balage </h5>
      <h6> Dual flavor Chocolate and Vanilla Kentckuy Butter cake with ButterCream Roses.</h6>
    </div>
    <!-- Card footer -->
          <div class="card-footer px-1">
            <span class="float-left font-weight-bold">
              <h6 class="item_price">$75</h6>
            </span>
            <span class="float-right">
              <a  class="active item_add" data-toggle="tooltip" data-placement="top" title="Add to Cart" href="javascript:;">
                <h6> <i class="fas fa-shopping-cart "></i></h6>
              </a>
              
            </span>
          </div>
  </div>
  </div>
  
  <div class="column fondant">
  <div class="simpleCart_shelfItem">
    <div class="content">
      <img src="./images/purse.jpg" alt="Car" style="width:100%">
      <h5 class="item_name">Purse</h5>
      <h6>Coffee cake covered with MM  fondant and all hand crafted fondant  accessories.</h6>
    </div>
    <!-- Card footer -->
          <div class="card-footer px-1">
            <span class="float-left font-weight-bold">
             <h6 class="item_price">$200</h6>
            </span>
            <span class="float-right">
              <a  class="active item_add" data-toggle="tooltip" data-placement="top" title="Add to Cart" href="javascript:;">
                <h6> <i class="fas fa-shopping-cart "></i></h6>
              </a>
              
            </span>
          </div>
  </div>
  </div>
  
  
  <div class="column fondant">
  <div class="simpleCart_shelfItem">
    <div class="content">
    <img src="./images/football.jpg" alt="Car" style="width:100%">
      <h5 class="item_name">Soccer Field </h5>
      <h6>Rich Chocolate Flavor Sheet cake Covered with MM fondant and hand crafted fondant accessories.</h6>
    </div>
    <!-- Card footer -->
          <div class="card-footer px-1">
            <span class="float-left font-weight-bold">
              <h6 class="item_price">$150</h6>
            </span>
            <span class="float-right">
              <a  class="active item_add" data-toggle="tooltip" data-placement="top" title="Add to Cart" href="javascript:;">
                <h6> <i class="fas fa-shopping-cart "></i></h6>
              </a>
              
            </span>
          </div>
  </div>
  </div>
  
  
  <div class="column fondant">
  <div class="simpleCart_shelfItem">
    <div class="content">
    <img src="./images/toolman.jpg" alt="toolman" style="width:100%">
      <h5 class="item_name">Tool Man</h5>
      <h6>Delightful Strawberry cake with MM fondant and details. All hand crafted.</h6>
    </div>
    <!-- Card footer -->
          <div class="card-footer px-1">
            <span class="float-left font-weight-bold">
              <h6 class="item_price">$100</h6>
            </span>
            <span class="float-right">
              <a  class="active item_add" data-toggle="tooltip" data-placement="top" title="Add to Cart" href="javascript:;">
                <h6> <i class="fas fa-shopping-cart "></i></h6>
              </a>
              
            </span>
          </div>
  </div>
  </div>
  

  <div class="column cupcake">
  <div class="simpleCart_shelfItem">
    <div class="content">
      <img src="./images/grasscupcake.jpg" alt="grass" style="width:100%">
      <h5 class="item_name">Grass</h5>
     <h6>Vanilla cupcakes in the garden theme. A Dozen</h6>
    </div>
    <!-- Card footer -->
          <div class="card-footer px-1">
            <span class="float-left font-weight-bold">
              <h6 class="item_price">$50</h6>
            </span>
            <span class="float-right">
              <a  class="active item_add" data-toggle="tooltip" data-placement="top" title="Add to Cart" href="javascript:;">
                <h6> <i class="fas fa-shopping-cart "></i></h6>
              </a>
              
            </span>
          </div>
  </div>
  </div>
  
  
  <div class="column cupcake">
  <div class="simpleCart_shelfItem">
    <div class="content">
    <img src="./images/rosettecupace.jpg" alt="rose" style="width:100%">
      <h5 class="item_name">Rosette Cupcake</h5>
      <h6>Red Velvet cupcakes with beautifully piped butter cream roses. A Dozen</h6>
    </div>
    <!-- Card footer -->
          <div class="card-footer px-1">
            <span class="float-left font-weight-bold">
              <h6 class="item_price">$50</h6>
            </span>
            <span class="float-right">
              <a  class="active item_add" data-toggle="tooltip" data-placement="top" title="Add to Cart" href="javascript:;">
                <h6> <i class="fas fa-shopping-cart "></i></h6>
              </a>
              
            </span>
          </div>
  </div>
  </div>
  
  <div class="column cupcake">
  <div class="simpleCart_shelfItem">
    <div class="content">
    <img src="./images/owlcupcake.jpg" alt="owl" style="width:100%">
      <h5 class="item_name">Owl Cupcake</h5>
      <h6>Chocolate cupcakes .Half Dozen</h6>
    </div>
    <!-- Card footer -->
          <div class="card-footer px-1">
            <span class="float-left font-weight-bold">
              <h6 class="item_price">$45</h6>
            </span>
            <span class="float-right">
              <a  class="active item_add" data-toggle="tooltip" data-placement="top" title="Add to Cart" href="javascript:;">
               <h6> <i class="fas fa-shopping-cart "></i></h6>
              </a>
              
            </span>
          </div>
  </div>
  </div>
<!-- END GRID -->
</div>

<!-- END MAIN -->
</div>

<span class="simpleCart_quantity"></span> items - 
<span class="simpleCart_total"></span>
<a href="javascript:;" class="simpleCart_empty"><button class="btn purple-gradient">Remove</button></a>
<div class="simpleCart_total"></div>
<a href="javascript:;" class="simpleCart_checkout">Checkout</a>

<script>
filterSelection("all")
function filterSelection(c) {
  var x, i;
  x = document.getElementsByClassName("column");
  if (c == "all") c = "";
  for (i = 0; i < x.length; i++) {
    w3RemoveClass(x[i], "show");
    if (x[i].className.indexOf(c) > -1) w3AddClass(x[i], "show");
  }
}

function w3AddClass(element, name) {
  var i, arr1, arr2;
  arr1 = element.className.split(" ");
  arr2 = name.split(" ");
  for (i = 0; i < arr2.length; i++) {
    if (arr1.indexOf(arr2[i]) == -1) {element.className += " " + arr2[i];}
  }
}

function w3RemoveClass(element, name) {
  var i, arr1, arr2;
  arr1 = element.className.split(" ");
  arr2 = name.split(" ");
  for (i = 0; i < arr2.length; i++) {
    while (arr1.indexOf(arr2[i]) > -1) {
      arr1.splice(arr1.indexOf(arr2[i]), 1);     
    }
  }
  element.className = arr1.join(" ");
}


// Add active class to the current button (highlight it)
var btnContainer = document.getElementById("myBtnContainer");
var btns = btnContainer.getElementsByClassName("btn");
for (var i = 0; i < btns.length; i++) {
  btns[i].addEventListener("click", function(){
    var current = document.getElementsByClassName("active");
    current[0].className = current[0].className.replace(" active", "");
    this.className += " active";
  });
}
</script>
	<!-- /Start your project here-->
	<!-- Footer -->
	<%@ include file="footer.jsp"%>



</body>

</html>