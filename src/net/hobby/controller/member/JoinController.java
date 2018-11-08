package net.hobby.controller.member;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.hobby.domain.MemberVO;
import net.hobby.sql.MemberSQL;

public class JoinController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("provision.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8"); 
		response.setContentType("text/html;charset=UTF-8");
		try{
			String member_id = request.getParameter("memberId");;
			String pwd = request.getParameter("pwd2");;
			String name = request.getParameter("name");
			String gender = request.getParameter("gender");
			String zipcode = request.getParameter("zipCode");
			String addr1 = request.getParameter("addr1");
			String addr2 = request.getParameter("addr2");


			MemberVO member = new MemberVO();
			
			member.setMember_id(member_id);
			member.setPwd(pwd);
			member.setName(name);
			member.setGender(gender);
			member.setZipcode(zipcode);
			member.setAddr1(addr1);
			member.setAddr2(addr2);
			
			MemberSQL sql = new MemberSQL();
			
			int success = sql.memberInsert(member);
			
			if(success > 0){
				System.out.println("MemberInsertController");
				response.sendRedirect("main.do");
			}
		}catch(Exception e){  
			e.printStackTrace();
		}
	}


} //class 