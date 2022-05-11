<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
         <%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:h="http://java.sun.com/jsf/html"
      xmlns:pt="http://xmlns.jcp.org/jsf/passthrough">
<!DOCTYPE html>
<html>
<head>
    <title>Sign_In</title>
    <link rel="stylesheet" href = "style.css">
     <link rel="stylesheet" href="bootstrap/bootstrap.css">  
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> 
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <title>Login</title>
        <link rel="shortcut icon" href="pic/hello_XwN_icon.ico">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            body {background-color: blanchedalmond}
            #tb1 {
                background-color: blanchedalmond;



            }
            #lab2{

                margin-left: 500px;
                color: #080808;
                margin-top: 30px;

            }
            #fr {
                font-size: 30px;
                margin-left: 250px;
                margin-top: 100px;

            }
            #name,#contact,#email,#address,#pay
            {
                font-size: 25px;

            }
            #but{
                margin-left: 100px;
            }
            #agree{
                margin-left: 150px;
            }

            #nav {
                background-color: #c9302c;
            }
            #a1  {
                color: blanchedalmond;
                margin-top: 20px;

            }
            #search{
                margin-left: 45px;
                margin-top: 30px;
                width: 395px;

            }

        </style>
     <!--  <script src="js/validation.js" type="text/javascript"></script>
     -->
    </head>
    
</head>


<body>
<!-- hEADER -->

<nav class="nav navbar" id="nav">
            <div class="container">
                <div class="navbar-header">
                    <label><img src="pic/hello.jpg" class="img-circle" style="height:50px; width: 50px; margin-bottom: 10px;"></label>
                    <label class="active"><h2 style="color: blanchedalmond;">RK Electronics</h2></label>
                    <label id="search">
                        <div class="input-group input-group-unstyled">
                            <input type="text" class="form-control" placeholder="Search Here">
                            <span class="input-group-addon">
                                <i class="glyphicon glyphicon-search"></i>
                            </span>
                        </div>
                    </label>
                </div>
                <ul class="nav navbar-nav navbar-right">

                    <li><a href="index.jsp" id="a1"><span class="glyphicon glyphicon-home"> Home</span></a></li>
                    
                    <li><a href="about us 2.html" id="a1"><span class="glyphicon glyphicon-bell"> About Us</span></a></li>
                    <li><a href="form 2.html" id="a1"><span class="glyphicon glyphicon-user"> Login/Sign-Up</span></a></li>
                </ul>
            </div>
        </nav>




<f:view>
<div class="container" id="container">
	<div class="form-container sign-up-container">
		<h:form>
			<h1>Create Account</h1>
			<div class="social-container">
				<a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
				<a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
				<a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
			</div>
			<span>or use your email for registration</span>
			Name: <h:inputText  id = "name"  value="#{customerBean.name }"></h:inputText>
			E Mail: <h:inputText  id = "email"  value="#{customerBean.email }"></h:inputText>
			PASSWORD: <h:inputText  id = "password"  value="#{customerBean.password }"></h:inputText>
			PHONE NUMBER<h:inputText id = "number" value = "#{customerBean.phonenumber }"></h:inputText>
			<h:commandButton style="background-color: #4CAF50;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;" value="sign up" action="#{customerBean.creatProfile}" ></h:commandButton>
		</h:form>
	</div>
	<div class="form-container sign-in-container">
		<h:form>
			<h1>Sign in</h1>
			<div class="social-container">
				<a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
				<a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
				<a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
			</div>
			<span>or use your account</span>
			E Mail: <h:inputText  id = "email"  value="#{customerBean.email }"></h:inputText>
			PASSWORD: <h:inputText  id = "password"  value="#{customerBean.password }"></h:inputText>
			Type: <h:selectOneMenu value="#{customerBean.type}" required="true" requiredMessage=" mandatory">
			<f:selectItem itemValue="user" itemLabel="user" />
			<f:selectItem itemValue="admin" itemLabel="admin" />
			
		</h:selectOneMenu>
			<a href="ForgotPassword.jsp">Forgot your password?</a>
			<h:commandButton style="background-color: #4CAF50;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;" value="sign in" action="#{customerBean.login}" ></h:commandButton>
		</h:form>
	</div>
	<div class="overlay-container">
		<div class="overlay">
			<div class="overlay-panel overlay-left">
				<h1>Welcome Back!</h1>
				<p>To keep connected with us please login with your personal info</p>
				<button class="ghost" id="signIn">Sign In</button>
			</div>
			<div class="overlay-panel overlay-right">
				<h1>Create an Account!</h1>
				<p>Enter your personal details and start journey with us</p>
				<button class="ghost" id="signUp">Sign Up</button>
			</div>
		</div>
	</div>
</div>

</f:view>
<script>
const signUpButton = document.getElementById('signUp');
const signInButton = document.getElementById('signIn');
const container = document.getElementById('container');

signUpButton.addEventListener('click', () => {
	container.classList.add("right-panel-active");
});

signInButton.addEventListener('click', () => {
	container.classList.remove("right-panel-active");
});
</script>
</body>

</html>