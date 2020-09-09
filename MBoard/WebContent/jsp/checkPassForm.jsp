<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
</script>
</head>
<body>
<form action="checkPass.bo" method="post">
<input type="hidden" name="boardPass" value="${boardPass }">
<input type="hidden" name="boardNum" value="${boardNum }">
게시글 비밀번호 <input type="password" name="inputPass"><input type="submit" value="확인">
</form>

</body>
</html>