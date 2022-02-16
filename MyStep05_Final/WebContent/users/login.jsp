<%@page import="java.net.URLEncoder"%>
<%@page import="test.users.dao.UsersDao"%>
<%@page import="test.users.dto.UsersDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	//로그인후 가야할 목적지 정보
String url = request.getParameter("url");
//로그인 실패를 대비해서 목적지 정보를 인코딩한 결과도 준비한다.
String encodedUrl = URLEncoder.encode(url);

//1. 폼 전송되는 아이디, 비밀번호 읽어오기 
String id = request.getParameter("id");
String pwd = request.getParameter("pwd");
//2. dto 에 담기 
UsersDto dto = new UsersDto();
dto.setId(id);
dto.setPwd(pwd);
//3. dao 를 이용해서 DB 에 존재하는 맞는 정보인지 확인한다. 
boolean isValid = UsersDao.getInstance().isValid(dto);
if (isValid) {
	//로그인 처리를 해준다. (로그인된 아이디를 session scope 에 저장)
	session.setAttribute("id", id);
}
//4. 응답
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/login.jsp</title>
</head>
<body>
	<div class="container">
		<h1>Alert</h1>
		<%if (isValid){%>
			<p>	<strong><%=id%></strong> has logged in. 
			<a href="<%=url%>">confirm</a>
	
		<%} else{%>
			<p>Invalid Id or Password</p>
			<a href="${pageContext.request.contextPath }/users/loginform.jsp?url=<%=encodedUrl %>">Try again </a>
		<%}%>
	
</body>
</div>
</body>
</html>