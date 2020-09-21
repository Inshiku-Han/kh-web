package DAO;

import javax.servlet.http.HttpServletRequest;

import DTO.BoardDTO;

public class BoardDAO {
	//게시글 등록
	public BoardDTO regBoard(HttpServletRequest request) {
		//파라메터 받기
		String title = request.getParameter("title");
		String writer = request.getParameter("writer");
		String content = request.getParameter("content");
		
		//받은 파라메터를 board 객체에 세팅
		BoardDTO board = new BoardDTO();
		board.setTitle(title);
		board.setWriter(writer);
		board.setContent(content);
		
		return board;
	}
}
