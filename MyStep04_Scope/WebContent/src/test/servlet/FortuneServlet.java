package test.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/fortune")
public class FortuneServlet extends  HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String dh="Go to east to meet a noble";
		
		req.setAttribute("fortuneToday", dh);
		
		/*
		 * RequestDispatcher
		 * can be obtained through HttpServletRequest object's .getRequestDispatcher method*
		 * 
		 * 
		 * */
		
		RequestDispatcher rd=req.getRequestDispatcher("/test/fortune.jsp");
		
		//leave designated jsp page response
		rd.forward(req, resp);
	}
}
