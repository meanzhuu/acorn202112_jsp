<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test_jspl/hello.jsp</title>
</head>
<body>
	
	<c:forEach var="a" begin="0" end="5">
		<p>hi ${a }</p>
	</c:forEach>
</body>
</html>