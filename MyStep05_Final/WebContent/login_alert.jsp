<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/login_alert.jsp</title>
</head>
<body>
	alert("Login is required to access this page");
	location.href="${pageContext.request.contextPath }/users/loginform.jsp"
</body>
</html>