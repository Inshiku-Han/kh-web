

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("*.do") //*내용이 무엇이든 .do로 끝나는 걸 읽는다.
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Controller() {
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
//    	System.out.println("requestURI = " + requestURI);
//    	System.out.println("contextPath = " + contextPath);
    	System.out.println("command = " + command);
    	
    	if(command.equals("/first.do")) {
    		path = "jsp/first.jsp";
    	}else if(command.equals("/second.do")) {
    		path = "jsp/second.jsp";
    	}else if(command.equals("/third.do")) {
    		path = "jsp/third.jsp";
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
		/*
		 * PrintWriter out = response.getWriter(); out.println("이름 = " + name);
		 * out.println("나이 = " + age); 안써
		 */
	}

}
