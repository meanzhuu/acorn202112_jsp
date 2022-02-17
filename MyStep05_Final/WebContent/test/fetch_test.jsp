<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test/fetch_test.jsp</title>
</head>
<body>
	<a href="get_msg.jsp">Redirect</a>
	<br />
	<button id="myBtn">click!</button>
	<script>
	document.querySelector("#myBtn").addEventListener("click",function(){
		fetch("get_msg.jsp")
		.then(function(response){
		/*
			 서버에서 응담한 문자열이 json형식이면 call reponse.json() for return
			 or for other formats call response.text() for return
		
		*/
			
			return response.text();
		})
		.then(function(data){
		/*
			if response.json() was called at the function above, data is either object/ array.
			for response.text(), data is string.
		
		*/
			
			console.log(data);
		});
	});
		fetch("get_msg.jsp")
		.then(function(data){
			console.log(data);
		});

</script>
</body>
</html>