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
<div class="container">
	<div class="row">
		<form action="writeAction.jsp" method="POST">
			<table style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th colspan="2" style="text-align: center;">게시판 글쓰기 양식</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><input type="text" placeholder="글 제목" name="bbsTitle" maxlength="50"></td>
					</tr>
					<tr>
						<td><textarea placeholder="글 내용" name="bbsContent" maxlength="2048" style="height: 350px"></textarea></td>
					</tr>
				</tbody>
				<input type="submit" value="글쓰기" >
			</table>
		</form>
	</div>
</div>
</body>
</html>