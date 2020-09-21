<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table{
		border: 1px solid black;
		border-collapse: collapse;
		width: 500px;
	}
	
	tr, td{
		border: 1px solid black;
			
	}
	
	.title{
		text-align: center;
		font-weight: bold;
		background-color: #eeeeee;
		width: 15%;
	}
</style>
</head>
<body>
<form action="regBoard.bo" method="post">
<div style="height: 50px;"></div>
<div align="center">
	<table>
		<tr>
			<td class="title">제목</td>
			<td><input type="text" name="title"></td>
		</tr>
		<tr>
			<td class="title">작성자</td>
			<td><input type="text" name="writer"></td>
		</tr>
		<tr>
			<td class="title">내용</td>
			<td><textarea rows="15" cols="50" name="content"></textarea></td>
		</tr>
		<tr>
			<td colspan="2" align="center"><input type="submit" value="등록"></td>
		</tr>
	</table>
</div>
</form>
</body>
</html>