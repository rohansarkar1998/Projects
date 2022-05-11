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
<header>
    <ul>
   <li><a a class="drop" href="Home.jsp">HOME</a></li>
</ul>
</header>
<body style="background-image:url('resources/Image/white2.jpg'); background-size: 115% ;background-position: center ;">
<f:view>
 <h:form>
<div style="padding: 30px;font-size: 25px; margin-right: 00px; margin-left: 230px;margin-top:50px; border: 2px solid black;width: 40%; background-color:yellow;" >
<h:outputText value="USER ID"></h:outputText>
<h:inputText id="uyh" value="#{coronaBean.username}"></h:inputText>
<br/><br/>
<h:commandButton value="Submit" action="#{coronaBean.Checkperson}" ></h:commandButton>
</div>



<div style="padding: 30px;font-size: 25px; margin-right: 00px; margin-left: 230px;margin-top:50px; border: 2px solid black;width: 40%; background-color:yellow;" >
<h:outputText value="HAVE YOU ANY BREEDING PROBLEM?"></h:outputText>
<h:selectOneRadio value="#{coronaBean.breading}">
	<f:selectItem itemValue="YES" itemLabel="YES" />
	<f:selectItem itemValue="NO" itemLabel="NO" />
	</h:selectOneRadio>
<br/><br/>
	<h:outputText value="HAVE YOU ANY CHEST PAIN?"></h:outputText>
<h:selectOneRadio value="#{coronaBean.chestpain}">
	<f:selectItem itemValue="YES" itemLabel="YES" />
	<f:selectItem itemValue="NO" itemLabel="NO" />
	</h:selectOneRadio>
	<br/><br/>
	<h:outputText value="HAVE YOU ANY FEAVOUR?"></h:outputText>
<h:selectOneRadio value="#{coronaBean.feabour}">
	<f:selectItem itemValue="YES" itemLabel="YES" />
	<f:selectItem itemValue="NO" itemLabel="NO" />
	</h:selectOneRadio>
	<br/><br/>
	<h:outputText value="HAVE YOU ANY COUGH PROBLEM?"></h:outputText>
<h:selectOneRadio value="#{coronaBean.cough}">
	<f:selectItem itemValue="YES" itemLabel="YES" />
	<f:selectItem itemValue="NO" itemLabel="NO" />
	</h:selectOneRadio>
	<br/><br/>	
	<h:outputText value="HAVE YOU ANY HEART DEASEAS"></h:outputText>
<h:selectOneRadio value="#{coronaBean.heart}">
	<f:selectItem itemValue="YES" itemLabel="YES" />
	<f:selectItem itemValue="NO" itemLabel="NO" />
	</h:selectOneRadio>
<br/><br/>
<h:outputText value="HAVE YOU ANY HYTERTENTION PROBLEM?"></h:outputText>
<h:selectOneRadio value="#{coronaBean.hypertention}">
	<f:selectItem itemValue="YES" itemLabel="YES" />
	<f:selectItem itemValue="NO" itemLabel="NO" />
	</h:selectOneRadio>
<br/><br/>
<h:outputText value="HAVE YOU ANY DIABETIS PROBLEM?"></h:outputText>
<h:selectOneRadio value="#{coronaBean.diabetis}">
	<f:selectItem itemValue="YES" itemLabel="YES" />
	<f:selectItem itemValue="NO" itemLabel="NO" />
	</h:selectOneRadio>
<br/><br/>
<h:outputText value="HAVE YOU ANY FOREIGN TOUR IN LAST 30 DAYS) "></h:outputText>
<h:selectOneRadio value="#{coronaBean.tour}">
	<f:selectItem itemValue="YES" itemLabel="YES" />
	<f:selectItem itemValue="NO" itemLabel="NO" />
	</h:selectOneRadio>
<br/><br/>
<h:commandButton value="Submit" action="#{coronaBean.CheekRandumPerson}" ></h:commandButton>
</div>
</h:form>
</f:view>
</body>
</body>

</html>