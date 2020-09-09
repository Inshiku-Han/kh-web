<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="style.css?ver=2" />
</head>
<body>
<div>
<canvas id="js-paint" width="700" height="700"></canvas>
</div>
<input type="range" id="js-line" min="0.1" max="5.0" step="any" value="2.5"/>
	<div class="controls">
		<button id="js-fill">Fill</button>
		<button id="js-draw">Draw</button>
		<button id="js-save">Save</button>
	</div>
	<div class="colors">
		<div class="color" style="background:rgb(0, 0, 0);"></div>
		<div class="color" style="background:rgb(255,255,255);"></div>
		<div class="color" style="background:rgb(255,59,48);"></div>
		<div class="color" style="background:rgb(255,149,0)"></div>
		<div class="color" style="background:rgb(255,204,0);"></div>
		<div class="color" style="background:rgb(76,217,100);"></div>
		<div class="color" style="background:rgb(90,200,250);"></div>
		<div class="color" style="background:rgb(0,122,255);"></div>
		<div class="color" style="background:rgb(88,86,214);"></div>
	</div>
<script src="app.js?ver=1"></script>
<script src="test.js?ver=1"></script>
</body>
</html>