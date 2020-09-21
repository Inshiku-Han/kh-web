package service;

import java.util.List;

import dto.MemberDTO;

//기능(메소드) 정의
public interface MemberService {
	//회원가입
	public int joinMember(MemberDTO member); // 결과값이 n줄에 대한 변화이기때문에 int
	//로그인
	public boolean login(MemberDTO member); // 1행 나오므로 DTO
	//모든 회원의 아이디 조회
	public List<MemberDTO> selectMemberList(); // DTO를 여러개 담아야 해서 List
	//상세보기
	public MemberDTO selectMemberInfo(MemberDTO member); // 1행 나오므로 DTO
	//회원 삭제
	public int deleteMember(MemberDTO member); // 결과값이 n행에 대한 변화이기때문에 int

}
