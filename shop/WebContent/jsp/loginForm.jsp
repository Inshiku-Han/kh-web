<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginPage</title>
<link rel="stylesheet" type="text/css" href="css/common.css"/>
<link rel="stylesheet" type="text/css" href="css/loginForm.css"/>
</head>
<body>
<div id="mainContainer">
	<div align="center">
		<form action="login.me" method="post">
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
					<td colspan="2" align="center"><input type="submit" value="로그인"></td>
				</tr>
			</table>
		</form>
	</div>
</div>
</body>
</html>