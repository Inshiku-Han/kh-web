<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>상세보기</h1>
<h3>이름 : ${member.name }</h3>
<h3>나이 : ${member.id }</h3>
<h3>비밀번호 : ${member.password }</h3>
<h3>나이 : ${member.age }</h3>
<h3>이메일 : ${member.email }</h3>
<br><br>
<a href="javascript:history.back();" style="text-decoration: none;">뒤로가기</a>&nbsp;&nbsp;&nbsp;
<a href="deleteMember.me?id=${member.id }" style="text-decoration: none;">삭제</a>
</body>
</html>