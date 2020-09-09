<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
ul, li {
	list-style-type: none;
	margin: 0px;
	padding: 0px;
}
ul.myMenu > li{
	display: inline-block;
	width: 70px;
	padding: 5px 10px;
	background: #eeeeee;
	text-align: center;
	position: relative;
	
}


ul.myMenu > li ul.subMenu{
	display: none;
	position: absolute;
	top: 30px;
	left: 0px;
	/* visibility: hidden; */
}
.subMenu > li{
	width: 70px;
	padding: 5px 10px;
	background: #eeeeee;
	border: 1px solid yellow;
	text-align: center;
	
}
ul.myMenu > li:hover{
	background: olive;
	
}
.subMenu > li:hover{
	background: olive;
}
ul.myMenu > li:hover ul.subMenu{
	display: block;
}


</style>
</head>
<body>
<nav id="container">
	<ul class="myMenu">
		<li>메뉴1</li>
		<li>
			메뉴2
			<ul class="subMenu">
				<li>메뉴2-1</li>
				<li>메뉴2-2</li>
				<li>메뉴2-3</li>
			</ul>
		</li>
		<li>
			메뉴3
			<ul class="subMenu">
				<li>메뉴3-1</li>
				<li>메뉴3-2</li>
				<li>메뉴3-3</li>
			</ul>
		</li>
		<li>메뉴4</li>
		<li>메뉴5</li>
	</ul>
</nav>
</body>
</html>