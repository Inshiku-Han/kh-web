<%@page import="java.sql.ResultSet"%>
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
	//실행 결과 데이터를 담을 resultset객체
	ResultSet rs = null;
	//실행할 쿼리문 작성
	String sql = "SELECT EMPNO, ENAME, SAL, DEPTNO FROM EMP";
	
	try{
		//javax.naming
		Context init = new InitialContext();
		//javax.sql
		DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/OracleDB");
		//커넥션 연결
		conn = ds.getConnection();
		//stmt 생성
		stmt = conn.prepareStatement(sql);
		//쿼리실행
		rs = stmt.executeQuery(); //SELECT  
		
		//데이터에 접근하는 방법
		while(rs.next()){ //데이터가 있는 동안 반복
			out.println("<h3>사번 = " + rs.getInt("EMPNO") + " 사원명 = " + rs.getString("ENAME") + " 급여 = " + rs.getInt("SAL") + " 부서번호 = " + rs.getInt("DEPTNO") + "</h3>");
		}
		
	}catch(Exception e){
			out.println("<h3>레코드 등록 실패</h3>");
			e.printStackTrace();
	}finally{
		rs.close();
		stmt.close();
		conn.close();
	}
%>
</head>
<body>

</body>