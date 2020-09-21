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
String major = request.getParameter("major");
String korScore = request.getParameter("korScore");
String engScore = request.getParameter("engScore");
String mathScore = request.getParameter("mathScore");
int sum = Integer.parseInt(korScore) + Integer.parseInt(mathScore) + Integer.parseInt(engScore);
%>
<title>Insert title here</title>
</head>
<body>
이름 : <%=name %><br>
총점 : <%=sum %><br>
<h3><a href="gradeDetail.jsp?name=<%=name %>&major=<%=major%>&korScore=<%=korScore%>&engScore=<%=engScore%>&mathScore=<%=mathScore%>">상세보기</a></h3>
</body>
</html>