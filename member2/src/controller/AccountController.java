package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AccountDAO;
import dto.AccountDTO;

@WebServlet("*.ac")
public class AccountController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private AccountDAO dao;
    public AccountController() {
    	dao = new AccountDAO();
    }
    
    
    protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String path = "";
    	
    	response.setContentType("text/html;charset=UTF-8");
    	request.setCharacterEncoding("UTF-8");
    	
    	String requestURI = request.getRequestURI();
    	String contextPath = request.getContextPath();
    	String command = requestURI.substring(contextPath.length());
    	System.out.println("command = " + command);
    	
    	// 로그인 화면
    	if(command.equals("/loginForm.ac")) {
    		path = "jsp/loginForm.jsp";
    		
    	// 회원가입 화면
    	}else if(command.equals("/signForm.ac")) {
    		path = "jsp/signForm.jsp";
    	
    	// 회원정보 기입	
    	}else if(command.equals("/insertAccount.ac")) {
    		String id = request.getParameter("id");
    		String password = request.getParameter("password");
    		String name = request.getParameter("name");
    		int age = Integer.parseInt(request.getParameter("age"));
    		String email = request.getParameter("email");
    		AccountDTO dto = new AccountDTO(id, password, name, age, email);
    		request.setAttribute("result", dao.insertAccount(dto));
    		path = "jsp/signResult.jsp";
    	
    	// 로그인 기입
    	}else if(command.equals("/login.ac")) {
    		String id = request.getParameter("id");
    		String password = request.getParameter("password");
    		System.out.println(id+password);
    		
    		request.setAttribute("result", dao.selectLogin(id,password));
    		path = "jsp/loginResult.jsp";
    		
    	// 계정 목록	
    	}else if(command.equals("/accountList.ac")) {
    		request.setAttribute("list", dao.accountList());
    		path = "jsp/accountList.jsp";
    		
    	// 상세 정보	
    	}else if(command.equals("/accountInfo.ac")) {
    		String id = request.getParameter("id");
    		
    		request.setAttribute("info", dao.accountInfo(id));
    		path = "jsp/accountInfo.jsp";
    		
    	// 계정 삭제	
    	}else if(command.equals("/deleteAccount.ac")) {
    		String id = request.getParameter("id");
    		
    		request.setAttribute("delete", dao.deleteAccount(id));
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
