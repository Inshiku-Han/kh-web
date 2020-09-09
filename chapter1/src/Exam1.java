

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/exam")
public class Exam1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Exam1() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String adress = request.getParameter("adress");
		int realAge = Integer.parseInt(age) + 10; //Integer.paeseIny(문자) => 문자의 숫자화
		String gender = request.getParameter("gender");
		String tell = request.getParameter("tell");
		
		PrintWriter out = response.getWriter();
		out.println("이름 : " + name + "<br>");
		out.println("나이 : " + realAge + "<br>");
		out.println("주소 : " + adress + "<br>");
		out.println("성별 : " + gender + "<br>");
		out.println("번호 : " + tell + "<br>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
