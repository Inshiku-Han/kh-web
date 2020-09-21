<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%	
response.setContentType("text/html;charset=UTF-8");
request.setCharacterEncoding("UTF-8");
	String grade = request.getParameter("grade");
	String addr1 = request.getParameter("addr1");
	String addr2 = request.getParameter("addr2");
	String gender = request.getParameter("gender");
	session.setAttribute("getGrade",grade);
	session.setAttribute("getAddr1", addr1);
	session.setAttribute("getAddr2", addr2);
	session.setAttribute("getGender", gender);
	String getName = (String)session.getAttribute("getName");
%>
<title>Insert title here</title>
</head>
<body>
<form action="studentResult.jsp" method="post">
<table>
	<tr>
		<td><h2>학생 성적 입력 프로그램</h2></td>
	</tr>
	<tr>
		<td><%=getName %> 학생의 성적을 입력합니다.</td>
	</tr>
	<tr>
		<td>국어<input type="text" name="korScore"></td>
	</tr>
	<tr>
		<td>영어<input type="text" name="engScore"></td>
	</tr>
	<tr>
		<td>수학<input type="text" name="mathScore"></td>
	</tr>
	<tr align="center">
		<td><input type="submit" value="확인"></td>
	</tr>
</table>
</form>
</body>
</html>