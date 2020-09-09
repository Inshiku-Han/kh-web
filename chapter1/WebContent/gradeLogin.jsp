<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
	table{
		border: 1px;
		border-collapse: collapse;
	}
</style>
<title>Insert title here</title>
</head>
<body>
	<form action="gradeInput.jsp" method="post">
		<table>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>학과</td>
				<td><input type="text" name="major"></td>
			</tr>
		</table>
		<input type="submit" value="확인">
	</form>
</body>
</html>