package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDAO;
import dto.MemberDTO;


@WebServlet("*.me")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	MemberDAO dao = new MemberDAO();
	
       
    public MemberController() {
        super();
    }
    protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String path = "";
    	
    	response.setContentType("text/html;charset=UTF-8");
    	request.setCharacterEncoding("UTF-8");
    	
    	String requestURI = request.getRequestURI();
    	String contextPath = request.getContextPath();
    	String command = requestURI.substring(contextPath.length());
    	System.out.println(command);
    	
    		//로그인 폼
    	if(command.equals("/loginForm.me")) {
    		path = "jsp/loginForm.jsp";
    		
    		//회원가입 폼
    	}else if(command.equals("/joinForm.me")) {
    		path = "jsp/joinForm.jsp";
    		
    	}else if(command.equals("/joinMember.me")) {
    		String id = request.getParameter("id");
    		String password = request.getParameter("password");
    		String name = request.getParameter("name");
    		int age = Integer.parseInt(request.getParameter("age"));
    		String email = request.getParameter("email");
    		
    		MemberDTO dto = new MemberDTO(id, password, name, age, email);
    		
    		//회원가입   		
    		request.setAttribute("result", dao.joinMember(dto));
    		
    		path = "jsp/joinResult.jsp";
    		
    		//로그인 처리
    	}else if(command.equals("/login.me")) {
    		String id = request.getParameter("id");
    		String password = request.getParameter("password");

    		//로그인 메소드 실행
    		request.setAttribute("result", dao.login(id,password));
    		path = "jsp/loginResult.jsp";
    		
    		//회원 목록 페이지
    	}else if(command.equals("/memberList.me")) {
    		
    		request.setAttribute("list", dao.selectMemberList());
    		path = "jsp/memberList.jsp";
    		
    		//회원 상세 조회
    	}else if(command.equals("/memberInfo.me")) {
    		String id = request.getParameter("id");
    		
    		
    		request.setAttribute("member", dao.selectMemberInfo(id));
    		path = "jsp/memberInfo.jsp";
    		
    		//회원 삭제
    	}else if(command.equals("/deleteMember.me")) {
    		String id = request.getParameter("id");
    		
    		request.setAttribute("delete", dao.deleteMember(id));
    		
    		path = "jsp/deleteResult.jsp";
    	}
    	
    	RequestDispatcher dispatcher = request.getRequestDispatcher(path);
    	dispatcher.forward(request, response);
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request,response);
	}

}
