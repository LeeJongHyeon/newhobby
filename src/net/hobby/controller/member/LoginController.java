package net.hobby.controller.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.hobby.domain.MemberVO;
import net.hobby.sql.MemberSQL;

public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("login.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8"); 
		response.setContentType("text/html;charset=UTF-8");
		try{
			String member_id = request.getParameter("memberId");;
			String pwd = request.getParameter("pwd2");;

			MemberVO member = new MemberVO();
			
			member.setMember_id(member_id);
			member.setPwd(pwd);

			
			MemberSQL sql = new MemberSQL();
			
			int success = sql.memberInsert(member);
			
			if(success > 0){
				System.out.println("회원가입 완료");
				response.sendRedirect("main.do");
			}
		}catch(Exception e){ 
			e.printStackTrace();
			System.out.println("회원가입 실패");
		}
	}


} //class 