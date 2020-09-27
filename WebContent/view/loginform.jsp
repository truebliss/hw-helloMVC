<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login</title>
<style>
#o1 {
	text-align: center;
	padding: 20px;
	width: 300px;
	border-width: 20px;
	border-color: orange;
	border-style: inset;
}
td {
	padding:0.5em;
}
</style>
</head>
<body>

<h1>Login Form</h1>
<article id="o1">
	<form action="/hw-helloMVC/doLogin" method="post">
		<table>
		<tbody>
		<tr><td>아이디</td><td> <input type="text" name="custormerId"> </td></tr>
		<tr><td>비밀번호</td><td> <input type="password" name="password"> </td></tr>
		<tr><td></td><td><input type="submit" name="Press" value="Login"></td></tr>
		</tbody>
		</table>
	</form>
</article>
</body>
</html>