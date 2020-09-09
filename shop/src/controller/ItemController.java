package controller;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import service.ItemService;
import service.ItemServiceImpl;
import vo.ItemVO;



@WebServlet("*.it")
public class ItemController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ItemService service = new ItemServiceImpl();
    public ItemController() {}
    protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String path = "";
    	
    	response.setContentType("text/html;charset=UTF-8");
    	request.setCharacterEncoding("UTF-8");
    	
    	String requestURI = request.getRequestURI();
    	String contextPath = request.getContextPath();
    	String command = requestURI.substring(contextPath.length());
    	System.out.println("command = " + command);
    	
    	//상품 리스트 페이지로 이동	
    	if(command.equals("/itemList.it")) {
    		
    		request.setAttribute("list", service.selectItemList());
    		path = "jsp/itemList.jsp";
    		
    	//상품등록폼
    	}else if(command.equals("/regItemForm.it")) {
    		
    		path = "jsp/regItemForm.jsp";
    		
    	//상품등록
    	}else if(command.equals("/regItem.it")) {
    		String uploadPath = request.getSession().getServletContext().getRealPath("/upload");
    		int size = 10 * 1024 * 1024;
    		MultipartRequest multi = new MultipartRequest(request, uploadPath, size, "UTF-8", new DefaultFileRenamePolicy());
    		Enumeration files =  multi.getFileNames();
    		String file = (String)files.nextElement();
    		String imageName = multi.getOriginalFileName(file);
    		
    		ItemVO itemVO = new ItemVO();
    		itemVO.setItemName(multi.getParameter("itemName"));
    		itemVO.setItemPrice(Integer.parseInt(multi.getParameter("itemPrice")));
    		itemVO.setItemInfo(multi.getParameter("itemInfo"));
    		itemVO.setItemImage(imageName);
    		
    		request.setAttribute("result", service.insertItem(itemVO));
    		path = "jsp/regItemResult.jsp";
    		
    	//상품 상세	
    	}else if(command.equals("/itemDetail.it")) {
    		ItemVO itemVO = new ItemVO();
    		itemVO.setItemCode(Integer.parseInt(request.getParameter("itemCode")));
    		
    		request.setAttribute("item", service.selectItem(itemVO));
    		path = "jsp/itemDetail.jsp";
    		
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
