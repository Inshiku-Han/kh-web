<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table {
		margin: auto;
}
</style>
<%
response.setContentType("text/html;charset=UTF-8");
request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	session.setAttribute("getName", name);
	String getName = (String)session.getAttribute("getName");
	
%>
</head>
<body>
<form action="studentScoreInput.jsp" method="post">
<table>
	<tr>
		<td><h2>학생 성적 입력 프로그램</h2></td>
	</tr>
	<tr>
		<td><%=getName %> 학생의 기본정보를 입력합니다.</td>
	</tr>
	<tr>
		<td>학년<input type="text" name="grade"></td>

	</tr>
	<tr>
		<td>연락처<select name="addr1">
			<option >010</option>
			<option>011</option>
			<option>012</option>
		</select><input type="text" name="addr2">
		</td>
	</tr>
	<tr>
		<td>성별
			<input type="radio" name="gender" value="남">남
			<input type="radio" name="gender" value="여">여
		</td>
	</tr>
	<tr>
		<td><input type="submit" value="확인"></td>
	</tr>
</table>
</form>
		<input type="submit" value="뒤로가기" onclick="location.href='StudentDelete.jsp'">
</body>
</html>