<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/signup_form.jsp</title>
</head>
<body>
	<div class="container">
		<h1>Sign-up Form</h1>
		<form action="signup.jsp" method="post">
			<div>
				<label for="id">ID</label> <input type="text" name="id" id="id" />
			</div>
			<div>
				<label for="pw">PASSWORD</label> <input type="password" name="pw"
					id="pw" />
			</div>
			<label for="email">Email</label> <input type="email" name="email"
				id="email" />
		</form>

	</div>
</body>
</html>