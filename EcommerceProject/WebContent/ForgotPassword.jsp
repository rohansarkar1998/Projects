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
<body>
<f:view>
<h:form>
user Id:
<h:inputText id = "email" value="#{customerBean.email}"></h:inputText>
<br>
<br>
New password
<h:inputText id = "pass" value="#{customerBean.password}" ></h:inputText>
<br>
<br>
Reenter password
<h:inputText id = "repass" value="#{customerBean.password1}"></h:inputText>
<br>
<br>
<h:commandButton value = "submit" action="#{customerBean.changePasseord }"></h:commandButton>
</h:form>
</f:view>
</body>
</html>