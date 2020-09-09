<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.list{
	border: 1px solid black;
	border-collapse: collapse;
	width: 1000px;
	height: 800px;
	text-align: center;
}
.list  tr {
	border: 1px solid black;/* #50A684 */
}
.list td {
	border: 1px solid black;
}
.attr{
	background-color: #50A684;
	color: white;
}
</style>
</head>
<body>
<div style="height: 50px;"></div>
<form action="updateBoard.bo" method="post"  enctype="multipart/form-data">
<div align="center">
	<table class="list">
		<colgroup>
			<col width="20%">
			<col width="80%">
		</colgroup>
		<tr>
		<td class="attr">제목</td>
			<td><input type="text" name="bTitle" value="${board.bTitle }" style="width: 85%; height: 15px;"></td>
		</tr>
		<tr>
			<td class="attr">작성자</td>
			<td><input type="text" name="bWriter" value="${board.bWriter }"  style="width: 85%; height: 15px;"></td>
		</tr>
		<tr style="height: 80%;">
			<td class="attr">내용</td>
			<td><textarea rows="40%" cols="97%" name="bContent">${board.bContent }</textarea></td>
		</tr>
		<tr>
			<td class="title">첨부파일</td>
			<td><input type="file"  name="bFile"></td>
		</tr>
		<tr align="center">
			<td colspan="2"><input type="submit" value="등록"></td>
		</tr>
	</table>
</div>
<input type="hidden" name="bNum" value="${board.bNum }">
</form>
<div style="height: 50px;"></div>
</body>
</html>