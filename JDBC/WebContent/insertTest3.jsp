<%@page import="java.sql.PreparedStatement"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	//DB + JAVA 할 커넥션 생성
	Connection conn = null;
	//statement를 준비
	PreparedStatement stmt = null;
	//실행할 쿼리문 작성
	String sql = "INSERT INTO TEST (STU_NUM,STU_NAME) VALUES (?,?)";
	
	try{
		//javax.naming
		Context init = new InitialContext();
		//javax.sql
		DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/OracleDB");
		//커넥션 연결
		conn = ds.getConnection();
		//stmt 생성

		stmt = conn.prepareStatement(sql); /* 표준 */
		
		stmt.setInt(1, 6); // sql에서 첫번째 물음표의 값을 6으로 설정하겠다.
		stmt.setString(2, "B"); //sql에서 두번째 물음표의 값을 B로 설정하겠다.
		
		int result = stmt.executeUpdate(); /* 표준 */
		if(result != 0){
			out.println("<h3>레코드 등록 완료</h3>");
		}
	}catch(Exception e){
			out.println("<h3>레코드 등록 실패</h3>");
			e.printStackTrace();
	}finally{
		stmt.close();
		conn.close();
	}
%>
</head>
<body>

</body>
</html>