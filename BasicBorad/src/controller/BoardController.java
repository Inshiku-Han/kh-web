package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.BoardDAO;
import DTO.BoardDTO;

@WebServlet("*.bo")
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	List<BoardDTO> list = new ArrayList<BoardDTO>();
	BoardDAO dao = new BoardDAO();
       
    public BoardController() {}
    
    protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String path = "";
    	
    	response.setContentType("text/html;charset=UTF-8");
    	request.setCharacterEncoding("UTF-8");
    	
    	String requestURI = request.getRequestURI();
    	String contextPath = request.getContextPath();
    	String command = requestURI.substring(contextPath.length());
    	System.out.println("command = " + command);
    	
    	if(command.equals("/boardList.bo")) {//게시판 리스트 페이지
    		//게시글 리스트에 대한 정보를 던져 줌
    		request.setAttribute("list", list);
    		
    		path = "jsp/boardList.jsp";
    	}else if(command.equals("/regBoardForm.bo")) {//게시글 작성 폼 페이지
    		path = "jsp/regBoardForm.jsp";
    	}else if(command.equals("/regBoard.bo")) { //게시글 등록
    		BoardDTO board = dao.regBoard(request);
    		
    		//정보가 세팅된 board 객체를 리스트에 저장
    		list.add(board);
    		
    		path = "jsp/regBoardSuccess.jsp";
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
