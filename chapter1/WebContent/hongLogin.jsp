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
String id = request.getParameter("id");
String pw = request.getParameter("pw");
String tell = request.getParameter("tell");
String addr = request.getParameter("addr");
%>
<title>Insert title here</title>
</head>
<body>
	<form action="hongResult" method="post">
		<table>
		<tr>
			<td>아이디 : </td>
			<td><input type="text" name="id"></td>
		</tr>
		<tr>
			<td>비밀번호 : </td>
			<td><input type="password" name="pw"></td>
		</tr>
		</table>
		<input type="submit" value="로그인">
	</form>
</body>
</html>