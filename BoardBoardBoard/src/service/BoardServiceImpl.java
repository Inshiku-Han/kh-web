package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import sqlmap.SqlSessionManager;
import vo.BoardVO;

public class BoardServiceImpl implements BoardService{
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();

	@Override
	public List<BoardVO> selectBoardList() {
		return sqlSession.selectList("selectBoardList");
	}

	@Override
	public int insertBoard(BoardVO vo) {
		int result = sqlSession.insert("insertBoard", vo);
		sqlSession.commit();
		return result;
	}

	@Override
	public BoardVO selectBoard(BoardVO vo) {
		return sqlSession.selectOne("selectBoard", vo);
	}

	@Override
	public int deleteBoard(BoardVO vo) {
		int result = sqlSession.delete("deleteBoard", vo);
		sqlSession.commit();
		return result;
	}

	@Override
	public int updateBoard(BoardVO vo) {
		int result = sqlSession.update("updateBoard", vo);
		sqlSession.commit();
		return result;
	}
	
}
