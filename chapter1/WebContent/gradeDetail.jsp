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
%>
<title>Insert title here</title>
</head>
<body>
이름 : <%=name %><br>
학과 : <%=major %><br>
국어 : <%=korScore %><br>
영어 : <%=engScore %><br>
수학 : <%=mathScore %><br>
</body>
</html>