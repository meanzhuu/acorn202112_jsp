<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test/fetch_test2.jsp</title>
</head>
<body>
	<a href="get_msg3.jsp">Request</a>
	<input type="text" id="inputMsg" placeholder="Enter messages..">
	
	<button id="sendBtn">Get Send</button>
	<button id="sendBtn2">Post Send</button>
	<button id="sendBtn3">Gura</button>
	<script src="${pageContext.request.contextPath }/js/gura_util.js"></script>
	<script>
		document.querySelector("#sendBtn").addEventListener("click",function(){
			fetch("get_msg3.jsp?msg=hello")
			.then(function(response){
				return response.text();
			}).then(function(data){
				console.log(data);
			});
		});
		
		
		document.querySelector("#sendBtn2").addEventListner("cick", function(){
			let msg=document.querySelector("#inputMsg").value;
			fetch("get_msg3.jsp",{
				method:"post",
				headers:{"Content-Type":"application/x-www-form-urlencoded; charset=utf-8"}
				body: "msg="+msg			
			}).then(function(res){
				return res.text();
			}).then(function(data){
				console.log(data);
			});
		});
		document.querySelector("#sendBtn3").addEventListener("click",function(){
			let msg=document.querySelector("#inputMsg").value;
			ajaxPromise("get_msg3.jsp", "post")
			});
		});
	</script>
	
</body>
</html>