package service;

import java.util.List;


import vo.BoardVO;

public interface BoardService {
	//게시판 리스트 조회
	public List<BoardVO> selectBoardList(BoardVO boardVO); //채워줄 값 없으면 매개변수 필요없다
	//게시글 등록
	public int insertBoard(BoardVO boardVO);
	//게시글 상세보기
	public BoardVO selectBoard(BoardVO boardVO);
	//조회수 증가
	public int updateReadCnt(BoardVO boardVO);
	//게시글 삭제
	public int deleteBoard(BoardVO boardVO);
	//게시글 수정
	public int updateBoard(BoardVO boardVO);
	//댓글달기
	public int insertReply(BoardVO boardVO);
	//댓글조회
	public List<BoardVO> selectReplyList(BoardVO boardVO);
	//게시글의 총 개수 조회
	public int selectBoardCount();
	
}
