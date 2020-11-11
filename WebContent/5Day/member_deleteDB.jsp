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
String id = request.getParameter("id");
Connection conn = null;
PreparedStatement pstmt = null;


//1. 드라이버 이름 및 접속할 jdbc url 설정
/* String driver = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/db?serverTimezone=Asia/Seoul";
String user = "root";
String password = "1234";
*/
String sql = "delete from member where id=?";

//jdbc 드라이버 로드
boolean connect = false;
try{
/* Class.forName(driver);
conn = DriverManager.getConnection(url, user, password); */
connect = true;
pstmt = conn.prepareStatement(sql);

pstmt.setString(1, id);
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