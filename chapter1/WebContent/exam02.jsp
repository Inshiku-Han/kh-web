<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%
	//자바 언어 들어옴
	int a = 10;
	String b = "hello";
%>
<meta charset="UTF-8">
<title>jsjsp</title>
</head>
<body>
<%@ include file="header.jsp" %> <!-- 해당 파일 내용 소환 -->
<%=a %><br>
<%if(a > 10){%>
	10보다 큽니다
<%} else{%>
10보다 작습니다.
<%} %>
<%@ include file="footer.jsp" %>
</body>
</html>