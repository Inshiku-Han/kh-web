<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
span {
	/* visibility: hidden; */
	display: none;
}
p {
	width: 15em;
	height: 3em;
	border: 1px solid lightgray;
}
.hidden{
	overflow: hidden;
}
.visible{
	overflow: visible;
}
.scroll{
	overflow: scroll;
}
</style>
</head>
<body>
<h3>다음 빈 곳에 숨은 단어는?</h3>
<hr>
<ul>
	<li>I (<span>love</span>) you.</li>
	<li>CSS is Cascading (<span>Style</span>) Sheet.</li>
	<li>응답하라 (<span>1988</span>)</li>
</ul>
<p class="hidden">overFlow에 hidden 값을 적용하면 박스를 넘어가는 내용이 잘려 보이지 않습니다.</p>
<p class="visible">overFlow에 visible 값을 적용하면 콘텐츠가 박스를 넘어가서도 출력됩니다.</p>
<p class="scroll">overFlow에 scroll 값을 적용하면 박스에 스크롤바를 붙여 출력합니다.</p>
</body>
</html>