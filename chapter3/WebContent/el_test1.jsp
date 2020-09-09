<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	session.setAttribute("number", "1234");
%>
</head>
<body>
<form action="el_test2.jsp" method="post">
	이름 <input type="text" name="name"><br>
	나이 <input type="number" name="age"><br>
	<input type="submit" value="확인">	
</form>
<a href="el_test3.jsp?tell=01011112222&addr=ulsan">페이지 이동</a>
</body>
</html>