<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%
	response.setContentType("text/html;charset=UTF-8");
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String major = request.getParameter("major");
%>
<style type="text/css">
	table{
		border: 1px;
		border-collapse: collapse;
	}
</style>
<title>Insert title here</title>
</head>
<body>
	<form action="gradeResult.jsp" method="post">
		<table>
			<tr>
				<td>국어</td>
				<td><input type="text" name="korScore"></td>
			</tr>
			<tr>
				<td>영어</td>
				<td><input type="text" name="engScore"></td>
			</tr>
			<tr>
				<td>수학</td>
				<td><input type="text" name="mathScore"></td>
			</tr>
		</table>
		<input type="submit" value="확인">
		<input type="hidden" name="name" value="<%=name%>">
		<input type="hidden" name="major" value="<%=major%>">
	</form>
</body>
</html>