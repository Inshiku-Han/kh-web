<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 화면</title>
<style type="text/css">
table{
	margin: auto;
	border: 1px solid highlight;
	border-collapse: collapse;
}
tr, td{
	margin: auto;
	border: 1px solid highlight;
}
a {
	
	text-decoration: none;
	color: highlight;

}
.center{
	margin: auto;
	text-align: center;
}
</style>
</head>
<body>
<form action="login.ac" method="post" name="loginForm">
<div style="height: 50px"></div>
<div class="center">
<table>
	<tr>
		<td>아이디</td>
		<td><input type="text" name="id"></td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><input type="password" name="password"></td>
	</tr>
</table>
</div>
</form>
<div style="height: 50px"></div>
<div class="center">
<a href="#" onclick="loginForm.submit();">로그인</a>&nbsp;&nbsp;&nbsp;
<a href="signForm.ac">회원가입</a>
</div>
</body>
</html>