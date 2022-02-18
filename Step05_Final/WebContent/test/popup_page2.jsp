<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test/popup_page2.jsp</title>
<style>
	body{
		background-color: yellow;
	}
</style>
</head>
<body>
<h3>팝업된 페이지 입니다.</h3>
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam eos eius nemo ducimus quam totam dignissimos qui aperiam distinctio maxime dolore maiores optio ad. Quaerat itaque quod architecto sint voluptatum.</p>
<form action="popup_save.jsp" method="post">
	<label>
		<input type="checkbox" name="canPopup" value="no" />
		1 분 동안 팝업 띄우지 않기
	</label>
	<button type="submit">닫기</button>
</form>
<input type="text" id="msg" placeholder="type messages for window.opener"/>
<button id= "sendBtn">send</button>
<script>
	document.querySelector("#sendBtn").addEventListner("click", function(){
		let msg=document.querySelector("#msg").value;
		window.opener.sendMsg(msg);
	});
</script>
</body>
</html>



