package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import sqlmap.SqlSessionManager;
import vo.ItemVO;

public class ItemServiceImpl  implements ItemService{
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();
	
	
	@Override
	public int insertItem(ItemVO itemVO) {
		int result = sqlSession.insert("insertItem", itemVO);
		sqlSession.commit();
		return result;
	}


	@Override
	public List<ItemVO> selectItemList() {
		List<ItemVO> list =  sqlSession.selectList("selectItemList");
		sqlSession.commit();
		return list;
	}


	@Override
	public ItemVO selectItem(ItemVO itemVO) {
		ItemVO vo = sqlSession.selectOne("selectItem", itemVO);
		sqlSession.commit();
		return vo;
	}
}
