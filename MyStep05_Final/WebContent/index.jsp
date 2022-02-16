
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% String id=(String)session.getAttribute("id");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/index.jsp</title>
<jsp:include page="/include/resource.jsp"></jsp:include>
</head>
<body>
<jsp:include page="/include/navbar.jsp"></jsp:include>
	<div class="container">
	<%if(id!=null) {%>
		<p>
			<a href="users/private/info.jsp"></a> Logged in
			<a href="users/logout.jsp">Log out</a> 
		</p>
	<%}else {%>
		<a href="users/loginform.jsp">Log in</a>
	<%} %>
	<h1>Index Page</h1>
	<ul>	
		<li><a href="users/signup_form.jsp">Sign up</a>
		<li><a href="private/study.jsp">Exclusive Page for Study</a>
		<li><a href="private/study.jsp">Exclusive Page for Games</a>
		<li><a href="test/upload_form.jsp">File Upload Test</a></li>
		</ul>
	</div>
</body>
</html>