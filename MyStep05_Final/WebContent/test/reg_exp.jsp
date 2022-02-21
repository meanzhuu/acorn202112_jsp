<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>reg_exp.jsp</title>
</head>
<body>
	<input type="text" id="msg" placeholder="Enter.."/>
	<button id="check">Verify</button>
	<button id="check2">Verify</button>
	<p>No special characters accepted</p>
	<script>
		document.querySelector("#check").addEventListener("click",function(){
			let str=document.querySelector("#msg").value;
			let reg=/[\W]/; //or [^\w], [^a-zA-Z0-0]
			
			let result=reg.test(str);
			if(result){
				alert("no special characters accepted");
			}
			
		})
		document.querySelector("#check2").addEventListener("click",function(){
			let str=document.querySelector("#msg").value;
			let reg=/^[a-z].{4,9}$/; 
			let result=reg.test(str);
			if(!result){
				alert("Must be 5-10 letters starting with a lower-case letter");
			}
			
		})
			
		
	</script>
</body>
</html>