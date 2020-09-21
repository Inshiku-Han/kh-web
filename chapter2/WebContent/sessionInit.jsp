<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	session.invalidate();//session에 있는 데이터 전부 삭제
	session.setMaxInactiveInterval(1000); // 1000초간 세션의 데이터를 유지
	
%>
<script type="text/javascript">
	location.href = 'sessionTest.jsp';
</script>
</head>
<body>

</body>
</html>