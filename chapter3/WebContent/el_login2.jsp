<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>${param.name }님 안녕</h3>
<c:if test="${param.name eq 'admin' }">
	<h3><a href="el_login3.jsp?age=${param.age }">관리자 페이지</a></h3>
</c:if>
<input type="submit" value="뒤로가기" onclick="location.href = 'el_login1.jsp';">
<input type="submit" value="뒤로가기" onclick="history.back();"> <!-- JS메소드 뒤로가기 -->
</body>
</html>