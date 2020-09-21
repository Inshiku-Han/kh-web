<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>exam01</title>
<style type="text/css">
	/* 태그 이름 */
	h3, li {
		color: brown;
	}
	
	/* 자식 셀렉터 */
	div > div > strong {
		background: yellow;
	}
	
	/* 자손 셀렉터 */
	ul strong{
		color: dodgerblue;
	}
	
	/* 클래스 셀렉터 */
	.warning{
		color: red;
	}
	
	body.main{ /* body .main과는 다르다. */
		background: teal;
	}
	
	/* ID 셀렉터 */
	#list{
		background: mistyrose;
	}
	
	#list span{
		color: forestgreen;
	}
	
	/* 가상 클래스 셀렉터 */
	h3:first-letter{
		color: red;
	}
	
	li:hover{
		background: yellowgreen;
	}
</style>
</head>
<body class="main">
<h3>Web Programming</h3>
<hr>
<div>
	<div style="font-size: 1.3em;">2학기 <strong>학습 내용</strong>입니다. </div>
	<ul id="list">
		<li><strong>HTML5</strong></li>
		<li><strong>css</strong></li>
		<li>JAVASCRIPT</li>
	</ul>
	<div class="warning">60점 이하는 F</div>
</div>
</body>
</html>