<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1 align="center">회원 목록</h1>
<c:forEach items="${list }" var="member">
	<table style="margin: auto;">
		<tr>
			<td><a href="memberInfo.me?id=${member.id }" style="text-decoration: none;">${member.id }</a></td>
		</tr>
		
	</table>
</c:forEach>
<br><br><br>
<h3 align="center"><a href="loginForm.me"  style="text-decoration: none;">로그인화면으로 돌아가기</a></h3>
</body>
</html>