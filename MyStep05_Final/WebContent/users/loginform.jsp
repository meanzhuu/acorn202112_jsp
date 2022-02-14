<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String url=request.getParameter("url");
if(url==null){
	String cPath=request.getContextPath();
	cPath=request.getContextPath();
	url=cPath+"/index.jsp";
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/loginform.jsp</title>
</head>
<body>
	<div class="container">
		<h1>Login Form</h1>
		<form action="login.jsp" method="post">
			<div>
				<label for="id">ID</label> <input type="text" name="id" id="id" />

			</div>
			<div>
				<label for="pw">Password</label> <input type="password" name="pw"
					id="pw" />
			</div>
			<button type="submit">login</button>

		</form>

	</div>
</body>
</html>