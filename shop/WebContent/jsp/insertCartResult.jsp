<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:choose>
	<c:when test="${result eq 1 }">
		<script type="text/javascript">
			alert('장바구니에 등록되었습니다.');
			location.href = 'itemList.it';
		</script>
	</c:when>
	<c:otherwise>
		<script type="text/javascript">
			alert('실패');
			history.back();
		</script>
	</c:otherwise>
</c:choose>
</head>
<body>

</body>
</html>