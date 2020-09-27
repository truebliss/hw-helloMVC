<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>register</title>
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
<h1>Registaration Form</h1>
<article id="o1">
	<form action="/hw-helloMVC/doRegister" method="post">
		<table>
		<thead><tr><th colspan="2">Enter Information Here</th></tr></thead>
		<tbody>
		<tr><td>아이디</td><td> <input type="text" name="custormerId"> </td></tr>
		<tr><td>비밀번호</td><td> <input type="password" name="password"> </td></tr>
		<tr><td>이름</td><td>  <input type="text" name="name">  </td></tr>
		<tr><td>성별</td><td>  <label><input type="radio" name="gender" value="female">female</label>
		<label><input type="radio" name="gender" value="male">male</label>  </td></tr>
		<tr><td>이메일</td><td>  <input type="text" name="email">  </td></tr>
		<tr><td></td><td><input type="submit" name="Press" value="가입"></td></tr>
		</tbody>
		</table>
	</form>
</article>
</body>
</html>