<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%
	Calendar cal = Calendar.getInstance();
	int hour = cal.get(Calendar.HOUR);
	int minute = cal.get(Calendar.MINUTE);
	int second = cal.get(Calendar.SECOND);
%>



<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>현재 시간은 <%=hour %>시 <%=minute %>분 <%=second %>초 입니다.</h3>
</body>
</html>