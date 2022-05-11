<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
         <%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"  href="assets/css/checkout.css">

</head>
<body>
<f:view>
<h:form>
<h2>Checkout</h2>
<div class="row">
  <div class="col-75">
    <div class="container">
        <div class="row">
          <div class="col-50">
            <h3>Billing Address</h3>
            <label for="fname"><i class="fa fa-user"></i> Full Name</label>
           <h:inputText  id = "name"  value="#{customerBean.name }"></h:inputText>
            <label for="email"><i class="fa fa-envelope"></i> Email</label>
             <h:inputText id = "email" value="#{customerBean.email }"></h:inputText>
            <label for="adr"><i class="fa fa-address-card-o"></i> Address</label>
             <h:inputText id = "add" value="#{customerBean.address}"></h:inputText>
            <label for="city"><i class="fa fa-institution"></i> City</label>
             <h:inputText id = "fname" value="#{customerBean.city }"></h:inputText>

            <div class="row">
              <div class="col-50">
                <label for="state">State</label>
                <input type="text" id="state" name="state" placeholder="NY">
              </div>
              <div class="col-50">
                <label for="zip">Zip</label>
                <input type="text" id="zip" name="zip" placeholder="10001">
              </div>
            </div>
          </div>

          <div class="col-50">
            <h3>Payment</h3>
            <label for="fname">Accepted Cards</label>
            <div class="icon-container">
              <i class="fa fa-cc-visa" style="color:navy;"></i>
              <i class="fa fa-cc-amex" style="color:blue;"></i>
              <i class="fa fa-cc-mastercard" style="color:red;"></i>
              <i class="fa fa-cc-discover" style="color:orange;"></i>
            </div>
            <label for="cname">Name on Card</label>
            <input type="text" id="cname" name="cardname" placeholder="John More Doe">
            <label for="ccnum">Credit card number</label>
            <input type="text" id="ccnum" name="cardnumber" placeholder="1111-2222-3333-4444">
            <label for="expmonth">Exp Month</label>
            <input type="text" id="expmonth" name="expmonth" placeholder="September">
            <div class="row">
              <div class="col-50">
                <label for="expyear">Exp Year</label>
                <input type="text" id="expyear" name="expyear" placeholder="2018">
              </div>
              <div class="col-50">
                <label for="cvv">CVV</label>
                <input type="text" id="cvv" name="cvv" placeholder="352">
              </div>
            </div>
          </div>
          
        </div>
        <label>
          <input type="checkbox" checked="checked" name="sameadr"> Shipping address same as billing
        </label>
        <h:commandButton style="background-color: #4CAF50;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;" value="continue checkout" action="#{customerBean.transaction}" ></h:commandButton>

  </div>
  </div>
  <div class="col-25">
    <div class="container">
       <h4>From Cart <span class="price" style="color:black"></span></h4>
      
      
      <p>Total <span class="price" style="color:black" ><b id = "pri-val">0</b></span></p>
    </div>
  </div>
</div>
<script src="assets/javascript/app2.js"></script> 
<script >
  
  var spn = document.getElementById("pri-val")
  spn.innerHTML = localStorage.getItem('cartv')
  
  
</script>

</h:form>
</f:view>
</body>
</html>
