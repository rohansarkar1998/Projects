<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Success</title>
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
</ul>
</header>
<f:view>
<h:form>
 <h:dataTable border="0" cellpadding="0" cellspacing="15"  value="#{coronaBean.l1}" var="c">
				<h:column id="column1">
					<f:facet name="header">
						<h:outputText value="Name"></h:outputText>
					</f:facet>
						<h:outputText value="#{c.name}"></h:outputText>
				</h:column>
				<h:column id="column2">
					<f:facet name="header">
						<h:outputText value="Age"></h:outputText>
					</f:facet>
						<h:outputText value="#{c.age}"></h:outputText>
				</h:column>
				<h:column id="column3">
					<f:facet name="header">
						<h:outputText value="Location"></h:outputText>
					</f:facet>
						<h:outputText value="#{c.location}"></h:outputText>
				</h:column>
			
			<h:column id="column4">
					<f:facet name="header">
						<h:outputText value="Phone number"></h:outputText>
					</f:facet>
						<h:outputText value="#{c.phonenum}"></h:outputText>
				</h:column>
				
			<h:column id="column5">
					<f:facet name="header">
						<h:outputText value="Status"></h:outputText>
					</f:facet>
						<h:outputText value="#{c.status}"></h:outputText>

				</h:column>
	
	</h:dataTable>
		
 
</h:form>
</f:view>

</body>
</html>