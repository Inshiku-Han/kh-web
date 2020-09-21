package service;

import vo.MemberVO;

public interface MemberService {
	//회원가입
	public int insertMember(MemberVO memberVO);
	
	//로그인
	public boolean selectLogin(MemberVO memberVO);
}
