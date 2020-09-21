<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%	
	String page1 = request.getParameter("page");
	if(page1==null){ //page의 기본값 null 발생 시 newItem하게
		page1 = "newItem.jsp";
	}
	
%>
<style type="text/css">
	table{
		border: 1px solid black;
		border-collapse: collapse;
		width : 900px; /* px대신 %도 가능. 100%하면 꽉 찬다. */
		height: 600px;
		margin : 50px; /* 해당 요소의 바깥 여백. padding도 있다 */
	}
	tr, td{
		border: 1px solid black;
	}
	a{
		 text-decoration: none;
		 color : black;
	}
</style>
</head>
<body>
<table>
	<tr height="15%">
		<td colspan="2">
			<jsp:include page="top.jsp"/> <!-- include는 css의 영향을 받는다 -->
		</td>
	</tr>
	<tr height="70%">
		<td width="15%" align="center">
			<jsp:include page="left.jsp"/>
		</td>
		<td width="85%" align="center">
			<jsp:include page="<%=page1 %>"/>
		</td>
	</tr>
	<tr height="15%">
		<td colspan="2" align="center">
			<jsp:include page="bottom.jsp"/>
		</td>
	</tr>
</table>
</body>
</html>