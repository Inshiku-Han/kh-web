<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

div {
	display: inline-block;
	height: 50px;
	border: 1px solid lightgray;
	text-align: center;
	color: white;
	background: red;
}

#down:hover{
	position: relative;
	left: 20px;
	top: 20px;
	background: green;
}

#up:hover{
	position: relative;
	right: 20px;
	bottom: 20px;
	background: blue;
}
</style>
</head>
<body>
<h3>상대배치, relative</h3>
<hr>
<div>T</div>
<div id="down">h</div>
<div>a</div>
<div>n</div>
<div id="up">k</div>
<div>s</div>
</body>
</html>