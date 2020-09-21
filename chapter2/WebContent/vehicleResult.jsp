<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	response.setContentType("text/html;charset=UTF-8");
	request.setCharacterEncoding("UTF-8");
	String vehicle = request.getParameter("vehicle");
	String price = request.getParameter("price");
	String pay = request.getParameter("pay");
	String[] option = request.getParameterValues("option");
%>
</head>
<body>
<table>
	<tr>
		<td>차종 : <%=vehicle %></td>
	</tr>
	<tr>
		<td>가격 : <%=price %></td>
		
	</tr>
	<tr>
		<td>결제 방식 : <%=pay %></td>
	</tr>
	<tr>
		<td>옵션 : 
			<%for(String e : option) {%>
			<%=e %>
			<%} %>
		</td>
	</tr>
	
</table>
</body>
</html>