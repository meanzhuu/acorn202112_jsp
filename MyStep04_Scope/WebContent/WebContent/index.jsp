<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/index.jsp</title>
</head>
<body>
	<h1>Daily Horoscope</h1>
	<ul>
	<li><a href="fortune">Daily Horoscope</a></li>
	<li><a href="member">Member Information</a></li>
	<li><a href="test/fortune.jsp">Daily Horoscope Without using Servlet</a></li>
	<li><a href="test/play.jsp">Saved nicknames</a></li>
	</ul>
	<form action="test/save.jsp" method="post">
		<input type="text" name="nick" placeholder="Enter a nickname here">
		<button type="submit">Save</button>
	</form>

<!-- <form action="testsave" -->	
</body>
</html>