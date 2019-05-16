/*
This source is shared under the terms of LGPL 3
www.gnu.org/licenses/lgpl.html

You are free to use the code in Commercial or non-commercial projects
*/

 //Set up an associative array
 //The keys represent the size of the cake
 //The values represent the cost of the cake i.e A 10" cake cost's $35
 var cake_size_prices = new Array();
 cake_size_prices[" 6 inches Serves 6-12 - $35.0"]=35.0;
 cake_size_prices["8 inches Serves 13-23  - $55.0"]=55.0;
 cake_size_prices["10 inches Serves 24-36  - $75.0"]=75.0;
 
 
 //Set up an associative array 
 //The keys represent the filling type
 //The value represents the cost of the filling i.e. Lemon filling is $5,Dobash filling is $9
 //We use this this array when the user selects a filling from the form
 var frosting_prices= new Array();

 frosting_prices["BUTTERCREAM Vanilla/Chocolate frosting - $10.0"]=10.0;
 frosting_prices["CHOCOLATE_GANACHE Ganache(Dark/Milk)  - $15.0"]=15.0;
 frosting_prices["FRESH_CREAM Whipped Cream  - $15.0"]=15.0;
 frosting_prices["Cream Cheese - $12.0"]=12.0;
 frosting_prices["Marshmallow Fondant - $20.0"]=20.0;
  

//=============================================================
//Set up an associative array 
 //The keys represent the filling type
 //The value represents the cost of the filling i.e. Lemon filling is $5,Dobash filling is $9
 //We use this this array when the user selects a filling from the form
 var filling_prices= new Array();

 filling_prices["BUTTERCREAM_FILLING Vanilla/Chocolate Filling - $10.0"]=10.0;
 filling_prices["CHOCOLATE_GANACHE_FILLING Ganache(Dark/Milk)  - $10.0"]=10.0;
 filling_prices["Fresh Fruit Filling - $15.0"]=15.0;
 filling_prices["Cream Cheese Filling - $12.0"]=12.0;
 filling_prices["Fresh Cream Filling - $12.0"]=12.0;
 
 
//===================================================================
 
//Set up an associative array 
 //The keys represent the filling type
 //The value represents the cost of the filling i.e. Lemon filling is $5,Dobash filling is $9
 //We use this this array when the user selects a filling from the form
 var flavor_prices= new Array();
 
 flavor_prices["Red Velvet - $15.0"]=15.0;
 flavor_prices["Pound(Chocolate/Vanilla)  - $10.0"]=10.0;
 flavor_prices["Mocha Coffee Cake - $12.0"]=12.0;
 flavor_prices["NewYork Style Cheese Cake - $20.0"]=20.0;
 flavor_prices["Fudge Brownies - $12.0"]=12.0;
 
 flavor_prices["Black Forest - $12.00"]=10.0;
 flavor_prices["Nando Style Chocolate Cake - $12.0"]=10.0;
 flavor_prices["Dense Chocolate Cake - $15.0"]=15.0;
 flavor_prices["Kentucky Butter(Chocolate/Vanilla) - $12.0"]=12.0;
 flavor_prices["Coffee Cake - $12.0"]=12.0;
 
 
//===================================================================
//This function finds the size price based on the 
//drop down selection
function getSizePrice()
{
var cakeSizePrice=0;
//Get a reference to the form id="cakeform"
var theForm = document.forms["cakeform"];
//Get a reference to the select id="filling"
 var selectedSize = theForm.elements["size"];
 
//set cakeSize Price equal to value user chose
//For example size_prices["Lemon".value] would be equal to 5
cakeSizePrice = cake_size_prices[selectedSize.value];

//finally we return cakeFillingPrice
return cakeSizePrice;
}

//=========================================================

//This function finds the frosting price based on the 
//drop down selection
function getFrostingPrice()
{
var cakeFrostingPrice=0;
//Get a reference to the form id="cakeform"
var theForm = document.forms["cakeform"];
//Get a reference to the select id="filling"
 var selectedFrosting = theForm.elements["frosting"];
 
//set cakeSize Price equal to value user chose
//For example size_prices["Lemon".value] would be equal to 5
cakeFrostingPrice = frosting_prices[selectedFrosting.value];

//finally we return cakeFillingPrice
return cakeFrostingPrice;
}

//==========================================================

//This function finds the filling price based on the 
//drop down selection
function getFillingPrice()
{
    var cakeFillingPrice=0;
    //Get a reference to the form id="cakeform"
    var theForm = document.forms["cakeform"];
    //Get a reference to the select id="filling"
     var selectedFilling = theForm.elements["filling"];
     
    //set cakeFilling Price equal to value user chose
    //For example filling_prices["Lemon".value] would be equal to 5
    cakeFillingPrice = filling_prices[selectedFilling.value];

    //finally we return cakeFillingPrice
    return cakeFillingPrice;
}

//==========================================================

//This function finds the flavor price based on the 
//drop down selection
function getFlavorPrice()
{
  var cakeFlavorPrice=0;
  //Get a reference to the form id="cakeform"
  var theForm = document.forms["cakeform"];
  //Get a reference to the select id="filling"
   var selectedFlavor = theForm.elements["flavor"];
   
  //set cakeFilling Price equal to value user chose
  //For example filling_prices["Lemon".value] would be equal to 5
  cakeFlavorPrice = flavor_prices[selectedFlavor.value];

  //finally we return cakeFillingPrice
  return cakeFlavorPrice;
}





        
function calculateTotal()
{
    //Here we get the total price by calling our function
    //Each function returns a number so by calling them we add the values they return together
    var cakePrice = getCakeSizePrice() + getFrostingprice()
    + getFillingPrice()  + getFlavorPrice();
    
    //display the result
    var divobj = document.getElementById('totalPrice');
    divobj.style.display='block';
    divobj.innerHTML = "Total Price For the Cake $"+cakePrice;

}

//function hideTotal()
//{
//    var divobj = document.getElementById('totalPrice');
//    divobj.style.display='none';
//}