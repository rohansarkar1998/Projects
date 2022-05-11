<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ShowPatient</title>

</head>
<body>
<f:view>
<h:form>

        <br><br>

 <h:dataTable border="0" cellpadding="0" cellspacing="15"  value="#{customerBean.m}" var="p">
				
				<h:column id="column1">
					<f:facet name="header">
						<h:outputText value="Email"></h:outputText>
					</f:facet>
						<h:outputText value="#{p.email}"></h:outputText>
				</h:column>
				<h:column id="column2">
					<f:facet name="header">
						<h:outputText value="Name"></h:outputText>
					</f:facet>
						<h:outputText value="#{p.name}"></h:outputText>
				</h:column>
				
	
	</h:dataTable>
		
 
</h:form>
</f:view>
</body>
</html>