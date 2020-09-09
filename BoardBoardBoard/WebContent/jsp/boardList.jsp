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
<style type="text/css">
.list{
	border: 1px solid black;
	border-collapse: collapse;
	width: 1000px;
	height: 90px;
	text-align: center;
}
.list  tr {
	border: 1px solid black;/* #50A684 */
}
.list td {
	border: 1px solid black;
}
.attr{
	background-image: url("https://www.imgonline.com.ua/examples/two-tone-blurred-background-5-big.jpg");
	color: white;
	font-weight: bold;
	font-size: large;
}
a{
 text-decoration: none;
}
</style>
</head>
<body>
<div style="height: 50px;"></div>
<div align="center">
	<table class="list">
		<colgroup>
			<col width="10%">
			<col width="60%">
			<col width="10%">
			<col width="10%">
			<col width="10%">
		</colgroup>
		<tr class="attr">
			<td>글번호</td>
			<td>제목</td>
			<td>작성자</td>
			<td>작성일</td>
		</tr>
		<c:forEach items="${list }" var="list">
		<tr>
			<td>${list.bNum }</td>
			<td><a href="boardDetail.bo?bNum=${list.bNum }">${list.bTitle }</a></td>
			<td>${list.bWriter }</td>
			<td>${list.bDate }</td>
		</tr>
		</c:forEach>
	</table>
</div>
<div style="height: 50px;"></div>
<div align="center">
<input type="button" value="등록" onclick="location.href='boardWriteForm.bo'">
</div>
</body>
</html>