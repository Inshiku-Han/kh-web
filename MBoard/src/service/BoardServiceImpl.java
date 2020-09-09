package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import sqlmap.SqlSessionManager;
import vo.BoardVO;

public class BoardServiceImpl  implements BoardService{
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();
	
	@Override
	public List<BoardVO> selectBoardList(BoardVO boardVO) {
		return sqlSession.selectList("selectBoardList", boardVO);
		
	}

	@Override
	public int insertBoard(BoardVO boardVO) {
		int result = sqlSession.insert("insertBoard",boardVO);
		sqlSession.commit();
		return result;
		
	}

	@Override
	public BoardVO selectBoard(BoardVO boardVO) {
		return sqlSession.selectOne("selectBoard", boardVO);
		
	}

	@Override
	public int updateReadCnt(BoardVO boardVO) {
		int result = sqlSession.update("updateReadCnt",boardVO);
		sqlSession.commit();
		return result;
	}

	@Override
	public int deleteBoard(BoardVO boardVO) {
		int result = sqlSession.delete("deleteBoard",boardVO);
		sqlSession.commit();
		return result;
	}

	@Override
	public int updateBoard(BoardVO boardVO) {
		int result = sqlSession.update("updateBoard",boardVO);
		sqlSession.commit();
		return result;
	}

	@Override
	public int insertReply(BoardVO boardVO) {
		int result = sqlSession.insert("insertReply",boardVO);
		sqlSession.commit();
		return result;
	}

	@Override
	public List<BoardVO> selectReplyList(BoardVO boardVO) {
		return sqlSession.selectList("selectReplyList", boardVO);
	}

	@Override
	public int selectBoardCount() {
		return sqlSession.selectOne("selectBoardCount");
		
	}
	
}
