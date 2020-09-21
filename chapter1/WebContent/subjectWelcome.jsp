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
<form action="subjectResult.jsp" method="post">
<h3><%=name %>님 환영합니다.</h3>
<table>
	<tr>
		<td>과목선택</td>
		<td><input type="checkbox" name="subject" value="자바">자바<input type="checkbox" name="subject" value="수학">수학<input type="checkbox" name="subject" value="국어">국어</td>
	</tr>
</table>
<input type="submit" value="수강등록">
<input type="hidden" name="dearName" value="<%=name %>">
</form>
</body>
</html>