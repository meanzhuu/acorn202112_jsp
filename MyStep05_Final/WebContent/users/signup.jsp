<%@page import="test.users.dao.UsersDao"%>
<%@page import="test.users.dto.UsersDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. 폼 전송되는 파라미터 추출하기 
	String id=request.getParameter("id");
	String pwd=request.getParameter("pwd");
	String email=request.getParameter("email");
	//2. dto 에 담기
	UsersDto dto=new UsersDto();
	dto.setId(id);
	dto.setPwd(pwd);
	dto.setEmail(email);
	//3. db 에 저장하기
	boolean isSuccess=UsersDao.getInstance().insert(dto);
	//4. 가입 결과 응답하기 
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/signup.jsp</title>
</head>
<body>
	<h1>Alert</h1>
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



