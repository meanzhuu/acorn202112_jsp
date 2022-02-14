<%@page import="test.users.dto.UsersDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String id=(String)session.getAttribute("id");
String pw=request.getParameter("pw");
String newPw=request.getParameter("newPw");

UsersDto dto=new UsersDto();
dto.setId(id);
dto.setPw(pw);
dto.setNewPw(newPw);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/private/pw_update.jsp</title>
</head>
<body>

</body>
</html>