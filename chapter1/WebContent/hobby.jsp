<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
	table{
		border: 1px;
		border-collapse: collapse;
	}
	
	tr{
		
	}
	td{
	
	}
</style>
<title>취미입력</title>
</head>
<body>
<form action="hobbyResult.jsp" method="post">
<table>
	<tr>
		<td>이름</td>
		<td><input type="text" name="name"></td>
	</tr>
	<tr>
		<td>성별</td>
		<td><input type="radio" name="gender" value="남">남 <input type="radio" name="gender" value="여">여</td>
	</tr>
	<tr>
		<td>취미</td>
		<td><input type="checkbox" name="hobby" value="게임">게임<input type="checkbox" name="hobby" value="운동">운동<input type="checkbox" name="hobby" value="독서">독서</td>
	</tr>
</table>
<input type="submit" value="확인">
</form>
</body>
</html>