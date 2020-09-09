<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	//쿠키는 컴퓨터에 저장되기 때문에 Wb 종료해도 유지된다.
	String lang = "korea";
	String cookie = request.getHeader("Cookie"); //저장된 모든 쿠키 정보 확인
	
	if(cookie!=null){
			Cookie[] cookies = request.getCookies();
			
			for(int i = 0; i < cookies.length;i++){
				if(cookies[i].getName().equals("lang")){
					lang = cookies[i].getValue();
				}
			}
	}
%>
</head>
<body>
<h2>쿠키를 이용한 화면 설정 예제</h2>
<%if(lang.equals("korea")){ %>
	<h3>안녕하세요. 쿠키 예제입니다.</h3>
<%} else {%>
	<h3>Hello. this is a Cookie Exam</h3>
<%} %>

<form action="exam2.jsp" method="post"> <!-- 태그안에도 조건문 선언 가능 -->
	<input type="radio" name="lang" value="korea" <%if(lang.equals("korea")){ %>checked<%} %>> 한국어 페이지 보기 
	<input type="radio" name="lang" value="english" <%if(lang.equals("english")){ %>checked<%} %>> 영어 페이지 보기<br>
	<input type="submit" value="설정"> 
	
</form>

</body>
</html>