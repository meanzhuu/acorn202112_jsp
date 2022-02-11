<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test/play.jsp</title>
</head>
<body>
	<%
		String nick = (String) session.getAttribute("nick");
	%>

	<h1>play.jsp page</h1>
	<%
		if (nick == null) {
	%>
	<p>There is no saved value with key value of "nick" at the session</p>
	<%
		} else {
	%>
	<p>
		<strong><%=nick%></strong> Hey, you came to play?
	    <a href="delete.jsp">Delete any saved data at the session(log out)</a>
	</p>
	<%
		}
	%>


</body>
</html>