<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	//파일 업로드 경로 지정
	String uploadPath = request.getSession().getServletContext().getRealPath("/upload");

	//첨부파일의 용량 설정
	int size = 10 * 1024 * 1024; //10메가
	
	//실제 파일이 첨부되는 코드
	MultipartRequest multi = new MultipartRequest(request, uploadPath, size, "UTF-8", new DefaultFileRenamePolicy());
	
	//넘어온 파라메터 받는 법 enctype때문에 request.getparameter 불가
	String name = multi.getParameter("name"); // 올린 사람
	String subject = multi.getParameter("subject");
	
	//파일에 대한 데이터 받아오기
	Enumeration files =  multi.getFileNames();
	
	//첫번째 첨부파일에 대한 정보
	String file1 = (String)files.nextElement();
	String fileName1 = multi.getFilesystemName(file1);
	String originFileName1 = multi.getOriginalFileName(file1);
	
	
	
	//두번째 첨부파일에 대한 정보
	String file2 = (String)files.nextElement();
	String fileName2 = multi.getFilesystemName(file2);
	String originFileName2 = multi.getOriginalFileName(file2);
%>
</head>
<body>
<%=uploadPath %><br>
첫번째 파일 : <%=file1 %><br>
첫번째 파일의 시스템 저장 이름 : <%=fileName1 %><br>
첫번째 파일의 실제 이름 : <%=originFileName1 %><br>
두번째 파일 : <%=file2 %><br>
두번째 파일의 시스템 저장 이름 : <%=fileName2 %><br>
두번째 파일의 실제 이름 : <%=originFileName2 %><br>
</body>
</html>