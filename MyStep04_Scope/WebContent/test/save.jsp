<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
request.setCharacterEncoding("utf-8");
String nick=request.getParameter("nick");
//save nick to HttpSession object with key value of "nick"
session.setAttribute("nick", nick);
//automaticlally delete if there is no request for 60 secs(w/o setting. 30min as default)
session.setMaxInactiveInterval(60);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test/save.jsp</title>
</head>
<body>
	<p><strong><%=nick %></strong></p>
	<p>It will be automatically deleted
	 when there is no request for 60 secs or the web browser is closed</p> 
	 
</body>
</html>