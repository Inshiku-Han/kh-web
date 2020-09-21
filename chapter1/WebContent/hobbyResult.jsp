<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%
	response.setContentType("text/html;charset=UTF-8");
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String[] hobby = request.getParameterValues("hobby");
	
%>
<style type="text/css">
	table{
		border: 1px;
		border-collapse: collapse;
	}
	
	tr{
		
	}
	td{
	
	}
</style>
<title>취미결과</title>
</head>
<body>
<table>
	<tr>
		<td>이름 : </td>
		<td><%=name %></td>
	</tr>
	<tr>
		<td>성별 : </td>
		<td><%=gender %></td>
	</tr>
	<tr>
		<td>취미 : </td>
		<td><%for(String e : hobby){ %>
			<%=e %>
			<%} %>
		</td>
	</tr>
</table>
<h3><a href="nameResult.jsp?name=<%=name %>&gender=<%=gender%>" target="_blank">전송</a></h3>
</body>
</html>