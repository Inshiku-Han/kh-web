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
</style>
</head>
<body>
<form action="joinMember.me" method="post">
<div style="height: 30px"></div>
<div align="center">
	<table>
		<colgroup>
			<col width="20%">
			<col width="80%">
		</colgroup>
		<tr>
			<td class="title">I D</td>
			<td><input type="text" name="id" required></td>
		</tr>
		<tr>
			<td class="title">P W</td>
			<td><input type="password" name="password" required></td>
		</tr>
		<tr>
			<td class="title">이름</td>
			<td><input type="text" name="name"></td>
		</tr>
		<tr>
			<td class="title">나이</td>
			<td><input type="number" name="age"></td>
		</tr>
		<tr>
			<td class="title">Email</td>
			<td><input type="email" name="email"></td>
		</tr>
	</table>
	<div style="height: 10px"></div>
</div>
<div align="center">
<input type="submit" value="회원가입">
</div>
</form>
<div style="height: 50px;"></div>
<div>
<h3 align="center"><a href="loginForm.me" style="text-decoration: none;">로그인화면으로 돌아가기</a></h3>
</div>
</body>
</html>