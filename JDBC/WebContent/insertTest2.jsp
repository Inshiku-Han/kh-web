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
<title>Insert title here</title> <!-- ctrl + a 전체선택 -->
<%
	//DB + JAVA 할 커넥션 생성
	Connection conn = null;
	//statement를 준비
	Statement stmt = null;
	//실행할 쿼리문 작성
	String sql1 = "INSERT INTO TEST (STU_NUM,STU_NAME) VALUES (3,'E')";
	String sql2 = "INSERT INTO TEST (STU_NUM,STU_NAME) VALUES (4,'F')";
	String sql3 = "INSERT INTO TEST (STU_NUM,STU_NAME) VALUES (5,'G')";
	
	try{
		//javax.naming
		Context init = new InitialContext();
		//javax.sql
		DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/OracleDB");
		//커넥션 연결
		conn = ds.getConnection();
		//stmt 생성
		stmt = conn.createStatement();
		
		
		stmt.executeUpdate(sql1); /* INSERT, DELETE, UPDATE일 때만 executeUpdate(sql)사용 */
		stmt.executeUpdate(sql2);
		stmt.executeUpdate(sql3);
		
		
	}catch(Exception e){
			out.println("<h3>레코드 수정 실패</h3>");
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