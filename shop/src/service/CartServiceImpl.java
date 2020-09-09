package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import sqlmap.SqlSessionManager;
import vo.CartVO;

public class CartServiceImpl implements CartService{
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();
	
	@Override
	public int insertCart(CartVO cartVO) {
		int result = sqlSession.insert("insertCart", cartVO);
		sqlSession.commit();
		return result;
	}

	@Override
	public List<CartVO> selectCartList(CartVO cartVO) {
		return sqlSession.selectList("selectCartList", cartVO);
	}

	@Override
	public int deleteCart(CartVO cartVO) {
		int result = sqlSession.delete("deleteCart", cartVO);
		sqlSession.commit();
		return result;
	}

	@Override
	public int updateCart(CartVO cartVO) {
		int result = sqlSession.update("updateCart", cartVO);
		sqlSession.commit();
		return result;
	}

	@Override
	public int deleteCarts(CartVO cartVO) {
		int result = sqlSession.delete("deleteCarts", cartVO);
		sqlSession.commit();
		return result;
	}
}
