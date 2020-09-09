<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
div{
	background: blue;
}

p{
	display:inline-block;
	position: absolute;
	height: 20px;
	width: 20px;
	background: orange;
}
</style>
</head>
<body>
<h3>절대배치, absolute</h3>
<hr>
<div>
	<p style="left: 50px; top: 30px;">A</p>
	<p style="left: 100px; top: 0px;">B</p>
	<p style="left: 0px; top: 100px;">C</p>
</div>
</body>
</html>