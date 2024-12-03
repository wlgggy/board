<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
String userId = request.getParameter("id");
if (userId == null) {
	out.print("로그인 정보가 없는데요");
} else {
	session.setAttribute("id", userId);
	response.sendRedirect("main.jsp");
}
%>
<%-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>
		ID:
		<%= request.getParameter("id") %></h3>
</body>
</html> --%>