package DAO;

import javax.servlet.http.HttpServletRequest;

import DTO.StudentDTO;

public class StudentDAO {

	public StudentDTO regist(HttpServletRequest request) {
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String kor = request.getParameter("kor");
		String eng = request.getParameter("eng");
		String math = request.getParameter("math");
		
		StudentDTO dto = new StudentDTO();
		dto.setName(name);
		dto.setAge(age);
		dto.setKor(kor);
		dto.setEng(eng);
		dto.setMath(math);
		
		return dto;
	}
}
