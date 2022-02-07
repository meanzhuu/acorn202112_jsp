package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/send")
public class SendServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//	<input type="text" name="msg" placeholder="enter texts here">
		//	input elements written above	
		// extract texts with the name of msg
		
		String a= req.getParameter("msg");
		System.out.println(a);
		String ab= req.getParameter("msg2");
		System.out.println(ab);
		req.setCharacterEncoding("utf-8");
		
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
		pw.println("<h1>"+a+ab+"</h1>");
		pw.println("</body>");
		pw.println("</html>");
		pw.close();
	}
}
