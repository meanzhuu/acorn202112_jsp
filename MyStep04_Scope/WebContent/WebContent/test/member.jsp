<%@page import="test.member.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test/member.jsp</title>
</head>
<body>
	<h1>Member Information</h1>
	<%MemberDto dto=(MemberDto)request.getAttribute("dto"); %>
	<p>Number: <strong><%=dto.getNum() %></strong></p>
	<p>Name: <strong><%=dto.getName() %></strong></p>
	<p>Address: <strong><%=dto.getAddr() %></strong></p>
</body>
</html>