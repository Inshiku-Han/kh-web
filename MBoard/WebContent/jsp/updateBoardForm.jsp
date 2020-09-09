<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

.sub {
	height: 50px;
}

#main {
	height: 300px;
}
</style>
</head>
<body>
	<form action="updateBoard.bo" method="post">
		<div style="height: 50px;"></div>
		<div align="center">
			<table>
				<colgroup>
					<col width="10%">
					<col width="40%">
					<col width="10%">
					<col width="40%">
				</colgroup>
				<tr class="sub">
					<td class="title">제목</td>
					<td><input type="text" name="boardTitle"
						value="${board.boardTitle }" required="required"
						style="width: 60%;"></td>
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
					<td colspan="3"><textarea rows="20px" cols="100px"
							name="boardContent" required>${board.boardContent }</textarea></td>
					<!-- pre태그로 띄어쓰기 줄바꿈 살림 -->
				</tr>
			</table>
		</div>
		<div align="center">
			<table>
				<tr>
					<td><input type="submit" value="수정"></td>
				</tr>
			</table>
		</div>
		<div>
			<input type="hidden" name="boardNum" value="${board.boardNum }">
		</div>
	</form>
</body>
</html>