<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
		<td>이름</td>
		<td>${info.name }</td>
	</tr>
	<tr>
		<td>아이디</td>
		<td>${info.id }</td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td>${info.password }</td>
	</tr>
	<tr>
		<td>나이</td>
		<td>${info.age }</td>
	</tr>
	<tr>
		<td>이메일</td>
		<td>${info.email }</td>
	</tr>
</table>
</div>
</form>
<div style="height: 50px"></div>
<div class="center">
<a href="javascript:history.back();">뒤로가기</a>&nbsp;&nbsp;&nbsp;
<a href="deleteAccount.ac?id=${info.id }">삭제</a>
</div>
</body>
</html>