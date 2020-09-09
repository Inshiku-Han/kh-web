<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/reset.css" />
<!-- 부트스트랩 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부트스트랩 CSS 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- Jquery를 사용을 위한 태그 -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- 부트스트랩 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="../js/template.js?ver=1"></script>
<%
	String select = request.getParameter("pageChange");

	if (select == null) {
		select = "main.jsp";
	}
%>
</head>
<body>
	<div class="container-fluid">
		<div class="row" id="menuDiv">
			<jsp:include page="menu.jsp" flush="false" />
		</div>
		<div class="row" id="mainDiv">
			<jsp:include page="<%=select%>" flush="false" />
		</div>
	</div>
</body>
</html>