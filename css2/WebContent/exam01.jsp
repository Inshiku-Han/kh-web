<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
@keyframes textColorAnimation{
	0% {color:blue;}
	30% {color:green;}
	100% {color:red;}
}

span{
	animation-name : textColorAnimation;
	animation-duration : 5s;
	animation-iteration-count : infinite;
}

@keyframes bomb{
	from {font-size : 500%;}
	to {font-size : 100%;}
}
h3 {
	animation-name : bomb;
	animation-duration : 3s;
	animation-iteration-count : infinite;
}
</style>
</head>
<body>
<p><span>span</span>텍스트를 5초에 blue, green, red로 무한 반복합니다.</p>
<hr>
<h3>깡!</h3>
<p>꽝! 글자가 3초동안 500%에서 시작하여 100%로 바뀌는 애니메이션입니다. 무한 반복합니다.</p>
<blink>블링크</blink>
</body>
</html>