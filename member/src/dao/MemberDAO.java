package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import javax.naming.Context;
import javax.naming.InitialContext;

import javax.sql.DataSource;

import dto.MemberDTO;

public class MemberDAO {
	//회원가입
	public int joinMember(MemberDTO dto) {
		int result = 0;
		//DB + JAVA 할 커넥션 생성
		Connection conn = null;
		//statement를 준비
		PreparedStatement stmt = null;
		//실행할 쿼리문 작성
		String sql = "INSERT INTO MEMBER (ID, PASSWORD, NAME, AGE, EMAIL) VALUES (?, ?, ?, ?, ?)";
		
		try{
			//javax.naming
			Context init = new InitialContext();
			//javax.sql
			DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/OracleDB");
			//커넥션 연결
			conn = ds.getConnection();
			//stmt 생성
			stmt = conn.prepareStatement(sql);
			
			//값 세팅
			stmt.setString(1, dto.getId());
			stmt.setString(2, dto.getPassword());
			stmt.setString(3, dto.getName());
			stmt.setInt(4, dto.getAge());
			stmt.setString(5, dto.getEmail());
			
			//쿼리 실행
			result = stmt.executeUpdate();
		}catch(Exception e){
				e.printStackTrace();
		}finally {
		
			try {
				stmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
		return result;
	}
	//로그인
	public boolean login(String id,String password) {
		boolean result = false;
		//DB + JAVA 할 커넥션 생성
		Connection conn = null;
		//statement를 준비
		PreparedStatement stmt = null;
		//실행 결과 데이터를 담을 resultset객체
		ResultSet rs = null;
		//실행할 쿼리문 작성
		String sql = "SELECT ID,PASSWORD "
					+ "FROM MEMBER "
					+ "WHERE ID = ? AND PASSWORD = ?";
		
		try{
			//javax.naming
			Context init = new InitialContext();
			//javax.sql
			DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/OracleDB");
			//커넥션 연결
			conn = ds.getConnection();
			//stmt 생성
			stmt = conn.prepareStatement(sql);
			
			//?값 세팅
			stmt.setString(1, id);
			stmt.setString(2, password);
			
			//쿼리 실행
			rs = stmt.executeQuery(); //boolean
			result = rs.next();
		}catch(Exception e){
				e.printStackTrace();
		}finally {
		
			try {
				stmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
		return result;
	}
	//회원 전체 리스트 조회
	public List<MemberDTO> selectMemberList() {
		//조회한 모든 정보를 담을 수 있는 리스트 생성
		List<MemberDTO> list = new ArrayList<>();
		//DB + JAVA 할 커넥션 생성
			Connection conn = null;
		//statement를 준비
			PreparedStatement stmt = null;
		//실행 결과 데이터를 담을 resultset객체
			ResultSet rs = null;
		//실행할 쿼리문 작성
			String sql = "SELECT ID FROM MEMBER";
							
				
			try{
				//javax.naming
				Context init = new InitialContext();
				//javax.sql
				DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/OracleDB");
				//커넥션 연결
				conn = ds.getConnection();
				//stmt 생성
				stmt = conn.prepareStatement(sql);
					

					
				//쿼리 실행
				rs = stmt.executeQuery(); //boolen
				
				while(rs.next()) {
				String id = rs.getString("ID");
				MemberDTO m = new MemberDTO();
				m.setId(id);
				list.add(m);
				}
				
			}catch(Exception e){
						e.printStackTrace();
			}finally {
				
				try {
						stmt.close();
						conn.close();
				} catch (SQLException e) {
						e.printStackTrace();
				}
					
			}
		return list;
	}
	//회원상세조회
	public MemberDTO selectMemberInfo(String id) {
		MemberDTO member = null;
		//DB + JAVA 할 커넥션 생성
		Connection conn = null;
		//statement를 준비
		PreparedStatement stmt = null;
		//실행 결과 데이터를 담을 resultset객체
		ResultSet rs = null;
		//실행할 쿼리문 작성
		String sql = "SELECT * FROM MEMBER WHERE ID = ?";
			
		try{
			//javax.naming
			Context init = new InitialContext();
			//javax.sql
			DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/OracleDB");
			//커넥션 연결
			conn = ds.getConnection();
			//stmt 생성
			stmt = conn.prepareStatement(sql);
				
			//?값 세팅
			stmt.setString(1, id);

				
			//쿼리 실행
			rs = stmt.executeQuery();
				
			while(rs.next()) {
				String id1 = rs.getString("ID");
				String password = rs.getString("PASSWORD");
				String name = rs.getString("NAME");
				int age =rs.getInt("AGE");
				String email =rs.getString("EMAIL");
					
				member = new MemberDTO(id1, password, name, age, email);
			}
			
		}catch(Exception e){
				e.printStackTrace();
		}finally {
			
			try {
				stmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
				
		}
		return member;
	}
	public int deleteMember(String id) {
		
		int result = 0; // 결과값
		
		Connection conn = null; // 커넥션 생성
		
		PreparedStatement stmt = null; // statement 생성
		
		String sql = "DELETE MEMBER WHERE ID = ?"; // query 선언
		
		try {
			Context init = new InitialContext();
			DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/OracleDB");
			conn = ds.getConnection();
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, id);
			
			result = stmt.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
	}finally {
		
		try {
			stmt.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
			
	}
		return result;
	}
}

