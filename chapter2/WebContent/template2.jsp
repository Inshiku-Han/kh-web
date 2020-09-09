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
		width: 80%;
		height: 600px;
		margin: 5%;
	}
	tr,td{
		border: 1px solid black;
		text-align: center;
	}
	a{
		text-decoration: none;
	}
</style>
<%
	String page1 = request.getParameter("page");
	if(page1==null){
		page1 = "temp2Page1.jsp";
	}
%>
</head>
<body>
<table>
	<tr>
		<td colspan="2"><jsp:include page="temp2Top.jsp"/></td>
	</tr>
	<tr>
		<td width="15%" align="center"><jsp:include page="temp2Left.jsp"/></td>
		<td><jsp:include page="<%=page1 %>"/></td>
	</tr>
</table>
</body>
</html>