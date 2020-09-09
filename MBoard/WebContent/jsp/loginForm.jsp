<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table {
		border: 1px solid black;
		border-collapse: collapse;
	}
	
	tr, td{
		border: 1px solid black;
	}
	
	.title{
		border: 1px solid black;
		text-align: center;		
		background-color: #eeeeee;
	}
	
	a{
		text-decoration: none;
		color: silver;
	}
</style>
</head>
<body>
<form action="login.me" method="post" name="loginForm">
<div style="height: 30px">
<div align="center">
	<table>
		<colgroup>
			<col width="20%">
			<col width="80%">
		</colgroup>
		<tr>
			<td class="title">I D</td>
			<td><input type="text" name="id" required="required"></td>
		</tr>
		<tr>
			<td class="title">P W</td>
			<td><input type="password" name="password" required></td>
		</tr>
	</table>
	<div style="height: 10px"></div>
</div>
<div align="center">
<a href="#" onclick="loginForm.submit();">로그인</a>&nbsp;&nbsp;&nbsp;<a href="joinForm.me">회원가입</a>
</div>
</div>
</form>
</body>
</html>