<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
div {
	position: absolute;
}

img{
	position: absolute;
}

#spadeA{
	left: 10px;
	top: 20px;
	z-index: 4
}
#spade2{
	left: 40px;
	top: 30px;
	z-index: 3
}
#spade3{
	left: 80px;
	top: 40px;
	z-index: 2
}
#spade7{
	left: 120px;
	top: 50px;
	z-index: 1
}
</style>
</head>
<body>
<h3>z-index</h3>
<hr>
<div>
	<img id="spadeA" alt="" src="media/spade-A.png" width="200px;" height="280px;">
	<img id="spade2" alt="" src="media/spade-2.png" width="200px;" height="280px;">
	<img id="spade3" alt="" src="media/spade-3.png" width="200px;" height="280px;">
	<img id="spade7" alt="" src="media/spade-7.png" width="200px;" height="280px;">
</div>
</body>
</html>