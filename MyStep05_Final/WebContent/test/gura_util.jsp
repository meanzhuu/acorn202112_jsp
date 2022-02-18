<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test/gura_util.jsp</title>
</head>
<body>
 <h1>gura_util.js test</h1>
	<form action="send.jsp" method="post" id="myForm">
		<input type="text" name="msg" placeholder="Enter messages here.."/>
		<button type="submit" id="myBtn">submit</button>
	</form>
	<br/>
	<input type="text" name="msg" placeholder="type in here.." id="msg"/>
	<button id="myBtn2">submit</button>
	
	
	<script src="${pageContext.request.contextPath }/js/gura_util.js"></script>
	<script>
		document.querySelector("#myForm").addEventListener("submit", function(e){
			//block form submission
			e.preventDefault();
			//send submitted messages to ajax w/o page chanage
			ajaxFormPromise(this) //=ajaxFormPromise(document.querySelector("#myForm"));
			.then(function(res){
				return res.text();
			}).then(function(data){
				alert(data);
			});
		});
		
		ajaxPromise("send.jsp", "post", "msg=나야나");
		ajaxPromise("send.jsp", "post", {msg:"mee"});
		
		document.querySelector("#myBtn").addEventListener("click", function(){
			ajaxPromise("send.jsp", "post","msg=button clicked")
			
		});
		
		document.querySelector("myBtn2").addEventListener("click",function(){
			let myInput=document.querySelector("#msg");
			ajaxInputPromise("send.jsp", myInput);
		});
		
		
	</script>	
</body>
</html>