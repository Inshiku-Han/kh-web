<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	String number = (String)session.getAttribute("number");
%>
</head>
<body>
<h3>${param.name }</h3>
<h3>${param.age }</h3> <!-- 태그값가져올때는 param.이름-->
<h3><%=number %></h3>
<h3>${number }</h3><!-- el문으로 session값 가져오기 -->
<h3>${sessionScope.number }</h3> <!-- el문으로 session의 키값 가져오기 -->
</body>
</html>