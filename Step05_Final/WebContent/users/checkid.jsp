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