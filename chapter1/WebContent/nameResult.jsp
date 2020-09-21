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
	String man = "남자입니다.";
	String woman = "여자입니다.";
%>
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<td>이름 : <%=name %></td>
		</tr>
		<tr>
			<td><%if(gender.equals("남")){%>
				<%-- <%=man%> --%> 남자입니다.
				<%}else{%>
				<%-- <%=woman %> --%> 여자입니다.
				<%} %>
			</td>
		</tr>
	</table>
</body>
</html>