<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table{
	margin: auto;
	border: 1px solid highlight;
	border-collapse: collapse;
}
tr, td{
	margin: auto;
	border: 1px solid highlight;
}
a {
	
	text-decoration: none;
	color: highlight;

}
.center{
	margin: auto;
	text-align: center;
}
</style>
</head>
<body>
<div style="height: 50px"></div>
<div>
<table>
	<c:forEach items="${list }" var="list">
	<tr>
		<td><a href="accountInfo.ac?id=${list.id }">${list.id }</a></td>
	</tr>
	</c:forEach>
</table>
</div>
<div style="height: 50px"></div>
<div class="center">
<a href="javascript:history.back();">뒤로가기</a>
</div>
</body>
</html>