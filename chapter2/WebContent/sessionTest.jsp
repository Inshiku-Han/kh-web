<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%
	String name;
	if(session.getAttribute("name")!=null){
		name = (String)session.getAttribute("name");
		
	}else{
		name = "세션값 없음";
	}
%>
<script type="text/javascript">
	function goSave(){
		location.href = 'sessionSet.jsp';
	}
</script>
</head>
<body>
<h2>세션 테스트</h2>
<input type="button" value = "세션값저장" onclick="goSave();">
<input type="button" value = "세션값삭제" onclick="location.href = 'sessionDel.jsp';"> <!-- 명령어 한 줄일때 -->
<input type="button" value = "세션초기화" onclick="location.href = 'sessionInit.jsp';">
<br>
<h3><%=name %></h3>
</body>
</html>