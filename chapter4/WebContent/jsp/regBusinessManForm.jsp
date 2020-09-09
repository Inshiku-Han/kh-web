<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="showBusinessMan.bs" method="post">
	사원명<input type="text" name="name"><br>
	나이<input type="number" name="age"><br>
	직급<select name="level">
		<option value="사원">사원</option>
		<option value="대리">대리</option>
		<option value="과장">과장</option>
		<option value="부장">부장</option>
		</select><br>
	연차<input type="number" name="year"><br>
	관리자 <input type="checkbox" name="admin" value="1"> <!-- val지정없으면 on -->
	<input type="submit" value="등록">
</form>
</body>
</html>