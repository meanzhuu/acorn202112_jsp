<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id=(String)session.getAttribute("id");
	if(id==null){//if not logged in
		String cPath=request.getContextPath();
		response.sendRedirect(cPath+"/login_alert.jsp");
		
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/private/study.jsp</title>
</head>
<body>
	<h1>Study page</h1>
<p><%=id %>, let's study hard!</p>
<a href="${pageContext.request.contextPath }/">Go back to index page</a>

</body>
</html>