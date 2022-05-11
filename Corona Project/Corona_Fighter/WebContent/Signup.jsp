<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Signup</title>
<style>

        ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: blue;
}

li {
  float: right;
	}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 30px;
  text-decoration: none;
  font-size: 20px;
}

li a:hover {
  background-color: #111111;
}


 </style>
</head>
<body style="background-image:url('resources/Image/white2.jpg'); background-size: 115% ;background-position: center ;">
<header>
    <ul>
  <li><a a class="drop" href="Home.jsp">Home</a></li>
  <li><a href="#news">CHEEK PLACE</a></li>
  <li><a href="#contact">CHEEK PERSON</a></li>
  <li><a href="#about">ABOUT</a></li>
</ul>
</header>
<f:view>
<h:form>
<div style="padding: 30px;font-size: 25px; margin-right: 00px; margin-left: 230px; margin-top 50px; border: 2px solid black;width: 40%;height: 60% ;background-color:yellow;" >
<table>
<tr>
<td><h:outputText value="USERID"></h:outputText></td>
<td><h:inputText id="username" value="#{coronaBean.username}" required="true" requiredMessage="username is mandatory"></h:inputText></td>
</tr>
<tr>
<td><h:outputText value="PASSWORD"></h:outputText></td>
<td><h:inputText id="password" value="#{coronaBean.password}" required="true" requiredMessage="password is mandatory"></h:inputText></td>
</tr>
<tr>
<td><h:outputText value="NAME"></h:outputText></td>
<td><h:inputText id="name" value="#{coronaBean.name}" required="true" requiredMessage="name is mandatory"></h:inputText></td>
</tr>
<tr>
<td><h:outputText value="AGE"></h:outputText></td>
<td><h:inputText id="age" value="#{coronaBean.age}" required="true" requiredMessage="age is mandatory"></h:inputText></td>
</tr>
<tr>
<td><h:outputText value="PHONE NUMBER"></h:outputText></td>
<td><h:inputText id="phonenum" value="#{coronaBean.phonenum}" required="true" requiredMessage="phone number is mandatory"></h:inputText></td>
</tr>
<tr>
<td><h:outputText value="LOCATION"></h:outputText></td>
<td><h:inputText id="location" value="#{coronaBean.location}" required="true" requiredMessage="Version is mandatory"></h:inputText></td>
</tr>

</table>
<h:commandButton value="Submit" action="#{coronaBean.CreatProfile}" ></h:commandButton>
</div>
</h:form>
</f:view>
</body>

</body>

</html>