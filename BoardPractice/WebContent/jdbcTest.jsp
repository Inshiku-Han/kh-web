<%@page import="java.sql.DriverManager"%>
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
   String driver = "oracle.jdbc.driver.OracleDriver";
   String url = "jdbc:oracle:thin:@localhost:1521:orcl";
   
   boolean connect = false;
   
   try{
      Class.forName(driver);
      conn = DriverManager.getConnection(url, "MYDB", "oracle");
      
      connect = true;
      conn.close();
   }catch(Exception e){
      connect = false;
      e.printStackTrace();
   }

%>
</head>
<body>
<%if(connect == true){ %>
   연결 성공
<%} else{%>
   연결 실패
<%} %>
</body>
</html>