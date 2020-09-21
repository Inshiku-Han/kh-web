<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table {
	border: 1px solid black;
	border-collapse: collapse;
	width: 1000px;
	height: 40px;
}

tr, td {
	border: 1px solid black;
	text-align: center;
}

.title {
	background-color: #FF8A3D;
	color: #FFFFFF;
	font-weight: bold;
}

a {
	text-decoration: none;
	color: black;
}
</style>
</head>
<body>
	<div style="height: 50px;"></div>
	<div align="center">
	<c:if test="${empty sessionScope.login }">
		<a href="loginForm.me">login</a>&nbsp;&nbsp;&nbsp;<a href="joinForm.me">join</a>
	</c:if>
	<c:if test="${not empty sessionScope.login }">
		${sessionScope.login }님 환영합니다&nbsp;&nbsp;&nbsp;<a href="logout.me">log out</a>
	</c:if>
	</div>
	<div style="height: 50px;"></div>
	<div align="center">
		<table>
			<colgroup>
				<col width="10%">
				<col width="50%">
				<col width="15%">
				<col width="15%">
				<col width="10%">
			</colgroup>
			<tr>
				<td class="title">번호</td>
				<td class="title">제목</td>
				<td class="title">조회수</td>
				<td class="title">작성자</td>
				<td class="title">작성일</td>
			</tr>
			<c:choose>
				<c:when test="${empty list }">
					<%-- 데이터가 없다는 표현. list.size() eq == 0 과 같다.--%>
					<%-- 데이터가 하나라도 있으면 not empty list --%>
					<tr>
						<td colspan="5">데이터가 없습니다.</td>
					</tr>
				</c:when>
				<c:otherwise>
					<c:forEach items="${list }" var="board">
						<tr>
							<td>${board.rowNum }</td>
							<td>
							<c:choose>
								<c:when test="${empty board.boardPass }">
									<a href="selectBoard.bo?boardNum=${board.boardNum }">
										<c:if test="${not empty board.boardPass }">
											[비밀글]
										</c:if>
										${board.boardTitle }
									</a>
								</c:when>
								<c:otherwise>
									<a href="checkPassForm.bo?boardPass=${board.boardPass }&boardNum=${board.boardNum}">
										<c:if test="${not empty board.boardPass }">
											[비밀글]
										</c:if>
										${board.boardTitle }
									</a>
								</c:otherwise>
							</c:choose>
						</td>
							<td>${board.readCnt }</td>
							<td>${board.boardWriter }</td>
							<td>${board.boardDate }</td>
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</table>
	</div>
	<div style="height: 30px;"></div>
	<div align="center">
		<c:forEach begin="1" end="${pageCnt }" var="page">
			<a href="boardList.bo?pageIndex=${page }">${page }</a>&nbsp;&nbsp;
		</c:forEach>
	</div>
	<div style="height: 50px;"></div>
	<div align="center">
		<c:choose>
			<c:when test="${not empty sessionScope.login }">
				<a href="boardWriteForm.bo">글쓰기</a>
			</c:when>
		</c:choose>
	</div>
</body>
</html>