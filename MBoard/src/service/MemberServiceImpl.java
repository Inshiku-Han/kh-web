package service;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import sqlmap.SqlSessionManager;
import vo.MemberVO;

public class MemberServiceImpl  implements MemberService{
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();
	@Override
	public int insertMember(MemberVO memberVO) {
		int result = sqlSession.insert("insertMember", memberVO);
		sqlSession.commit();
		return result;
	}
	@Override
	public boolean selectLogin(MemberVO memberVO) {
		MemberVO VO = sqlSession.selectOne("selectLogin", memberVO);
		boolean result = true;
		
		if(VO==null) {
			result = false;
		}
		
		return result; 
	}
	

}
