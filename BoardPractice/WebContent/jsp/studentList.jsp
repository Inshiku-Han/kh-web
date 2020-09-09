<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table{
		border: 1px solid black;
		border-collapse: collapse;
		width: 500px;
	}
	tr, td{
		border: 1px solid black;
		text-align: center;
	}
	.Attribute{
		background-color: #eeeeee;
		font-weight: bold;
	}
</style>
</head>
<body>
<div style="height: 30px;"></div>
<div align="center">
<h1>학생 등록</h1>
</div>
<div align="center">
	<table>
		<tr class="Attribute">
			<td>이름</td>
			<td>나이</td>
			<td>국어</td>
			<td>영어</td>
			<td>수학</td>
		</tr>
		<c:forEach items="${list }" var="list">
			<tr>
				<td>${list.name }</td>
				<td>${list.age }</td>
				<td>${list.kor }</td>
				<td>${list.eng }</td>
				<td>${list.math }</td>
			</tr>
		</c:forEach>
	</table>
	<br>
	<input type="submit" value="등록" onclick="location.href='regStudentForm.bo';">
</div>
</body>
</html>