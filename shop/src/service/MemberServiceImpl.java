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
	public MemberVO selectLogin(MemberVO memberVO) {
		MemberVO vo = sqlSession.selectOne("selectLogin", memberVO);
		sqlSession.commit();
		return vo;
	}
}
