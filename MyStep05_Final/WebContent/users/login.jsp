<%@page import="java.net.URLEncoder"%>
<%@page import="test.users.dao.UsersDao"%>
<%@page import="test.users.dto.UsersDto"%>

    
<%
	String url=request.getParameter("url");
	String encodeUrl=URLEncoder.encode(url);


	String id=request.getParameter("id");
	String pw=request.getParameter("pw");
	
	UsersDto dto=new UsersDto();
	dto.setId(id);
	dto.setPw(pw);
	
	boolean isValid=UsersDao.getInstance().isValid(dto);
	
	if (isValid){
		session.setAttribute("id", id);
		
	}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/login.jsp</title>
</head>
<body>
	<%if(isValid){%>		
	<p>
	<strong><%=id %></strong> has logged in.
	
	<%} %>
</body>
</html>