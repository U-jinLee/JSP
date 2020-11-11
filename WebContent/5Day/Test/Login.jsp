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
Connection conn = null;
request.setCharacterEncoding("UTF-8");
//사용자가 입력한 값을 ID변수에 저장
String id = request.getParameter("id");
String pw = request.getParameter("pw");
String name = request.getParameter("name");
// int age = Integer.parseInt(request.getParameter("age"));
//1. 드라이버 이름 및 접속할 jdbc url 설정
String driver = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/db?serverTimezone=Asia/Seoul";
String user = "root";
String password = "1234";

//jdbc 드라이버 로드
boolean connect = false;
PreparedStatement pstmt =null;
String sql ="insert into member(id,pw,name,age) values(?,?,?,?)"; 
String sql2 ="select * from member";
ResultSet rs = null;

try{
Class.forName(driver);
conn = DriverManager.getConnection(url, user, password);
pstmt = conn.prepareStatement(sql2);

rs = pstmt.executeQuery();

/* pstmt.setString(1, id);
pstmt.setString(2, pw);
pstmt.setString(3, name);
pstmt.setInt(4, age); 
pstmt.executeUpdate(); */

connect = true;
} catch(Exception e){
	e.printStackTrace();
} finally{
}
%>
<%while(rs.next()){%>
아이디: <%=rs.getString("id") %> <br>
비밀번호: <%=rs.getString("pw") %> <br>
이름: <%=rs.getString("name") %> <br>
나이: <%=rs.getInt("age") %> <br>
가입날짜: <%=rs.getDate("joinDate") %> <br>	
<%} %>
</body>
</html>