<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>register</title>
</head>
<body>
<h1>Registered Successfully.</h1>
	<%--JSP Expression Language --%>
	<ul>
		<li> Id: ${customer.id} </li>
		<li> password: ${customer.password} </li>
		<li> Name: ${customer.name} </li>
		<li> gender: ${customer.gender} </li>
		<li> Email: ${customer.email} </li>
	</ul>
	
	<p> <a href="/hw-helloMVC/index.jsp">go to home</a></p>
</body>
</html>