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
<form action="join.me" method="post" name="join">
<div style="height: 30px">
<div align="center">
	<table>
		<colgroup>
			<col width="20%">
			<col width="80%">
		</colgroup>
		<tr>
			<td class="title">아이디</td>
			<td><input type="text" name="id" required="required"></td>
		</tr>
		<tr>
			<td class="title">비밀번호</td>
			<td><input type="password" name="password" required></td>
		</tr>
		<tr>
			<td class="title">이름</td>
			<td><input type="text" name="name" required></td>
		</tr>
		<tr>
			<td class="title">나이</td>
			<td><input type="number" name="age" required></td>
		</tr>
		<tr>
			<td class="title">이메일</td>
			<td><input type="email" name="email" required></td>
		</tr>
	</table>
	<div style="height: 10px"></div>
</div>
<div align="center">
<a href="#" onclick="join.submit();">회원가입</a>
</div>
</div>
</form>
<script src="resources/js/clock.js?ver=3"></script>
</body>
</html>