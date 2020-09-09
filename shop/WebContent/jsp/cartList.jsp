<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/common.css"/>
<link rel="stylesheet" type="text/css" href="css/cartList.css?Ver=3"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="js/cartList.js?Ver=5"></script>
</head>
<body>
<div id="mainContainer">
	<div id="tableDiv" align="center">
		<table>
			<colgroup>
				<col width="5%">
				<col width="15%">
				<col width="25%">
				<col width="10%">
				<col width="20%">
				<col width="10%">
				<col width="10%">
			<tr height="40px;">
				<th><input type="checkbox" id="allCheck" checked="checked"></th>
				<th>상품이미지</th>
				<th>상품명</th>
				<th>가격</th>
				<th>수량</th>
				<th>총 가격</th>
				<th></th>
			</tr>
			<c:forEach items="${list }" var="cart">
				<tr>
					<td align="center"><input class="chk" type="checkbox" checked="checked" value="${cart.cartNum }"></td>
					<td align="center"><img alt="" height="100px" src="upload/${cart.itemImage }"></td>
					<td>${cart.itemName }</td>
					<td align="center"><fmt:formatNumber value="${cart.itemPrice }" pattern="#,###" /></td>
					<td align="center">
						<input type="number" value="${cart.itemCnt }" min="1" max="100">
						<br>
						<input type="button" value="수량변경" class="updateCart" data-cartNum='${cart.cartNum }'>
					</td>
					<td align="center"><fmt:formatNumber value="${cart.totalPrice }" pattern="#,###" /></td>
					<td align="center">
						<form action="deleteCart.ca" method="post">
							<input type="hidden" name="cartNum" value="${cart.cartNum }">
							<input type="submit" value="삭제" >
						</form>
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<div style="height: 30px;"></div>
	<div align="center">
		<input type="button" value="선택구매" id="buyBtn">&nbsp;&nbsp;&nbsp;
		<input type="button" value="선택삭제" id="deleteBtn">
	</div>
</div>
</body>
</html>