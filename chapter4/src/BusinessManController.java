

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("*.bs")
public class BusinessManController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public BusinessManController() {
        super();
    }
    protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	//경로를 저장하는 변수
    	String path = "";
    	
    	//인코딩 세팅
    	response.setContentType("text/html;charset=UTF-8");
    	request.setCharacterEncoding("UTF-8");
    	
    	//url 경로확인(요청 주소확인)
    	String requestURI = request.getRequestURI(); //요청한 파일의 경로 확인(프로젝트명+액션명)
    	String contextPath = request.getContextPath(); //요청한 파일의  프로젝트 확인
    	String command = requestURI.substring(contextPath.length()); // 프로젝트명의 길이-요청한 경로 = 요청한 action
    	//System.out.println("requestURI = " + requestURI);
    	//System.out.println("contextPath = " + contextPath);
    	System.out.println("command = " + command);
    	
    	//학생 등록 폼 화면으로 이동
    	if(command.equals("/regBusinessManForm.bs")) {
    		path = "jsp/regBusinessManForm.jsp";
    	}else if(command.equals("/showBusinessMan.bs")) {
    		String name = request.getParameter("name");
    		String age = request.getParameter("age");
    		String level = request.getParameter("level");
    		String year = request.getParameter("year");//business대신 emp로 해
    		String admin = request.getParameter("admin");
    		BusinessManDto man = new BusinessManDto();
    		man.setName(name);
    		man.setAge(age);
    		man.setLevel(level);
    		man.setYear(year);
    		man.setAdmin(admin);
    		request.setAttribute("man", man);
    		
    		path = "jsp/showBusinessMan.jsp";
    	}else if(command.equals("/manageBusinessMan.bs")) {
    		path = "jsp/manageBusinessMan.jsp";
    	}
    	
    	//페이지 포워드
    	RequestDispatcher dispatcher = request.getRequestDispatcher(path); //이동경로 지정
    	//requestdispatcher는 webcontent를 탐색한다. 괄호 안에는 webcontent내 폴더명/폴더내 파일명(path로 변수화)
    	//form으로 받은 input 데이터를 해당 경로에서도 사용가능
    	dispatcher.forward(request, response); //이동 명령
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

}
