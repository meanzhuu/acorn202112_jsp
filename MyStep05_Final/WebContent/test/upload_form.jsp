<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test/upload_form.jsp</title>
</head>
<body>
	<form action="upload.jsp" method="post" enctype="multipart/form-data">
		<input type="text" name="msg" placeholder="enter messages.." /> <br />
		<input type="file" name="myFile" /> <br />
		<button type="submit">Upload</button>
	</form>
	<p>
	Size of the selected file: <strong id="fileSize"></strong></p>
	
	<script>
	//input type= reference of file element
	let myFile=document.querySelector("#myFile");
	myFile.addEventListner("change",function(){
		let file=myFile.files[0];
		document.querySelector("#fileSize").innerText=file.size;
	});
	</script>

</body>
</html>