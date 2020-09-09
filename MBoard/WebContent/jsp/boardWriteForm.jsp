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
	width: 800px;
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

.input {
	width: 600px;
}
</style>
</head>
<body>
	<form action="boardWrite.bo" method="post" enctype="multipart/form-data">
		<div style="height: 50px;"></div>
		<div align="center">
			<table>
				<colgroup>
					<col width="20%">
					<col width="80%">
				</colgroup>
				<tr>
					<td class="title">제목</td>
					<td><input type="text" name="boardTitle" class="input"
						required></td>
				</tr>
				<tr>
					<td class="title">작성자</td>
					<td><input type="text" name="boardWriter" class="input"
						required value="${sessionScope.login }" readonly="readonly"></td> <!-- readonly 읽기 전용 -->
				</tr>
				<tr>
					<td class="title">내용</td>
					<td><textarea rows="15px" name="boardContent" class="input"
							required></textarea></td>
				</tr>
				<tr>
					<td class="title">비밀번호</td>
					<td><input type="password" name="boardPass"></td>
				</tr>
				<tr>
					<td class="title">첨부파일</td>
					<td><input type="file" name="boardFile"></td>
				</tr>
			</table>
		</div>
		<div style="height: 50px;"></div>
		<div align="center">
			<input type="submit" value="등록">
		</div>
	</form>
</body>
</html>