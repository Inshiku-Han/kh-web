<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>joinPage</title>
<link rel="stylesheet" type="text/css" href="css/common.css"/>
<link rel="stylesheet" type="text/css" href="css/joinForm.css"/>
</head>
<body>
<div id="mainContainer">
	<div align="center">
		<form action="join.me" method="post">
			<table>
				<tr>
					<td class="title">ID</td>
					<td><input type="text" name="id" required></td>
				</tr>
				<tr>
					<td class="title">PASSWORD</td>
					<td><input type="password" name="password" required></td>
				</tr>
				<tr>
					<td class="title">NAME</td>
					<td><input type="text" name="name" required></td>
				</tr>
				<tr>
					<td class="title">ADDRESS</td>
					<td><input type="text" name="addr" required></td>
				</tr>
				<tr>
					<td class="title">TELL</td>
					<td><input type="text" name="tell" required></td>
				</tr>
				<tr>
					<td class="title">EMAIL</td>
					<td><input type="email" name="email" required></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit" value="회원가입"></td>
				</tr>
			</table>
		</form>
	</div>
</div>
</body>
</html>