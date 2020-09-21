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

import DAO.StudentDAO;
import DTO.StudentDTO;

@WebServlet("*.bo")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	List<StudentDTO> list = new ArrayList<>();
	StudentDAO dao = new StudentDAO();
       
    public Controller() {
    }
    
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = "";
		
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = requestURI.substring(contextPath.length());
		
		if(command.equals("/studentList.bo")) {
			request.setAttribute("list", list);
			path = "jsp/studentList.jsp";
		}else if(command.equals("/regStudentForm.bo")) {
			path = "jsp/regStudentForm.jsp";
		}
		else if(command.equals("/regStudent.bo")) {
			StudentDTO dto = dao.regist(request);
			list.add(dto);
			
			path = "jsp/regStudent.jsp";
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
