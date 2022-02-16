<%@page import="test.users.dto.UsersDto"%>
<%@page import="test.users.dao.UsersDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. session scope 에서 로그인된 아이디 불러오기
	String id=(String)session.getAttribute("id");
	//2. DB 에서 가입 정보를 불러온다.
	UsersDto dto=UsersDao.getInstance().getData(id);
	//3. 응답한다.
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
			<td><%=dto.getId() %></td>
		</tr>
		<tr>
			<th>Password</th>
			<td><a href="pwd_updateform.jsp">Change</a></td>
		</tr>
		<tr>
			<th>이메일</th>
			<td><%=dto.getEmail() %></td>
		</tr>
		<tr>
			<th>가입일</th>
			<td><%=dto.getRegdate() %></td>
		</tr>
	</table>
	<a href="updateform.jsp">Update personal information</a>
	<a href="javascript:deleteConfirm()">Delete my account</a>
</div>
<script>
	function deleteConfirm(){
		let isDelete=confirm("Do you want to delete your account?");
		if(isDelete){
			location.href="delete.jsp";
		}
	}
</script>
</body>
</html>



















>>>>>>> refs/heads/master
