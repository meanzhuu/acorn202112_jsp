<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test/fortune.jsp</title>
</head>
<body>
	<%
		String fortuneToday= (String)request.getAttribute("fortuneToday");
	%>
	<p>Daily horoscope: <strong><%=fortuneToday %></strong> </p>
	<a href="/test/fortune.jsp">Is request content gone?</a>
</body>
</html>