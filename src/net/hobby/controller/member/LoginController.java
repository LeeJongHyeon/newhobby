package net.hobby.controller.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
			String pwd = request.getParameter("pwd");;
			
			MemberSQL sql = new MemberSQL();
			int success = sql.memberSelect(member_id, pwd);
			
			HttpSession session = request.getSession();

			if(success > 0){
				System.out.println("로그인 완료");
				session.setAttribute("memberID", member_id);
				response.sendRedirect("main.do");
			} else {
				System.out.println("로그인 실패");
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('비밀번호가 일치하지 않습니다.')");
				script.println("location.href='login.do'");
				script.println("</script>");
			}
			
			
		}catch(Exception e){ 
			e.printStackTrace();
		}
	}


} //class 