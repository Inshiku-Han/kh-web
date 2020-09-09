<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	String name = "";
	String value = "";
	//쿠키값이 존재하는지 확인하기 위해 헤더값을 확인
	String cookie = request.getHeader("Cookie");//쿠키값이 없으면 null로 들어감
	
	if(cookie != null){
		//모든 쿠키정보를 배열로 받아온다.
		Cookie[] cookies = request.getCookies();
		for(int i = 0; i < cookies.length; i++){
			if(cookies[i].getName().equals("name")){ //이름이 쿠키인 쿠키값 찾기
				
			name = cookies[i].getName();
			value = cookies[i].getValue();
			System.out.println("name = " + name + "value = " + value);
			}
		}
	}
%>

</head>
<body>

</body>
</html>