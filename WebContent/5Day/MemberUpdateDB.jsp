<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
Connection conn = null;
PreparedStatement pstmt = null;

String pw = request.getParameter("pw");
String name = request.getParameter("name");
int age = Integer.parseInt(request.getParameter("age"));
String id = request.getParameter("id");
//1. 드라이버 이름 및 접속할 jdbc url 설정
String driver = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/db?serverTimezone=Asia/Seoul";
String user = "root";
String password = "1234";
String sql = "update member set pw=?, name=?, age=? where id=?";

//jdbc 드라이버 로드
boolean connect = false;
try{
Class.forName(driver);
conn = DriverManager.getConnection(url, user, password);
connect = true;
pstmt = conn.prepareStatement(sql);

pstmt.setString(1, pw);
pstmt.setString(2, name);
pstmt.setInt(3, age);
pstmt.setString(4, id);
pstmt.executeUpdate();

} catch(Exception e){
	e.printStackTrace();
} finally{
pstmt.close();
conn.close();
}

%>
</body>
</html>