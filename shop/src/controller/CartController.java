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
import javax.servlet.http.HttpSession;

import service.CartService;
import service.CartServiceImpl;
import vo.CartVO;
import vo.MemberVO;



@WebServlet("*.ca")
public class CartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CartService service = new CartServiceImpl();
    public CartController() {}
    protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	HttpSession session = request.getSession();
    	String path = "";
    	
    	response.setContentType("text/html;charset=UTF-8");
    	request.setCharacterEncoding("UTF-8");
    	
    	String requestURI = request.getRequestURI();
    	String contextPath = request.getContextPath();
    	String command = requestURI.substring(contextPath.length());
    	System.out.println("command = " + command);
    	
    	//장바구니에 추가	
    	if(command.equals("/insertCart.ca")) {
    		
    		String itemCode = request.getParameter("itemCode");
    		String itemCnt = request.getParameter("itemCnt");
    		String memberId = ((MemberVO)session.getAttribute("loginInfo")).getId(); //session에 있는 id 가져오기
    		
    		CartVO cartVO = new CartVO();
    		cartVO.setItemCode(Integer.parseInt(itemCode));
    		cartVO.setItemCnt(Integer.parseInt(itemCnt));
    		cartVO.setMemberId(memberId);
			
			request.setAttribute("result", service.insertCart(cartVO));
    		path = "jsp/insertCartResult.jsp";

    	//장바구니로 이동
    	}else if(command.equals("/cartList.ca")) {
    		String memberId = ((MemberVO)session.getAttribute("loginInfo")).getId();
    		
    		CartVO cartVO = new CartVO();
    		cartVO.setMemberId(memberId);
    		
    		request.setAttribute("list", service.selectCartList(cartVO));
    		path = "jsp/cartList.jsp";
    		
    	//장바구니 삭제
    	}else if(command.equals("/deleteCart.ca")) {
    		int cartNum = Integer.parseInt(request.getParameter("cartNum"));
    		
    		CartVO cartVO = new CartVO();
    		cartVO.setCartNum(cartNum);
    		
    		request.setAttribute("result", service.deleteCart(cartVO));
    		path = "jsp/deleteCartResult.jsp";
    		
    	//장바구니 수정
    	}else if(command.equals("/updateCart.ca")) {
    		CartVO cartVO = new CartVO();
    		cartVO.setItemCnt(Integer.parseInt(request.getParameter("itemCnt")));
    		cartVO.setCartNum(Integer.parseInt(request.getParameter("cartNum")));
    		
    		request.setAttribute("result", service.updateCart(cartVO));
    		path = "jsp/updateCartResult.jsp";
    		
    	//선택삭제버튼 클릭 시 장바구니 데이터 삭제	
    	}else if(command.equals("/deleteCarts.ca")) {
    		String cartNum = request.getParameter("cartNum");
    		String[] cartNums = cartNum.split(",");
    		
    		//숫자를 담을 수 있는 List 생성
    		List<Integer> cartNumList = new ArrayList<>();
    		
    		//String.int.Value(1); 숫자를 문자로 변환
    		
    		//cartNums 배열의 데이터를 수자로 변환 후 리스트에 저장
    		for(int i = 0; i < cartNums.length; i++) {
    			cartNumList.add(Integer.parseInt(cartNums[i]));
    		}
    		CartVO cartVO = new CartVO();
    		cartVO.setCartNumList(cartNumList);
    		service.deleteCarts(cartVO);
    		
    		path = "cartList.ca";
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
