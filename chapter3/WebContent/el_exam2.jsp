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
<c:choose>
	<%--  c안에서 주석은 %로 쓴다. --%>
	<c:when test="${param.num < 50 }">
	<h3>(choose)50보다 작습니다.</h3>
	</c:when>
	<c:when test="${param.num > 50 }">
	<h3>(choose)50보다 큽니다.</h3>
	</c:when>
	<c:otherwise>
		<h3>(choose)50과 같습니다.</h3>
	</c:otherwise>
</c:choose>
<br><br>
<c:if test="${param.num < 50 }"> <%-- param은 넘어온거에 쓴다. --%>
(if)50보다 작습니다.
</c:if>
<c:if test="${param.num > 50 }">
(if)50보다 큽니다.
</c:if>
<c:if test="${param.num eq 50 }">
(if)50과 같습니다.
</c:if>
<br><br>
<c:forEach begin="1" end="${param.num }" var="num">
	<c:if test="${num%3 eq 0 }">
		${num }<br>
	</c:if>
</c:forEach>
<br><br>
<c:if test="${param.num >= 30  and param.num <= 50}">
		A
</c:if>
<c:if test="${param.num < 30  or param.num > 50}">
	 	B
</c:if>
<br><br>
<c:if test="${param.name eq 'java' }">
	java가 맞다.
</c:if>
</body>
</html>