<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/common.css"/>

</head>
<body>
<div id="mainContainer">
	<div id="tableDiv" align="center">
		<table>
			<colgroup>
				<col width="15%">
				<col width="30%">
				<col width="15%">
				<col width="15%">
				<col width="25%">
			<tr height="40px;">
				<th>상품명</th>
				<th>이미지</th>
				<th>수량</th>
				<th>총금액</th>
				<th>구매일</th>
			</tr>
			<c:forEach items="${list }" var="buy">
				<tr>
					<td align="center">${buy.itemName }</td>
					<td align="center"><img alt="" src="upload/${buy.itemImage }" height="100px"></td>
					<td align="center">${buy.buyCnt }</td>
					<td align="center">${buy.buyPrice }</td>
					<td align="center">${buy.buyDate }</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</div>
</body>
</html>