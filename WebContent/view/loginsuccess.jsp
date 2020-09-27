<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login</title>
</head>
<body>

	<%--JSP Expression Language --%>
	<h1>Hello. ${customer.name} logged in successfully.</h1>
	<p> <a href="/hw-helloMVC/index.jsp">go to home</a></p>
</body>
</html>