package test.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import test.member.dto.MemberDto;

@WebServlet("/member")
public class MemberServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//assume business logic that gets a member's information
		MemberDto dto=new MemberDto();
		dto.setNum(1);
		dto.setName("kim");
		dto.setAddr("noryang");
		
		//put a run result of logic data model to request scope
		req.setAttribute("dto", dto);
		//forward to jsp page for response
		RequestDispatcher rd=req.getRequestDispatcher("/test/member.jsp");
		rd.forward(req,resp);
	
	}
}
