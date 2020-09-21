package controller;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
    	HttpSession session = request.getSession();
    	String path = "";
    	
    	response.setContentType("text/html;charset=UTF-8");
    	request.setCharacterEncoding("UTF-8");
    	
    	String requestURI = request.getRequestURI();
    	String contextPath = request.getContextPath();
    	String command = requestURI.substring(contextPath.length());
    	System.out.println("command = " + command);
    	
    	//게시글 페이지	
    	if(command.equals("/boardList.bo")) {
    		BoardVO vo = new BoardVO();
    		String pageIndex = request.getParameter("pageIndex");
    		if(pageIndex != null && !pageIndex.equals("")) {
    			vo.setPageIndex(Integer.parseInt(pageIndex));
    		}else {
    			vo.setPageIndex(1);
    		}
    		//게시글의 목록
    		request.setAttribute("list", service.selectBoardList(vo));
    		
    		//게시글의 총 개수
    		int boardCnt = service.selectBoardCount();
    		int pageCnt = boardCnt / 10; // 페이지 개수
    		if(boardCnt % 10 != 0) {
    			pageCnt++;
    		}
    		
    		request.setAttribute("pageCnt", pageCnt);
    		path = "jsp/boardList.jsp";
    		
    	// 글 등록 페이지
    	}else if(command.equals("/boardWriteForm.bo")) {

    		path = "jsp/boardWriteForm.jsp";
    		
    	// 글 등록
    	}else if(command.equals("/boardWrite.bo")) {
    		//첨부파일 업로드
    		//파일 업로드 경로 지정
    		String uploadPath = request.getSession().getServletContext().getRealPath("/upload");

    		//첨부파일의 용량 설정
    		int size = 10 * 1024 * 1024; //10메가
    		
    		//실제 파일이 첨부되는 코드
    		MultipartRequest multi = new MultipartRequest(request, uploadPath, size, "UTF-8", new DefaultFileRenamePolicy());
    		
    		//디비에 데이터 추가
    		String boardTitle = multi.getParameter("boardTitle");
    		String boardWriter = multi.getParameter("boardWriter");
    		String boardContent = multi.getParameter("boardContent");
    		String boardPass = multi.getParameter("boardPass");
    		
    		//파일에 대한 데이터 받아오기
    		Enumeration files =  multi.getFileNames();
    		
    		//첫번째 첨부파일에 대한 정보
    		String file = (String)files.nextElement();
    		String imageName = multi.getOriginalFileName(file);
    		

    		
    		
    		BoardVO boardVO = new BoardVO();
    		boardVO.setBoardTitle(boardTitle);
    		boardVO.setBoardWriter(boardWriter);
    		boardVO.setBoardContent(boardContent);
    		boardVO.setBoardFile(imageName);
    		
    		if(boardPass != null && !boardPass.equals("")) { //빈 공간인 경우도 확인. 표준
    			boardVO.setBoardPass(boardPass);
    		}
    		
    		service.insertBoard(boardVO);
    		path = "boardList.bo"; //작성 후 리스트로 복귀
    	
    	//게시글 상세보기
    	}else if(command.equals("/selectBoard.bo")) {
    		String boardNum = request.getParameter("boardNum");
    		BoardVO boardVO = new BoardVO();
    		
    		boardVO.setBoardNum(Integer.parseInt(boardNum));
    		boardVO.setBoardReRef(Integer.parseInt(boardNum));
    		
    		service.updateReadCnt(boardVO);
    		
    		request.setAttribute("board", service.selectBoard(boardVO));
    		request.setAttribute("replyList", service.selectReplyList(boardVO));
    		path = "jsp/boardDetail.jsp";
    		
    	//게시글 삭제
    	}else if(command.equals("/deleteBoard.bo")) {
    		int boardNum = Integer.parseInt(request.getParameter("boardNum"));
    		BoardVO boardVO = new BoardVO();
    		boardVO.setBoardNum(boardNum);
    		service.deleteBoard(boardVO);
    		
    		path = "boardList.bo";
    		
    	//게시글 수정 폼
    	}else if(command.equals("/updateBoardForm.bo")) {
    		int boardNum = Integer.parseInt(request.getParameter("boardNum"));
    		BoardVO boardVO = new BoardVO();
    		boardVO.setBoardNum(boardNum);
    		
    		request.setAttribute("board", service.selectBoard(boardVO));
    		path = "jsp/updateBoardForm.jsp";
    		
    	//게시글 수정	
    	}else if(command.equals("/updateBoard.bo")) {
    		int boardNum = Integer.parseInt(request.getParameter("boardNum"));
    		String boardContent = request.getParameter("boardContent");
    		String boardTitle = request.getParameter("boardTitle");
    		BoardVO boardVO = new BoardVO();
    		boardVO.setBoardNum(boardNum);
    		boardVO.setBoardContent(boardContent);
    		boardVO.setBoardTitle(boardTitle);
    		
    		service.updateBoard(boardVO);
    		path="boardList.bo";
    	
    	//게시글 비밀번호 확인 폼
    	}else if(command.equals("/checkPassForm.bo")) {
    		String boardPass = request.getParameter("boardPass");
    		String boardNum = request.getParameter("boardNum");
    		
    		
    		request.setAttribute("boardPass", boardPass);
    		request.setAttribute("boardNum", boardNum);
    		path = "jsp/checkPassForm.jsp";
    		
    	//게시글 비밀번호 체크
    	}else if(command.equals("/checkPass.bo")) {
    		String boardPass = request.getParameter("boardPass");
    		String inputPass = request.getParameter("inputPass");
    		String boardNum = request.getParameter("boardNum");
    		
    		if(boardPass.equals(inputPass)) {
    			path = "selectBoard.bo?boardNum=" + boardNum;
    		}else {
    			path = "jsp/checkPassForm.bo?boardPass=" + boardPass + "&boardNum=" + boardNum;
    		}
    		
    	//댓글달기	
    	}else if(command.equals("/insertReply.bo")) {
    		String boardTitle = request.getParameter("boardTitle");
    		String boardNum = request.getParameter("boardNum");
    		
    		BoardVO boardVO = new BoardVO();
    		boardVO.setBoardTitle(boardTitle);
    		boardVO.setBoardWriter((String)session.getAttribute("login"));
    		boardVO.setBoardReRef(Integer.parseInt(boardNum));
    		
    		service.insertReply(boardVO);
    		path = "selectBoard.bo?boardNum=" + boardNum;
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
