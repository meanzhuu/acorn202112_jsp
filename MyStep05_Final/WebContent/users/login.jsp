<%@page import="java.net.URLEncoder"%>
<%@page import="test.users.dao.UsersDao"%>
<%@page import="test.users.dto.UsersDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String url=request.getParameter("url");
	String encodedUrl=URLEncoder.encode(url);


	String id=request.getParameter("id");
	String pw=request.getParameter("pw");
	
	UsersDto dto=new UsersDto();
	dto.setId(id);
	dto.setPw(pw);
	
	boolean isValid=UsersDao.getInstance().isValid(dto);
	
	if (isValid){
		session.setAttribute("id", id);
		
	}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/login.jsp</title>
</head>
<body>
	<%if(isValid){%>		
	<p>
	<strong><%=id %></strong> has logged in.
	
	<%} else{%>
	<p>Invalid Id or Password</p> 
	<a href="${pageContext.request.contextPath }/users/loginform.jsp?url=<%=encodedUrl %>"> Try again </a>
	<%} %>
</body>
</html>