<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%	
	//쿠키 객체 생성.
	Cookie cookie = new Cookie("name", "hong"); //hong을 name에 저장
	//쿠키 유지시간 설정. 600초
	cookie.setMaxAge(600);
	//생성된 쿠키를 클라이언트에 전송
	response.addCookie(cookie);
	
	Cookie cookie1 = new Cookie("age","20");
	response.addCookie(cookie1); //쿠키에 다음 자료 넣기
	//쿠키에는 랜덤한 수가 하나 들어간다.
%>
</head>
<body>
<h2>Cookie Test</h2>
<%=cookie.getName() %><br>
<%=cookie.getValue() %><br>
<%=cookie.getMaxAge() %><br>
<a href="cookieTest2.jsp">쿠키 값 불러오기</a>
</body>
</html>