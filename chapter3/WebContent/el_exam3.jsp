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
<table border="1">
	<c:forEach begin="1" end="${param.num }" var="num">
		<tr>
			<td>${num }</td>
		</tr>
	</c:forEach>
</table>
<br><br>
<table border="1">
		<tr>
	<c:forEach begin="1" end="${param.num }" var="num">
			<td>${num }</td>
	</c:forEach>
		</tr>
</table>

</body>
</html>