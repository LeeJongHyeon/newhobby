package net.hobby.controller.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.hobby.domain.MemberVO;
import net.hobby.sql.MemberSQL;

/**
 * Servlet implementation class memberIdCheckController
 */
@WebServlet("/memberIdCheck.do")
public class memberIdCheckController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("memberId", request.getParameter("memberId"));
		
		RequestDispatcher rd = request.getRequestDispatcher("memberIdCheck.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8"); 
		response.setContentType("text/html;charset=UTF-8");
		try{
			String member_id = request.getParameter("memberId");;

			MemberVO member = new MemberVO();
			
			member.setMember_id(member_id);
			
			MemberSQL sql = new MemberSQL();
			
			int count = sql.memberIdCheck(member);
			
			System.out.println(count);
			
			if(count > 0){
				RequestDispatcher rd = request.getRequestDispatcher("memberIdCheck.jsp");
				rd.forward(request, response);
			}else if(count == 0) {
				response.sendRedirect("main.do");
			}
		}catch(Exception e){ 
			e.printStackTrace();
			System.out.println("회원가입 실패");
		}
	}


}
