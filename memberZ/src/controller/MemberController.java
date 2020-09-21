package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.MemberDTO;
import service.MemberService;
import service.MemberServiceImpl;


@WebServlet("*.me")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	MemberService service = new MemberServiceImpl(); //인터페이스 이름 = new  클래스();
       
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
    		
    		MemberDTO member = new MemberDTO(id, password, name, age, email);
    		
    		//회원가입   		
    		request.setAttribute("result", service.joinMember(member));
    		
    		path = "jsp/joinResult.jsp";
    		
    		//로그인 처리
    	}else if(command.equals("/login.me")) {
    		String id = request.getParameter("id");
    		String password = request.getParameter("password");
    		
    		MemberDTO member = new MemberDTO();
    		
    		member.setId(id);
    		member.setPassword(password);
    		
    		//로그인 메소드 실행
    		request.setAttribute("result", service.login(member));
    		
    		path = "jsp/loginResult.jsp";
    		
    		//회원 목록 페이지
    	}else if(command.equals("/memberList.me")) {
    		
    		request.setAttribute("list", service.selectMemberList());
    		path = "jsp/memberList.jsp";
    		
    		//회원 상세 조회
    	}else if(command.equals("/memberInfo.me")) {
    		String id = request.getParameter("id");
    		
    		MemberDTO member = new MemberDTO();
    		
    		member.setId(id);
    		
    		request.setAttribute("member", service.selectMemberInfo(member));
    		
    		path = "jsp/memberInfo.jsp";
    		
    		//회원 삭제
    	}else if(command.equals("/deleteMember.me")) {
    		String id = request.getParameter("id");
    		
    		MemberDTO member = new MemberDTO();
    		
    		member.setId(id);
    		
    		request.setAttribute("delete", service.deleteMember(member));
    		
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
