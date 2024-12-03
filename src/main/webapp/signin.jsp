<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%
request.setCharacterEncoding("utf-8");

String userId = request.getParameter("id");
String userPassword = request.getParameter("password");
String userName = request.getParameter("name");

// String sql = "insert into users(id, password, name) values";
// sql += "('" + userId + "', '" + userPassword + "', '" + userName + "')";

String sql = "insert into users(id, password, name) values(?,?,?)";

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "1234");
// Statement stmt = conn.createStatement();

PreparedStatement stmt = conn.prepareStatement(sql);
stmt.setString(1, userId);
stmt.setString(2, userPassword);
stmt.setString(3, userName);

// int count = stmt.executeUpdate(sql);
int count = stmt.executeUpdate();

if (count == 1) {
	out.print("회원가입이 완료");
} else {
	out.print("오류발생");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body></body>
</html>