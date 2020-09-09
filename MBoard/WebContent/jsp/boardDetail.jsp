<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function deleteBoard() {
		var isDelete = confirm('정말  삭제하시겠습니까?'); /* confirm은 확인누르면 true, 취소누르면 false */
		if (isDelete) {
			location.href = 'deleteBoard.bo?boardNum=${board.boardNum}';
		}
	}
	function updateBoard() {
		location.href = 'updateBoardForm.bo?boardNum=${board.boardNum}';
	}
</script>
<style type="text/css">
	.table1 {
		border: 1px solid black;
		border-collapse: collapse;
		width: 1000px;
		height: 40px;
	}
	.table1 > tr {
		border: 1px solid black;
		text-align: center;
	}
	.table1 td {
		border: 1px solid black;
		text-align: center;
	}
	.table2 {
		width: 1000px;
		border-collapse:collapse;
		border-bottom: 1px solid gray;
	}
	.table2 > tr{
		border-bottom: 1px solid gray;
	}
	.table2 td{
		border-bottom: 1px solid gray;
	}
	.title {
		background-color: #2997FF;
		color: #FFFFFF;
		font-weight: bold;
	}
	a {
		text-decoration: none;
		color: black;
	}
	.sub {
		height: 50px;
	}
	#main {
		height: 300px;
	}
</style>
</head>
<body>
	<div style="height: 50px;"></div>
	<div align="center">
		<table class="table1">
			<colgroup>
				<col width="10%">
				<col width="40%">
				<col width="10%">
				<col width="40%">
			</colgroup>
			<tr class="sub">
				<td class="title">제목</td>
				<td>${board.boardTitle }</td>
				<td class="title">작성일</td>
				<td>${board.boardDate }</td>
			</tr>
			<tr class="sub">
				<td class="title">작성자</td>
				<td>${board.boardWriter }</td>
				<td class="title">조회수</td>
				<td>${board.readCnt }</td>
			</tr>
			<tr id="main">
				<td class="title">내용</td>
				<td colspan="3" style="font-size: larger"><pre>${board.boardContent }</pre></td>
				<!-- pre태그로 띄어쓰기 줄바꿈 살림 -->
			</tr>
			<c:if test="${not empty board.boardFile }">
			<tr id="main">
				<td class="title">첨부파일</td>
				<td colspan="3" style="font-size: larger"><img width="300px;" src="upload/${board.boardFile }"></td>
			</tr>
			</c:if>
		</table>
	</div>
	<div style="height: 30px"></div>
	<c:if test="${not empty sessionScope.login }">
		<div align="center">
			<form action="insertReply.bo" method="post">
				<input type="hidden" name="boardNum" value="${board.boardNum }">
				<table class="table1">
					<colgroup>
						<col width="9.9%">
						<col width="75%">
						<col width="15$">
					</colgroup>
					<tr>
						<td align="center" class="title">댓글</td>
						<td><input type="text" style="width: 97%" name="boardTitle"></td>
						<td><input type="submit" value="댓글달기" style="width: 97%"></td>
					</tr>
				</table>
			</form>
		</div>
	</c:if>
	<div style="height: 15px"></div>
	<div align="center" style="font-size: 12px;">
		<table class="table2">
			<c:forEach items="${replyList }" var="reply">
				<tr>
					<td>
						<span style="font-weight: bold;">
						${reply.boardWriter }
						</span><br>
						<span style="color: gray;">
						${reply.boardDate }
						</span><br>
						<span>
						${reply.boardTitle }
						</span>
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<div style="height: 15px"></div>
	<div align="center">
		<table class="table1">
			<tr>
				<td>
					<input type="button" onclick="location.href='boardList.bo'" value="뒤로가기">
				</td>
				<c:if test="${sessionScope.login eq board.boardWriter or sessionScope.login eq 'admin'}">
					<td><input type="button" onclick="deleteBoard();" value="삭제"></td>
					<td><input type="button" onclick="updateBoard();" value="수정"></td>
				</c:if>
			</tr>
		</table>
	</div>
</body>
</html>