package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.BuyService;
import service.BuyServiceImpl;
import vo.BuyVO;
import vo.MemberVO;




@WebServlet("*.bu")
public class BuyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	BuyService service = new BuyServiceImpl();
    public BuyController() {}
    protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	HttpSession session = request.getSession();
    	String path = "";
    	
    	response.setContentType("text/html;charset=UTF-8");
    	request.setCharacterEncoding("UTF-8");
    	
    	String requestURI = request.getRequestURI();
    	String contextPath = request.getContextPath();
    	String command = requestURI.substring(contextPath.length());
    	System.out.println("command = " + command);
    	
    	//구매
    	if(command.equals("/insertBuy.bu")) {
    		String memberId = ((MemberVO)(session.getAttribute("loginInfo"))).getId();
    		
    		int buyCnt = Integer.parseInt(request.getParameter("buyCnt"));
    		int itemCode = Integer.parseInt(request.getParameter("itemCode"));
    		
    		BuyVO buyVO = new BuyVO();
    		buyVO.setMemberId(memberId);
    		buyVO.setBuyCnt(buyCnt);
    		buyVO.setItemCode(itemCode);
    		
    		
    		request.setAttribute("result", service.insertBuy(buyVO));
    		path = "jsp/insertBuyResult.jsp";
    		
    	//구매목록
    	}else if(command.equals("/selectBuyList.bu")) {
    		String memberId = ((MemberVO)(session.getAttribute("loginInfo"))).getId();
    		
    		request.setAttribute("list", service.selectBuyList(memberId));
    		path = "jsp/buyList.jsp";
    		
    		
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
