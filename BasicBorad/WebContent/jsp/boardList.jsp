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
		border : 1px solid black;
		border-collapse: collapse;
		text-align: center;
		width: 50%;
		height: 150px;
	}
	tr, td {
		border : 1px solid black;
		padding: 5px; /* 여백 */
		
	}
	.size{
		width: 15%;
	}
	.color{
		background-color: gray;
		font-weight: bold;
	}
	.center{
		text-align: center;
		
	}
</style>
</head>
<body>
<div style="height: 30px;"></div>
<h3 class="center" style="font-size: 30px;">게시판 리스트 화면</h3>
<hr><br>
<div align="center">
<table>
	<tr class="color">
		<td>제목</td><!-- colgroup태그로 열 조절 가능 -->
		<td class="size">작성자</td>
	</tr>
	<c:forEach items="${list }" var="board"> <!-- for each문과 유사 -->
		<tr>
			<td>${board.title }</td>
			<td>${board.writer }</td>
		</tr>
	</c:forEach>
</table>
</div>
<h4 class="center"><a href="regBoardForm.bo">글등록</a></h4>
${list.size() }
</body>
</html>