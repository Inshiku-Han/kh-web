<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>학생 등록 양식</h3>
<form action="regStudent.st" method="post">
	이름 <input type="text" name="name"><br>
	성별 <input type="radio" name="gender" value="남">남
	<input type="radio" name="gender" value="여">여<br>
	연락처 <input type="text" name="tel"><br>
	<input type="submit" value="등록">
</form>
</body>
</html>