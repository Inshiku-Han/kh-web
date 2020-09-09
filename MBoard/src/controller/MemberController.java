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
       MemberService service = new MemberServiceImpl();
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
    	
    	//게시글 페이지	
    	if(command.equals("/joinForm.me")) {
    		
    		
    		path = "jsp/joinForm.jsp";
    		

    	}else if(command.equals("/join.me")) {
    		String id = request.getParameter("id");
    		String password = request.getParameter("password");
    		String name = request.getParameter("name");
    		int age = Integer.parseInt(request.getParameter("age"));
    		String email = request.getParameter("email");
    		
    		MemberVO memberVO = new MemberVO();
    		memberVO.setId(id);
    		memberVO.setPassword(password);
    		memberVO.setName(name);
    		memberVO.setAge(age);
    		memberVO.setEmail(email);
    		
    		service.insertMember(memberVO);

    		path = "boardList.bo";
    		

    	}else if(command.equals("/loginForm.me")) {
    	
    	path = "jsp/loginForm.jsp";
    	
    	
    	}else if(command.equals("/login.me")) {
    		String id = request.getParameter("id");
    		String password = request.getParameter("password");
    		
    		MemberVO memberVO = new MemberVO();
    		memberVO.setId(id);
    		memberVO.setPassword(password);
    		boolean result = service.selectLogin(memberVO);
    		
    		if(result) {
    			
    			session.setAttribute("login", id);
    		}
    		
    		request.setAttribute("result", result);
    	
    	path = "jsp/loginResult.jsp";
    	
    	
    	}else if(command.equals("/logout.me")) {
    		session.removeAttribute("login");
    		path = "boardList.bo";
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
