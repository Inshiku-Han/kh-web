package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import sqlmap.SqlSessionManager;
import vo.BuyResultVO;
import vo.BuyVO;

public class BuyServiceImpl implements BuyService{
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();
	
	@Override 
	public int insertBuy(BuyVO buyVO) {
		int result1 = 0;
		int result2 = 0;
		
		try {
			result1 = sqlSession.insert("insertBuy", buyVO);
			result2 = sqlSession.update("updateAmount", buyVO);
			sqlSession.commit();
		} catch (Exception e) {
			sqlSession.rollback();
			e.printStackTrace();
		}
		
		
		return result1 + result2;
	}

	@Override
	public List<BuyResultVO> selectBuyList(String memberId) {
		List<BuyResultVO> list =  sqlSession.selectList("selectBuyList", memberId);
		sqlSession.commit();
		return list;
	}

}
