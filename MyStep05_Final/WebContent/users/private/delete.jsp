<%@page import="test.users.dao.UsersDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id=(String)session.getAttribute("id");
	UsersDao.getInstance().delete(id);
	session.removeAttribute("id");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/private/delete.jsp</title>
</head>
<body>
<div class="container">
	<h1>Alert</h1>
	<p>
	<strong><%=id %> account has been successfully deleted.</strong>
	<a href="${pageContext.request.contextPath }/">Go to index page</a>
	</p>
</div>

</body>
</html>