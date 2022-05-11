<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
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
<body style="background-image:url('resources/Image/white2.jpg'); background-size: 115% ;background-position: center ;">
<header>
    <ul>
   <li><a a class="drop" href="Home.jsp">HOME</a></li>
</ul>
</header>
<f:view>
 <h:form>
<div style="padding: 30px;font-size: 25px; margin-right: 00px; margin-left: 230px;margin-top:50px; border: 2px solid black;width: 40%; background-color:yellow;" >
<table>
<tr>
<td><h:outputText value="PLACE NAME"></h:outputText></td>
<td><h:inputText id="location" value="#{coronaBean.location}"></h:inputText></td>
</tr>
</table>
<br/><br/>
<h:commandButton value="Submit" action="#{coronaBean.CheckPlace}" ></h:commandButton>
</div>

</h:form>
</f:view>
</body>
</html>