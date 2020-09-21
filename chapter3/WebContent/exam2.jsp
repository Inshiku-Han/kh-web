<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	String lang = request.getParameter("lang");
	Cookie cookie = new Cookie("lang",lang); //korea english
	cookie.setMaxAge(60*60*24);
	response.addCookie(cookie);
%>
</head>
<body>
	<a href="exam01.jsp">페이지 이동</a>
</body>
</html>