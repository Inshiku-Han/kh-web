<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
/* ul {
	background: goldenrod;
	padding: 10px 10px 10px 50px;
	list-style-position: inside;
	list-style-type: 
	list-style-image: url("media/spongebob.png");
}
ul li {
	background: greenyellow;
	margin-bottom: 5px;
} */
#menubar{
	background: olive;
}

#menubar ul{
		margin: 0px;
		padding: 0px;
		width: 567px;
}

#menubar ul li{
	display: inline-block;
	list-style-type: none;
	padding: 0px 15px;
}

#menubar ul li a{
	text-decoration: none;
	color: white;
}

#menubar ul li a:hover{
	color: violet;
}
</style>
</head>
<body>
<h3>커피 메뉴</h3>
<hr>
<nav id="menubar">
<ul>
	<li><a href="#">홈</a></li>
	<li><a href="#">에스프레소</a></li>
	<li><a href="#">카푸치노</a></li>
	<li><a href="#">카페라떼</a></li>
	<li><a href="#">F.A.Q</a></li>
</ul>
</nav>
</body>
</html>