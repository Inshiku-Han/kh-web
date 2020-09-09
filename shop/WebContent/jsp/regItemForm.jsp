<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/common.css"/>
<link rel="stylesheet" type="text/css" href="css/regItemForm.css"/>
</head>
<body>
<div id="mainContainer">
	<form action="regItem.it" method="post" enctype="multipart/form-data">
		<div style="height: 50px;"></div>
		<div align="center">
			<table>
				<colgroup>
					<col width="20%">
					<col width="80%">
				</colgroup>
				<tr>
					<td class="title">상품명</td>
					<td><input type="text" name="itemName" class="input" required></td>
				</tr>
				<tr>
					<td class="title">가격</td>
					<td><input type="number" name="itemPrice" class="input" required></td>
				</tr>
				<tr>
					<td class="title">상세정보</td>
					<td><textarea rows="15px" name="itemInfo" class="input"></textarea></td>
				</tr>
				<tr>
					<td class="title">첨부파일</td>
					<td><input type="file" name="itemImage"></td>
				</tr>
			</table>
		</div>
		<div style="height: 50px;"></div>
		<div align="center">
			<input type="submit" value="등록">
		</div>
	</form>
</div>
</body>
</html>