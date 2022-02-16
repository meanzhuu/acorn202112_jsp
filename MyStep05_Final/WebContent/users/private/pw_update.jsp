<%@page import="test.users.dao.UsersDao"%>
<%@page import="test.users.dto.UsersDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String id = (String) session.getAttribute("id");
	String pw = request.getParameter("pw");
	String newPw = request.getParameter("newPw");

	UsersDto dto = new UsersDto();
	dto.setId(id);
	dto.setPw(pw);
	dto.setNewPw(newPw);

/*
	위의 정보를 이용해서 DB 를 업데이트하는 UsersDao 에 메소드를 만들어 보세요.
	메소드명은 updatePwd()

	작업 성공 여부를 리턴 받아서 
	성공이면 로그아웃 처리를 하고  다시 로그인 하는 링크를 출력하고

	실패이면  비밀번호가 일치하지 않는다는 메세지를 띄우고 다시 비밀번호 수정폼으로 이동할수 있도록 해 보세요.

	*/
	
	boolean isSuccess=UsersDao.getInstance().updatePw(dto);
	if (isSuccess){
		session.removeAttribute("id");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/private/pw_update.jsp</title>
</head>
<body>
<div class="container">
	<%if(isSuccess) {%>
		<p>
		Your password is successfully updated. Login again.
		<a href="${pageContext.request.contextPath }/users/loginform.jsp">Login</a>
		</p>
	<%}else{ %>
		<p>
		<a href="%{pageContext.request.contextPath}/users/private/pw_update.jsp"></a>
		</p>
	<%} %>

</div>

</body>
</html>