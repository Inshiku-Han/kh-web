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
<c:if test="${5 > 3 }"> <!-- 숫자 넣으려면 el문으로 -->
<h3>5가 3보다 큽니다.</h3>
</c:if><!-- else는 없다 -->
<br>
<c:forEach begin="1" end="10" var="num" varStatus="status" step="2">
	${num } ${status.index } <br>
</c:forEach>
<br>
<select ><!-- select option 반복 -->
	<c:forEach begin="20" end="40" var="age">
		<option>${age }</option>
	</c:forEach>
</select>
<br>
<!-- choose:switch when:case oherwise:dafalut -->
<c:choose>
	<c:when test="${5+10 eq 50 }">
		A
	</c:when>
	<c:when test="${5+10 eq 30 }">
		B
	</c:when>
	<c:otherwise>
		C
	</c:otherwise>
</c:choose>
</body>
</html>