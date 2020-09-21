<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.container{
	background: orange;
	width: 500px;
	height: 300px;
}
div > div{
	display: inline-block;
	border: 2px dotted purple;
	background: skyblue;
	width: 100px;
	height: 150px;
	margin: 10px;
}

span {
	background: olive;
	width: 100px;
	height: 100px;
}
</style>
</head>
<body>
<div class="container">
	<div>inline-block DIV</div>
	<div>inline-block DIV</div>
	<div>inline-block DIV</div>
</div>
<span>span 태그 입니다.</span>
</body>
</html>