<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- <h3>${name }</h3> <!-- request.setAttribute("name", name); -->
	<h3>${gender }</h3>
	<h3>${tel }</h3> --%>
<h3>${stu.name }</h3> <!-- stu.getName()이 출력됨 -->
<h3>${stu.gender }</h3>
<h3>${stu.tel }</h3>


</body>
</html>