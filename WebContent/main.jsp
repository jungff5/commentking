<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Comment King</title>
</head>
<body>
<ul>
	<li><a href="main.jsp">메인</a></li>
	<li><a href="bbs.jsp">게시판</a></li>
</ul>
	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
	%>
	<%
		if(userID == null)	{
	%>
<a href="#">접속하기</a>
<ul>
	<li><a href="login.jsp">로그인</a></li>
	<li><a href="join.jsp">회원가입</a></li>
</ul>
	<%
		} else {
	%>
<ul>
	<li><a href="logoutAction.jsp">로그아웃</a></li>
</ul>
	<%
		}
	%>
<div class="container">
	<div class="jumbotron">
		<div class="container">
			<h1>코멘트킹</h1>
			<p>여러분의 코멘트를 달아주세요.</p>
			<p><a class="btn btn-primary btn-pull" href="#" role="button">자세히 알아보기</a></p>
		</div>
	</div>
</div>

<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>
</body>
</html>