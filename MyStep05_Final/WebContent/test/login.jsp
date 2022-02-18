<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id=request.getParameter("id");
	String pwd=request.getParameter("pwd");
	String isSave=request.getParameter("isSave");
	
	if(isSave !=null){
		Cookie cook1=new Cookie("savedId", id);
		Cookie cook2=new Cookie("savedPwd", pwd);
		cook1.setMaxAge(60*10);
		cook2.setMaxAge(60*10);
		response.addCookie(cook1);
		response.addCookie(cook2);
	}else{
		Cookie cook1=new Cookie("savedID", "");
		Cookie cook2=new Cookie("savedPwd", "");
		cook1.setMaxAge(0);
		cook2.setMaxAge(0);
		response.addCookie(cook1);
		response.addCookie(cook2);
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test/login.jsp</title>
</head>
<body>

</body>
</html>