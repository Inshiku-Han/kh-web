<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>프로그램 시작</h3>
	<form action="first.do" method="post">
	이름 <input type="text" name="name"><br>
	나이 <input type="number" name="age"> 
 	<input type="submit" value="확인">
 	</form>
	<br>
	<h3><a href="regStudentForm.st">학생 정보 등록</a></h3>
	<br>
	<h3><a href="regBusinessManForm.bs">사원 정보 등록</a></h3>
</body>
</html>