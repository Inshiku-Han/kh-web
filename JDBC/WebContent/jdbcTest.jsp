<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
   Connection conn = null;
   
   try{
      Context init = new InitialContext();
      DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/OracleDB"); /* context.xml 호출 */
      conn = ds.getConnection();
      out.println("<h3>연결 성공</h3>");
   }catch(Exception e){
      out.println("<h3>연결 실패</h3>");
      e.printStackTrace();
   }
%>
</head>
<body>

</body>
</html>