<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test/delete.jsp</title>
</head>
<body>
<%
session.removeAttribute("nick");
//session.invalidate(); reset session- delete all datas
%>


</body>
</html>