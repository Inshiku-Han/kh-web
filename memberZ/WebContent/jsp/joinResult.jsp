<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:choose>
	<c:when test="${result eq 1}">
		<script type="text/javascript">
			alert('회원 가입 성공');
			location.href = 'loginForm.me';
		</script>
	</c:when>
	<c:otherwise>
		<script type="text/javascript">
			alert('회원 가입 실패');
			location.href = 'joinForm.me';
		</script>
	</c:otherwise>
</c:choose>
</head>
<body>

</body>
</html>