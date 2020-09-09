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

import service.BoardService;
import service.BoardServiceImpl;
import vo.BoardVO;



@WebServlet("*.bo")
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	BoardService service = new BoardServiceImpl();
       
    public BoardController() {}
    protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String path = "";
    	
    	response.setContentType("text/html;charset=UTF-8");
    	request.setCharacterEncoding("UTF-8");
    	
    	String requestURI = request.getRequestURI();
    	String contextPath = request.getContextPath();
    	String command = requestURI.substring(contextPath.length());
    	System.out.println("command = " + command);
    	
    	//게시글 페이지	
    	if(command.equals("/boardList.bo")) {
    		
    		request.setAttribute("list", service.selectBoardList());
    		path = "jsp/boardList.jsp";
    		
    	}else if(command.equals("/boardWriteForm.bo")) {
    		
    		path = "jsp/boardWriteForm.jsp";
    		
    	//게시글 쓰기	
    	}else if(command.equals("/boardWrite.bo")) {
    		//첨부파일 업로드
    		//파일 업로드 경로 지정
    		String uploadPath = request.getSession().getServletContext().getRealPath("/upload");

    		//첨부파일의 용량 설정
    		int size = 10 * 1024 * 1024; //10메가
    		
    		//실제 파일이 첨부되는 코드
    		MultipartRequest multi = new MultipartRequest(request, uploadPath, size, "UTF-8", new DefaultFileRenamePolicy());
    		
    		//디비에 데이터 추가
    		String bTitle = multi.getParameter("bTitle");
    		String bWriter = multi.getParameter("bWriter");
    		String bContent = multi.getParameter("bContent");
    		
    		//파일에 대한 데이터 받아오기
    		Enumeration files =  multi.getFileNames();
    		
    		//첫번째 첨부파일에 대한 정보
    		String file = (String)files.nextElement();
    		String imageName = multi.getOriginalFileName(file);
    		
    		
    		BoardVO vo = new BoardVO();
    		vo.setbTitle(bTitle);
    		vo.setbContent(bContent);
    		vo.setbWriter(bWriter);
    		vo.setbFile(imageName);
    		
    		request.setAttribute("board", service.insertBoard(vo));
    		path = "boardList.bo";
    	} 
    	
    	//게시글 상세보기
    	else if(command.equals("/boardDetail.bo")) {
    		String bNum = request.getParameter("bNum");
    		BoardVO vo = new BoardVO();
    		vo.setbNum(Integer.parseInt(bNum));
    	
    		
    		request.setAttribute("board", service.selectBoard(vo));
    		path = "jsp/boardDetail.jsp";
    	}
    	
    	//게시글 삭제
    	else if(command.equals("/boardDelete.bo")) {
    		int bNum = Integer.parseInt(request.getParameter("bNum"));
    		BoardVO vo = new BoardVO();
    		vo.setbNum(bNum);
    		
    		request.setAttribute("board", service.deleteBoard(vo));
    		path = "boardList.bo";
    	}
    	
    	//게시글 수정 페이지
    	else if(command.equals("/updateBoardForm.bo")) {
    		
    		int bNum = Integer.parseInt(request.getParameter("bNum"));
    		String bTitle = request.getParameter("bTitle");
    		String bContent = request.getParameter("bContent");
    		String bWriter = request.getParameter("bWriter");
    		
    		
    		BoardVO vo = new BoardVO();
    		vo.setbNum(bNum);
    		vo.setbTitle(bTitle);
    		vo.setbContent(bContent);
    		vo.setbWriter(bWriter);
    		
    		request.setAttribute("board", vo);
    		path = "jsp/updateBoardForm.jsp";
    	}
    	
    	//게시글 수정
    	else if(command.equals("/updateBoard.bo")) {
    		//첨부파일 업로드
    		//파일 업로드 경로 지정
    		String uploadPath = request.getSession().getServletContext().getRealPath("/upload");

    		//첨부파일의 용량 설정
    		int size = 10 * 1024 * 1024; //10메가
    		
    		//실제 파일이 첨부되는 코드
    		MultipartRequest multi = new MultipartRequest(request, uploadPath, size, "UTF-8", new DefaultFileRenamePolicy());
    		
    		//디비에 데이터 추가
    		int bNum = Integer.parseInt(multi.getParameter("bNum"));
    		String bTitle = multi.getParameter("bTitle");
    		String bWriter = multi.getParameter("bWriter");
    		String bContent = multi.getParameter("bContent");
    		
    		//파일에 대한 데이터 받아오기
    		Enumeration files =  multi.getFileNames();
    		
    		//첫번째 첨부파일에 대한 정보
    		String file = (String)files.nextElement();
    		String imageName = multi.getOriginalFileName(file);
    		
    		BoardVO vo = new BoardVO();
    		vo.setbNum(bNum);
    		vo.setbTitle(bTitle);
    		vo.setbContent(bContent);
    		vo.setbWriter(bWriter);
    		vo.setbFile(imageName);
    		
    		service.updateBoard(vo);
    		path = "boardList.bo";
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
