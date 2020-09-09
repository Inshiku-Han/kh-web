<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function back(){
	location.href = 'boardList.bo';
}
function del(){
	location.href= 'boardDelete.bo?bNum=${board.bNum }';
	
}
</script>
<style type="text/css">
.list{
	border: 1px solid black;
	border-collapse: collapse;
	width: 1000px;
	height: 700px;
	text-align: center;
	font-size: large;
	
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
	font-weight: bold;
	font-size: x-large;
}
a{
 text-decoration: none;
 color: black;
}
</style>
</head>
<body>
<form action="updateBoardForm.bo" method="post">
<div style="height: 50px;"></div>
<div align="center">
	<table class="list">
		<colgroup>
			<col width="20%">
			<col width="80%">
		</colgroup>
		<tr>
		<td class="attr">제목</td>
			<td>${board.bTitle }</td>
		</tr>
		<tr>
			<td class="attr">작성자</td>
			<td>${board.bWriter }</td>
		</tr>
		<tr style="height: 80%;">
			<td class="attr">내용</td>
			<td><pre>${board.bContent }</pre></td>
		</tr>
		<c:if test="${not empty board.bFile }">
			<tr>
				<td class="attr">첨부파일</td>
				<td colspan="3" style="font-size: larger"><img width="300px;" src="upload/${board.bFile }"></td>
			</tr>
		</c:if>
	</table>
</div>
<div style="height: 30px;"></div>
<div align="center"><input type="button" value="뒤로가기" onclick="back();">&nbsp;&nbsp;&nbsp;
<input type="button" value="삭제" onclick="del();">&nbsp;&nbsp;&nbsp;
<input type="submit" value="수정">
</div>
<input type="hidden" name="bTitle" value="${board.bTitle }">
<input type="hidden" name="bWriter" value="${board.bWriter }">
<input type="hidden" name="bContent" value="${board.bContent }">
<input type="hidden" name="bNum" value="${board.bNum }">
</form>
</body>
</html>