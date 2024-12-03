<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
request.setCharacterEncoding("utf-8");

String userId = request.getParameter("id");
String title = request.getParameter("title");
String content = request.getParameter("content");

// String sql = "insert into board(seq, id, title, content) values(?,?,?)";

String sql = "insert into board(id, title, content) values(?, ?, ?)";
// sql += "('" + userId + "', '" + title + "', '" + content + "')";

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","1234");

// Statement stmt = conn.createStatement();


PreparedStatement stmt = conn.prepareStatement(sql);
stmt.setString(1, userId);
stmt.setString(2, title);
stmt.setString(3, content);
 
// int count = stmt.executeUpdate(sql);

int count = stmt.executeUpdate();

if (count == 1) {
	response.sendRedirect("main.jsp");
}else{
	out.print("다시 쓰셈");
}

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>