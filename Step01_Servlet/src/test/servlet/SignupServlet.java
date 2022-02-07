package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/users/signup")
public class SignupServlet extends HttpServlet {
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setCharacterEncoding("utf-8");
		String[] hobby=req.getParameterValues("hobby");
		String email=req.getParameter("email");
		String gender=req.getParameter("gender");
		String job=req.getParameter("job");
		String lunch=req.getParameter("lunch");
		String comment=req.getParameter("comment");
		
		System.out.println(email);
		System.out.println(gender);
		
		if(hobby!=null) {
			for(String tmp:hobby) {
				System.out.println(tmp);
			}
		}
		
		System.out.println(job);
		System.out.println(lunch);
		System.out.println(comment);
		
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");

		PrintWriter pw = resp.getWriter();
		pw.println("<!doctype html>");
		pw.println("<html>");
		pw.println("<head>");
		pw.println("<meta charset='utf-8'>");
		pw.println("<title> page</title>");
		pw.println("</head>");
		pw.println("<body>");
		pw.println("<p>Your account has been created </p>");
		pw.println("</body>");
		pw.println("</html>");
		pw.close();
	}
}
