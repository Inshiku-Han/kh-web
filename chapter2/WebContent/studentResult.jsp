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
	String korScore = request.getParameter("korScore");
	String mathScore = request.getParameter("mathScore");
	String engScore = request.getParameter("engScore");
	String getName = (String)session.getAttribute("getName");
	String getGrade = (String)session.getAttribute("getGrade");
	String getAddr1 = (String)session.getAttribute("getAddr1");
	String getAddr2 = (String)session.getAttribute("getAddr2");
	String getGender = (String)session.getAttribute("getGender");
	session.setAttribute("getKorScore", korScore);
	String getKorScore = (String)session.getAttribute("getKorScore");
	session.setAttribute("getMathScore", mathScore);
	String getMathScore = (String)session.getAttribute("getMathScore");
	session.setAttribute("getEngScore", engScore);
	String getEngScore = (String)session.getAttribute("getEngScore");
	int avg = Integer.parseInt(getKorScore) + Integer.parseInt(getMathScore) + Integer.parseInt(getEngScore);
%>
</head>
<body >
<table>
	<tr>
		<td><h2>학생 성적 입력 프로그램</h2></td>
	</tr>
	<tr>
		<td><%=getName %> 학생의 정보입니다.</td>
	</tr>
	<tr>
		<td>이름 : <%=getName %></td>
	</tr>
	<tr>
		<td>학년 : <%=getGrade %></td>
	</tr>
	<tr>
		<td>연락처 : <%=getAddr1 %> - <%=getAddr2 %></td>
	</tr>
	<tr>
		<td>성별 : <%=getGender %></td>
	</tr>
	<tr>
		<td>국어 : <%=getKorScore %></td>
	</tr>
	<tr>
		<td>영어 : <%=getEngScore %></td>
	</tr>
	<tr>
		<td>수학 : <%=getMathScore %></td>
	</tr>
	<tr>
		<td>평균 : <%=avg %></td>
	</tr>
</table>
<input type="submit" value="처음으로 가기" onclick="location.href='StudentDelete.jsp'">
</body>
</html>