<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="bbs.Bbs" %>
<%@ page import="bbs.BbsDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%	
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
		if (userID == null) {
			PrintWriter script = response.getWriter();
			script.println("<script");
			script.println("alert('�α����� �ϼ���')");
			script.println("location.href = 'login.jsp'");
			script.println("</script>");
		}
		int bbsID = 0;
		if (request.getParameter("bbsID") != null) {
			bbsID = Integer.parseInt(request.getParameter("bbsID"));
		}
		if (bbsID == 0) {
			PrintWriter script = response.getWriter();
			script.println("<script");
			script.println("alert('��ȿ���� ���� ���Դϴ�')");
			script.println("location.href = 'bbs.jsp'");
			script.println("</script>");
		}
		Bbs bbs = new BbsDAO().getBbs(bbsID);
		if (!userID.equals(bbs.getUserID())) {
			PrintWriter script = response.getWriter();
			script.println("<script");
			script.println("alert('������ �����ϴ�')");
			script.println("location.href = 'bbs.jsp'");
			script.println("</script>");
		}
	%>
		<ul class="dropdown-menu">
			<li><a href="logoutAction.jsp">�α׾ƿ�</a></li>
		</ul>
	<div class="container">
		<div class="row">
			<form method="post" action="updateAction.jsp?bbsID=<%= bbsID %>">
				<table class="table table-striped"
					style="text-align: center; border: 1px solid #dddddd">
					<thead>
						<tr>
							<th colspan="3"
								style="background-color: #eeeeee; text-align: center;">�Խ��� �� ���� ��� </th>
						</tr>
					</thead>
					<tbody>
					<tr>
						<td><input type="text" placeholder="�� ����" name="bbsTitle" maxlength="50" value="<%= bbs.getBbsTitle() %>"></td>
					</tr>
					<tr>
						<td><textarea placeholder="�� ����" name="bbsContent" maxlength="2048" style="height: 350px"><%= bbs.getBbsContent() %></textarea></td>
					</tr>
				</tbody>
				<input type="submit" value="�۾���" >
						<tr>
							<td>�ۼ���</td>	
							<td colspan="2"><%= bbs.getBbsDate().substring(0, 11) + bbs.getBbsDate().substring(11, 13) + "��" + bbs.getBbsDate().substring(14, 16) + "��"%></td>
						</tr>
						<tr>
							<td>����</td>	
							<td colspan="2" style="min-height: 200px; text-align: left;"><%= bbs.getBbsContent() %></td>
						</tr>
					</tbody>
				</table>	
				<input type="submit" class="btn btn-primary pull-right" value="�ۼ���"> 
			</form>
						<a href="update.jsp?bbsID=<%= bbsID %>" class="btn btn-primary">����</a>
						<a href="delete.jsp?bbsID=<%= bbsID %>" class="btn btn-primary">����</a>
		</div>
	</div>
</body>
</html>