package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/users/login")
public class LoginServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setCharacterEncoding("utf-8");
		System.out.println("ID: "+req.getParameter("id"));
		System.out.println("PASSWORD: "+req.getParameter("pw"));
		
		PrintWriter pw = resp.getWriter();
		pw.println("<!doctype html>");
		pw.println("<html>");
		pw.println("<head>");
		pw.println("<meta charset='utf-8'>");
		pw.println("<title> page</title>");
		pw.println("</head>");
		pw.println("<body>");
		pw.println("<p>logged in</p>");
		pw.println("</body>");
		pw.println("</html>");
		pw.close();
	}
}