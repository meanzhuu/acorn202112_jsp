<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/signup_form.jsp</title>
<jsp:include page="/include/resource.jsp"></jsp:include>
</head>
<body>
<div class="container">
		<h1>Sign-up Form</h1>
		<form action="signup.jsp" method="post"> <!--novalidate -email chrome automatic feature-->
			<div class="mb-2">
				<label class="control-label" for="id">ID</label> 
				<input class="form-control is-valid" type="text" name="id" id="id" />
				<small class="form-text text-muted">Start with lower-class letters.</small>
				<div class="invalid-feedback">Invalid Id</div>
				<div class="valid-feedback">Good</div>
			</div>
			<div class="mb-2">
				<label for="pw">PASSWORD</label> <input type="password" name="pwd" id="pwd" />
			</div>
			<div class="mb-2">
				<label for="email">EMAIL</label> <input type="email" name="email" id="email" />
			</div>
			<button class="btn btn-outline-primary" type="submit">Create an account</button>



<%@page import="test.users.dao.UsersDao"%>
<%@page import="test.users.dto.UsersDto"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   // inputId 라는 파라미터명으로 전달되는 문자열 읽어오기
   String inputId=request.getParameter("inputId");
   UsersDto dto=UsersDao.getInstance().getData(inputId);   
%>    
<%if(dto==null){%>
   {"isExist":false}
<%}else{%>
   {"isExist":true}
<%}%>



c


 }
</body>
</html>
