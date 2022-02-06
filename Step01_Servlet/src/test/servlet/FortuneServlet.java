package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/fortune")
public class FortuneServlet extends HttpServlet{

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<String> list=new ArrayList<>();
		list.add("a");
		list.add("b");
		list.add("c");
		
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");

		PrintWriter pw = resp.getWriter();
		pw.println("<!doctype html>");
		pw.println("<html>");
		pw.println("<head>");
		pw.println("<meta charset='utf-8'>");
		pw.println("<title>today's fortune</title>");
		pw.println("</head>");
		pw.println("<body>");
		
		Random num=new Random();
		int ranNum=num.nextInt(2);
		pw.println("<p>" +list.get(ranNum)+"</p>");
		pw.println("</body>");
		pw.println("</html>");
		pw.close();
	}
}
