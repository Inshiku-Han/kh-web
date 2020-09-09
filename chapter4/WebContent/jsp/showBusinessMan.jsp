<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${man.admin eq '1'}">
<a href="manageBusinessMan.bs">관리자 페이지 이동</a>
</c:if>
<table border="1">
	<tr>
		<td>사원명</td>
		<td>${man.name}</td>
	</tr>
	<tr>
		<td>나이</td>
		<td>${man.age }</td>
	</tr>
	<tr>
		<td>직급</td>
		<td>${man.level }</td>
	</tr>
	<tr>
		<td>연차</td>
		<td>${man.year }년</td>
	</tr>
</table>
</body>
</html>