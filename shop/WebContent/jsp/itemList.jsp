<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>itemList</title>
<link rel="stylesheet" type="text/css" href="css/common.css"/>
<link rel="stylesheet" type="text/css" href="css/itemList.css?ver=1"/>
</head>
<body>
<div id="mainContainer">
	<div style="height: 50px;"></div>
	<c:choose>
		<c:when test="${empty sessionScope.loginInfo }">
			<div id="menuDiv" align="center">
				<pre><a href="loginForm.me">login</a>&nbsp;&nbsp;&nbsp;<a href="joinForm.me">join</a></pre>
			</div>
		</c:when>
		<c:otherwise>
			${sessionScope.loginInfo.name }님 환영합니다
			<c:if test="${sessionScope.loginInfo.id eq 'admin' }">
				<pre><a href="regItemForm.it">상품등록</a></pre>
			</c:if>
			<pre><a href="logout.me">logout</a><br><br><a href="cartList.ca">장바구니</a><br><br><a href="selectBuyList.bu">구매목록</a></pre>
		</c:otherwise>
	</c:choose>
	<div style="height: 20px;"></div>
	<div id="mainDiv" align="center">
		<table border="1">
		
			<tr>
				<c:forEach items="${list }" var="list" varStatus="status">
					<c:if test="${status.index % 4 eq 0 }">
						</tr>
						<tr>
					</c:if>
					<td style="padding: 20px;">
						<table>
							<tr>
								<td><a href="itemDetail.it?itemCode=${list.itemCode }"><img alt="" width="300px" height="400px" src="upload/${list.itemImage }"></a></td>
							</tr>
							<tr>
								<td>상품명 : ${list.itemName }</td>
							</tr>
							<tr>
								<td>가격 : ${list.itemPrice }</td>
							</tr>
						</table>
					</td>
				</c:forEach>
			</tr>

		</table>
	</div>
</div>
</body>
</html>