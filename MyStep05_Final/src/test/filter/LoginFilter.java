package test.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

/*
 *  요청을 가로채서 중간에 원하는 작업을 할 수 있는 필터 만들기
 * 
 * 1. javax.servlet.Filter interface
 * 2. 
 */

public class LoginFilter implements Filter{

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("Running LoginFilter...");
		// TODO Auto-generated method stub
		HttpServletRequest req=(HttpServletRequest)request;
		String query=req.getQueryString();
		String
		
		res.sendRedirect(cPath+" /login_alret.jsp");
		
		
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		
	}
	
	
	
	
}
