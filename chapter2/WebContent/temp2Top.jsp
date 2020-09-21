<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	if (session.getAttribute("loginId") == null) { // 페이지가 전환될 때마다 session정보 체크
		if (request.getParameter("id") != null) { //session 비었으면 부여
			String id = request.getParameter("id");
			session.setAttribute("loginId", id);
		}
	} // 페이지 변해도 session 유지
	String loginId = (String) session.getAttribute("loginId");
%>
</head>
<body>
	<%
		if (loginId != null) {
	%>
	<%=loginId%>님 환영합니다.
	<input type="button" value="logout"
		onclick="location.href='temp2Del.jsp'">
	<%
		} else {
	%>
	<h1>
		<a href="template2.jsp?page=temp2Login.jsp">login</a>
	</h1>
	<%
		}
	%>
</body>
</html>