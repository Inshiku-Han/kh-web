<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	if(session.getAttribute("loginId")==null){
		if(request.getParameter("id")!=null){
		String id = request.getParameter("id");
		session.setAttribute("loginId", id);
		}
	}
	/* session.setAttribute("loginId", id); //id값을 loginId라는 session에 저장 
	String a = (String)session.getAttribute("loginId");  //loginId라는 session을 출력. getAttribute를 String화 */
	//session 데이터는 wb가 꺼질 때 까지 유지된다.
%>
</head>
<body>
<a href="login.jsp">Login</a> <a href="join.jsp">Join</a>
<%if(session.getAttribute("loginId")!=null) {%>
<%=(String)session.getAttribute("loginId") %>님 반갑습니다.
<%} %>
</body>
</html>