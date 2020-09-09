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

import dto.AccountDTO;

public class AccountDAO {
	public int insertAccount(AccountDTO dto) {
		int result = 0;
		// java.sql
		Connection conn = null;
		PreparedStatement stmt = null;
		String sql = "INSERT INTO MEMBER(ID,PASSWORD,NAME,AGE,EMAIL) VALUES (?,?,?,?,?)";
		
		try {
			// javax.naming
			Context init = new InitialContext();
			// javax.sql.DataSource
			DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/OracleDB");
			conn = ds.getConnection();
			stmt = conn.prepareStatement(sql);
			
			//값 세팅
			stmt.setString(1, dto.getId());
			stmt.setString(2, dto.getPassword());
			stmt.setString(3, dto.getName());
			stmt.setInt(4, dto.getAge());
			stmt.setString(5, dto.getEmail());
			
			result = stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			try {
				stmt.close();
				conn.close();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			
		}
		return result;
	}
	public boolean selectLogin(String id, String password) {
		boolean result = false;
		// java.sql
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT ID, PASSWORD FROM MEMBER WHERE ID = ? AND PASSWORD = ?";
		
		try {
			// javax.naming
			Context init = new InitialContext();
			// javax.sql.DataSource
			DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/OracleDB");
			conn = ds.getConnection();
			stmt = conn.prepareStatement(sql);
			
			stmt.setString(1, id);
			stmt.setString(2, password);
			
			rs = stmt.executeQuery();
			result = rs.next();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				stmt.close();
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}
		return result;
	}
	public List<AccountDTO> accountList() {
		List<AccountDTO> list = new ArrayList<AccountDTO>();
		
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		String sql = "SELECT ID FROM MEMBER";
		
		try {
			Context init = new InitialContext();
			DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/OracleDB");
			conn = ds.getConnection();
			stmt = conn.prepareStatement(sql);
			
			rs = stmt.executeQuery();
			
			while(rs.next()) {
				AccountDTO dto = new AccountDTO();
				dto.setId(rs.getString("ID"));
				list.add(dto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}	finally {
			try {
				stmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		
		}
		return list;
	}
	public AccountDTO accountInfo(String id) {
		AccountDTO dto = new AccountDTO();
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		String sql = "SELECT * FROM MEMBER WHERE ID = ?";
		
		try {
			Context init = new InitialContext();
			DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/OracleDB");
			conn = ds.getConnection();
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, id);
			rs = stmt.executeQuery();
				
			
			
			
			while(rs.next()) {
				String id1 = rs.getString("ID");
				String password = rs.getString("PASSWORD");
				String name = rs.getString("NAME");
				int age =rs.getInt("AGE");
				String email =rs.getString("EMAIL");
				
				dto = new AccountDTO(id1, password, name, age, email);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}	finally {
			try {
				stmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		
		}
		return dto;
	}
	public int deleteAccount(String id) {
		int result = 0;
		// java.sql
		Connection conn = null;
		PreparedStatement stmt = null;
		String sql = "DELETE MEMBER WHERE ID = ?";
		
		try {
			// javax.naming
			Context init = new InitialContext();
			// javax.sql.DataSource
			DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/OracleDB");
			conn = ds.getConnection();
			stmt = conn.prepareStatement(sql);
			
			//값 세팅
			stmt.setString(1, id);
			
			result = stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			try {
				stmt.close();
				conn.close();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			
		}
		return result;
	}
}
