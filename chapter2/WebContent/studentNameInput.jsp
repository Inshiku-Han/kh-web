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
</head>
<body >
<form action="studentInfoInput.jsp" method="post">
<table>
	<tr>
		<td><h2>학생 성적 입력 프로그램</h2></td>
	</tr>
	<tr>
		<td>이름 <input type="text" name="name" placeholder="학생명 입력">
			<input type="submit" value="확인">
		</td>
	</tr>
</table>
</form>
</body>
</html>