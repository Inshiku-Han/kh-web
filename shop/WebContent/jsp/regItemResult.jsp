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
			var isContinue = confirm('등록 성공! 계속 등록하시겠습니까?');
			if(isContinue){
				location.href='regItemForm.it';				
			}else{
				location.href = 'itemList.it';
			}
		</script>
	</c:when>
	<c:otherwise>
		<script type="text/javascript">
			alert('다시 입력해주세요!');
			location.href = 'regItemForm.it';
		</script>
	</c:otherwise>
</c:choose>
</head>
<body>

</body>
</html>