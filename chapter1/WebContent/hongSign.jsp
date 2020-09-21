<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="hongLogin.jsp" method="post">
		<table>
			<tr>
				<td>이름 : </td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>아이디 : </td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td>비밀번호 : </td>
				<td><input type="password" name="pw"></td>
			</tr>
			<tr>
				<td>연락처 : </td>
				<td><input type="text" name="tell"></td>
			</tr>
			<tr>
				<td>주소 : </td>
				<td><input type="text" name="addr"></td>
			</tr>
		</table>
		<input type="submit" value="가입"> 
	</form>
</body>
</html>