<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%
	response.setContentType("text/html;charset=UTF-8");
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("dearName");
	String[] subject = request.getParameterValues("subject");
%>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3><%=name %>님</h3>
<%for(String e : subject) {%>
<%=e %>
<%} %>
과목 선택했습니다.
</body>
</html>