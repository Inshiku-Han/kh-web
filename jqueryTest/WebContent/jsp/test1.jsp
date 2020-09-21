<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	
 	$(document).ready(function(){ // 페이지 로딩 후 실행
	//선택한 노드의 value값 불러오기
	var a = $('#input1').val();
	alert(a);
	
	//선택한 노드의 value값 세팅하기
	$('#input1').val('222');
	
	//선택한 노드의 속성값 불러오기
	var b = $('#input1').attr('name');
	alert('b');
	
	//선택한 노드의 속성값 세팅
	$('#input1').attr('name', 'c');
	
	//id가 btn1인 노드를 클릭했을 때
	$(document).on('click', '#btn1', function() { //클릭하면 실행
		$('#btn1').after('<input type = "button" value = "버튼">');
	})
	
	//table 자식 늘리기
	$(document).on('click', '#btn2', function() {
		$('#table').append('<tr><td>내용1</td><td>내용2</td></tr>');
	})
	})


</script>
</head>
<body>
<input type="text" id="input1" value="111" name="a"><br>
<input type="button" value="버튼" id="btn1"><br>
<input type="button" value="버튼" id="btn2"><br>
<table border="1" id="table">
	<tr>
		<td>내용1</td>
		<td>내용2</td>
	</tr>
</table>
</body>
</html>