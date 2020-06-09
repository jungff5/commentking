<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>JSP 웹 게시판</title>
</head>
<body>
	<form method="post" action="joinAction.jsp">
		<h3 style="text-align: center;">회원가입 화면</h3>
		<div>
			<input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20">
		</div>
		<div>	
			<input type="password" class="form-control" placeholder="패스워드" name="userPassword" maxlength="20">
		</div>
		<div>
			<input type="text" class="form-control" placeholder="이름" name="userName" maxlength="20">
		</div>
		<input type="submit" class="btn btn-primary form-control" value="회원가입">
	</form>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="js/bootstrap.js"></script>	
</body>
</html>