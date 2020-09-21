<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table{
		border: 1px solid black;
		border-collapse: collapse;
		width: 220px;
		height: 300px;
	}
	tr, td{
		border: 1px solid black;
		text-align: center;
	}
	.Attribute{
		background-color: #eeeeee;
		font-weight: bold;
	}
</style>
</head>
<body>
<form action="regStudent.bo" method="post">
<div  align="center">
	<table>
		<tr>
			<td class="Attribute">이름</td>
			<td><input type="text" name="name"></td>
		</tr>
		<tr>
			<td class="Attribute">나이</td>
			<td><input type="text" name="age"></td>
		</tr>
		<tr>
			<td class="Attribute">국어</td>
			<td><input type="text" name="kor"></td>
		</tr>
		<tr>
			<td class="Attribute">영어</td>
			<td><input type="text" name="eng"></td>
		</tr>
		<tr>
			<td class="Attribute">수학</td>
			<td><input type="text" name="math"></td>
		</tr>
		<tr>
			<td colspan="2" align="center"><input type="submit" value="등록"></td>
		</tr>
	</table>
</div>
</form>
</body>
</html>