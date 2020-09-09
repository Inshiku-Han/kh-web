package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.MemberService;
import service.MemberServiceImpl;
import vo.MemberVO;



@WebServlet("*.me")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private MemberService service = new MemberServiceImpl();
	
    public MemberController() {}
    protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	HttpSession session = request.getSession();
    	String path = "";
    	
    	response.setContentType("text/html;charset=UTF-8");
    	request.setCharacterEncoding("UTF-8");
    	
    	String requestURI = request.getRequestURI();
    	String contextPath = request.getContextPath();
    	String command = requestURI.substring(contextPath.length());
    	System.out.println("command = " + command);
    	
    	//회원가입폼
    	if(command.equals("/joinForm.me")) {
    		
    		
    		path = "jsp/joinForm.jsp";
    		
    	//회원가입
    	}else if(command.equals("/join.me")) {
    		MemberVO memberVO = new MemberVO();
    		memberVO.setId(request.getParameter("id"));
    		memberVO.setPassword(request.getParameter("password"));
    		memberVO.setName(request.getParameter("name"));
    		memberVO.setAddr(request.getParameter("addr"));
    		memberVO.setTell(request.getParameter("tell"));
    		memberVO.setEmail(request.getParameter("email"));
    		
    		request.setAttribute("result", service.insertMember(memberVO));
    		path = "jsp/joinResult.jsp";
    	
    	//로그인폼
    	}else if(command.equals("/loginForm.me")) {
    	
    		path = "jsp/loginForm.jsp";
    		
    	//로그인	
    	}else if(command.equals("/login.me")) {
    		MemberVO memberVO = new MemberVO();
    		memberVO.setId(request.getParameter("id"));
    		memberVO.setPassword(request.getParameter("password"));
    		
    		MemberVO vo = service.selectLogin(memberVO);
    		
    		if(vo != null) {
    			
    			session.setAttribute("loginInfo", vo);
    		}
    		
    		request.setAttribute("result", vo);
    		path = "jsp/loginResult.jsp";
    		
    	//로그아웃
    	}else if(command.equals("/logout.me")) {
    		session.removeAttribute("loginInfo");
    		path = "itemList.it";
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
