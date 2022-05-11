<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TestYourSelf</title>
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
<headr>
    <ul>
  <li><a a class="drop" href="Home.jsp">HOME</a></li>
  <li><a a class="drop" href="TestYourSelf.jsp">TEST</a></li>
  <li><a a class="drop" href="StatusCheek.jsp">STATUS CHEEK</a></li>
</ul>
</header>
<f:view>
<h:form>
<div style="padding: 30px;font-size: 25px; margin-right: 00px; margin-left: 230px; border: 2px solid black;width: 40%; background-color:yellow;" >
<h:outputText value="ENTER YOUR USERID"></h:outputText>
<h:inputText id="username" value="#{coronaBean.username}" required="true" requiredMessage=" mandatory"></h:inputText>
<br/><br/>
<h:outputText value="HAVE YOU ANY BREEDING PROBLEM?"></h:outputText>
<h:selectOneRadio value="#{coronaBean.breading}" required="true" requiredMessage=" mandatory">
	<f:selectItem itemValue="YES" itemLabel="YES" />
	<f:selectItem itemValue="NO" itemLabel="NO" />
	</h:selectOneRadio>
<br/><br/>
	<h:outputText value="HAVE YOU ANY CHEST PAIN?"></h:outputText>
<h:selectOneRadio value="#{coronaBean.chestpain}" required="true" requiredMessage=" mandatory">
	<f:selectItem itemValue="YES" itemLabel="YES" />
	<f:selectItem itemValue="NO" itemLabel="NO" />
	</h:selectOneRadio>
	<br/><br/>
	<h:outputText value="HAVE YOU ANY FEAVOUR?"></h:outputText>
<h:selectOneRadio value="#{coronaBean.feabour}" required="true" requiredMessage=" mandatory">
	<f:selectItem itemValue="YES" itemLabel="YES" />
	<f:selectItem itemValue="NO" itemLabel="NO" />
	</h:selectOneRadio>
	<br/><br/>
	<h:outputText value="HAVE YOU ANY COUGH PROBLEM?"></h:outputText>
<h:selectOneRadio value="#{coronaBean.cough}" required="true" requiredMessage=" mandatory">
	<f:selectItem itemValue="YES" itemLabel="YES" />
	<f:selectItem itemValue="NO" itemLabel="NO" />
	</h:selectOneRadio>
	<br/><br/>	
	<h:outputText value="HAVE YOU ANY HEART DEASEAS"></h:outputText>
<h:selectOneRadio value="#{coronaBean.heart}" required="true" requiredMessage=" mandatory">
	<f:selectItem itemValue="YES" itemLabel="YES" />
	<f:selectItem itemValue="NO" itemLabel="NO" />
	</h:selectOneRadio>
<br/><br/>
<h:outputText value="HAVE YOU ANY HYTERTENTION PROBLEM?"></h:outputText>
<h:selectOneRadio value="#{coronaBean.hypertention}" required="true" requiredMessage=" mandatory">
	<f:selectItem itemValue="YES" itemLabel="YES" />
	<f:selectItem itemValue="NO" itemLabel="NO" />
	</h:selectOneRadio>
<br/><br/>
<h:outputText value="HAVE YOU ANY DIABETIS PROBLEM?"></h:outputText>
<h:selectOneRadio value="#{coronaBean.diabetis}" required="true" requiredMessage=" mandatory">
	<f:selectItem itemValue="YES" itemLabel="YES" />
	<f:selectItem itemValue="NO" itemLabel="NO" />
	</h:selectOneRadio>
<br/><br/>
<h:outputText value="HAVE YOU ANY FOREIGN TOUR IN LAST 30 DAYS) "></h:outputText>
<h:selectOneRadio value="#{coronaBean.tour}" required="true" requiredMessage=" mandatory">
	<f:selectItem itemValue="YES" itemLabel="YES" />
	<f:selectItem itemValue="NO" itemLabel="NO" />
	</h:selectOneRadio>
<br/><br/>
<h:commandButton value="Submit" action="#{coronaBean.CreatStatus}" ></h:commandButton>

</h:form>
</div>
</f:view>
</body>
</body>
</html>