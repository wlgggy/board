<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String userId = (String) session.getAttribute("id");
if (userId == null) {
	out.print("로그인정보없다고");
} else {
	out.print("메인페이지임");
	session.setAttribute("id", userId);
}
%>
<%-- <%
String strcnt = (String) application.getAttribute("counter");
int count = (strcnt == null) ? 0 : Integer.valueOf(strcnt);
out.print("방문자수: "+ count);
application.setAttribute("counter", String.valueOf(++count));
%> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>