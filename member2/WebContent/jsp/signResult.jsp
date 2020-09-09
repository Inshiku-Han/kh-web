<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 결과</title>
<c:choose>
	<c:when test="${result eq 1 }">
			<script type="text/javascript">
				alert('등록 성공');
				location.href='loginForm.ac';
			</script>
	</c:when>
		<c:otherwise>
				<script type="text/javascript">
				alert('등록 실패');
				location.href='signform.ac';
			</script>
		</c:otherwise>
</c:choose>
</head>
<body>

</body>
</html>