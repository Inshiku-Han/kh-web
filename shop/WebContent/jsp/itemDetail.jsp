<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/common.css"/>
<link rel="stylesheet" type="text/css" href="css/itemDetail.css?ver=2"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="js/itemDetail.js?Ver=2"></script>
</head>
<body>
<form action="insertCart.ca" method="post" id="cartForm">
<input id="itemCode" type="hidden" name="itemCode" value="${item.itemCode }">
<input id="originalPrice" type="hidden" value="${item.itemPrice }">
<div id="mainContainer">
	<div style="height: 50px"></div>
	<div id="detailDiv" align="center">
		<table>
			<tr>
				<td rowspan="5"><img alt="" width="300px" height="400px" src="upload/${item.itemImage }"></td>
				<td style="padding: 50px">
				
					<table style="height: 400px" class="font">
					
						<tr>
							<td>상품명 : ${item.itemName }</td>
						</tr>
						<tr>
							<td>남은 개수 : ${item.itemAmount }</td>
						</tr>
						<tr>
							<td>수량 
							<input id="itemCnt" name="itemCnt" type="number" name="itemAmount" max="${item.itemAmount }" min="1" value="1">
							</td>
						</tr>
						<tr>
							<td id="PriceTd"><%-- 분양가 : <fmt:formatNumber value="${item.itemPrice }" pattern="#,###" /> --%>${item.itemPrice }</td>
						</tr>
						<tr>
							<td colspan="2">
							<input type="button" value="장바구니담기" onclick="addCart('${sessionScope.loginInfo.id }');">
							<input type="button" value="바로 분양하기" id="insertBuy">
							
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</div>
	<div style="height: 50px"></div>
	<div id="infoDiv" align="center">
		<p>${item.itemInfo }</p>
	</div>
</div>
</form>
</body>
</html>