package service;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import dto.MemberDTO;
import sqlmap.SqlSessionManager;


//기능(메소드) 구현하는 클래스
//Dao 기능
public class MemberServiceImpl  implements MemberService{
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();
	
	@Override
	public int joinMember(MemberDTO member) {
		int result = sqlSession.insert("joinMember", member);
		sqlSession.commit();
		return result;
	}

	@Override
	public boolean login(MemberDTO member) {
		MemberDTO mem = sqlSession.selectOne("login", member);
		boolean result = true;
		
		if(mem==null) {
			result = false;
		}
		
		return result;
	}

	@Override
	public List<MemberDTO> selectMemberList() {
		List<MemberDTO> list = sqlSession.selectList("selectMemberList");
		return list;
	}

	@Override
	public MemberDTO selectMemberInfo(MemberDTO member) {
		MemberDTO mem = sqlSession.selectOne("selectMemberInfo", member);
		return mem;
	}

	@Override
	public int deleteMember(MemberDTO member) {
		int result = sqlSession.delete("deleteMember", member);
		sqlSession.commit();
		return result;
	}
	
}
