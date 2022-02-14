<%@page import="test.users.dao.UsersDao"%>
<%@page import="test.users.dto.UsersDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String id = (String) session.getAttribute("id");
UsersDto dto = UsersDao.getInstance().getData(id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/private/info.jsp</title>
</head>
<body>
	<div class="container">
		<h1>Member Information</h1>
		<table>
			<tr>
				<th>ID</th>
				<td><%=dto.getId()%></td>
			</tr>
			<tr>
				<th>Password</th>
				<td><a href="pw_updateform.jsp">수정하기</a></td>
			</tr>
			<tr>
				<th>이메일</th>
				<td><%=dto.getEmail()%></td>
			</tr>
			<tr>
				<th>가입일</th>
				<td><%=dto.getRegdate()%></td>
			</tr>

		</table>
		<a href="updateform.jsp">개인정보 수정</a> <a href="delete.jsp">탈퇴</a>
	</div>
</body>
</html>