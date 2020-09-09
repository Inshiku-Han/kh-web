package service;

import java.util.List;

import vo.BoardVO;

public interface BoardService {
	//게시판리스트
	public List<BoardVO> selectBoardList();
	//글등록
	public int insertBoard(BoardVO vo);
	//게시글 상세 보기
	public BoardVO selectBoard(BoardVO vo);
	//게시글 삭제
	public int deleteBoard(BoardVO vo);
	//게시글 수정
	public int updateBoard(BoardVO vo);
}
