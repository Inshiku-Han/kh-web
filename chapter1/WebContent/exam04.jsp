<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%
	response.setContentType("text/html;charset=UTF-8");
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String age = request.getParameter("age");
%>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>exam04.jsp 파일입니다.</h3>
	이름은
	<%=name%>이고, 나이는
	<%=age%>세입니다.
</body>
</html>