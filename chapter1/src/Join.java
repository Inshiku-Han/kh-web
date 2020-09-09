

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/join")
public class Join extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Join() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8"); //Post에서 한글출력하려면 두 메소드 필요
		System.out.println("name = " + request.getParameter("name"));
		System.out.println("id = " + request.getParameter("id"));
		System.out.println("pw = " + request.getParameter("pw"));
	}
	

}
