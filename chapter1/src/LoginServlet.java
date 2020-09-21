

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login") //URL Mapping설정이 반영됨
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8"); // 폰트깨짐방지
		String id = request.getParameter("id"); // form에서 들어온 데이터 중 id를 받아온다.
		String pw = request.getParameter("pw"); // form에서 들어온 데이터 중 pw를 받아온다.
		System.out.println("아이디 : " + id); // 콘솔에 출력
		System.out.println("비밀번호 : " + pw);
		
		PrintWriter out = response.getWriter();
		out.println("아이디 : " + id + "<br>"); // 웹페이지에 출력
		out.println("비밀번호 : " + pw + "<br>");
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
