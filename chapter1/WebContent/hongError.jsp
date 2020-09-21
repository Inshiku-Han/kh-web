<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%
response.setContentType("text/html;charset=UTF-8");
request.setCharacterEncoding("UTF-8");
%>
<title>Insert title here</title>
</head>
<body>
입력하신 정보의 회원이 없습니다.<br>
	<form action="hongLogin.jsp">
		<input type="submit" value="로그인하러가기">
	</form>
	<form action="hongSign.jsp">
		<input type="submit" value="회원가입하러가기">
	</form>
</body>
</html>