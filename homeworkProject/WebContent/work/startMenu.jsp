<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>startPage</title>
<link rel="stylesheet" type="text/css" href="startMenu.css?ver=1"/>
</head>
<body>
<div id="mainContainer">
	<div class="js-clock" align="right">
		<h4 class="js-title"></h4>
	</div>
	<form action="login.jsp" method="post">
		<div style="height: 20px;"></div>
		<div id="grettingDiv" align="center">
			<h1>환영합니다!</h1>
		</div>
		<div style="height: 30px;"></div>
		<div id="loginDiv" align="center">
			<table>
				<tr>
					<td>사번</td>
					<td><input type="text" placeholder="사번을 입력해주세요"  id="empId"></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" placeholder="비밀번호를 입력해주세요"   id="empPass"></td>
				</tr>
			</table>
		</div>
		<div style="height: 50px;"></div>
		<div id="menuDiv" align="center">
			<input type="button" value="로그인" id="goToList">&nbsp;&nbsp;&nbsp;
			<input type="button" value="회원가입" onclick="location.href='join.jsp';">
		</div>
	</form>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="clock.js?ver=2"></script>
<script src="startMenu.js?ver=3"></script>
</body>
</html>