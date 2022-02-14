<%@page import="test.users.dto.UsersDto"%>
<%@page import="test.users.dao.UsersDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
		
	String id=request.getParameter("id");
	String pw=request.getParameter("pw");
	String email=request.getParameter("email");
	
	UsersDto dto=new UsersDto();
	dto.setId(id);
	dto.setPw(pw);
	dto.setEmail(email);
	
	boolean isSuccess=UsersDao.getInstance().insert(dto);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/signup.jsp</title>
</head>
<body>
	<h1>alert</h1>
	<%if(isSuccess){%>
	<p>
	<strong><%=id %></strong> account has been created.
	<a href="loginform.jsp">Go to login page</a>
	</p>
	<%}else{ %>
	<p>Failed to create an account.
	<a href="signup_form.jsp">Try again</a>
	</p>
	<%}%>
	
</body>
</html>