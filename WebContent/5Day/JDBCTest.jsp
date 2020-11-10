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

//1. 드라이버 이름 및 접속할 jdbc url 설정
String driver = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/db?serverTimezone=Asia/Seoul";
String user = "root";
String password = "1234";

//jdbc 드라이버 로드
boolean connect = false;
try{
Class.forName(driver);
conn = DriverManager.getConnection(url, user, password);
connect = true;
} catch(Exception e){
	e.printStackTrace();
} finally{
	
}
%>
<%
//
if(connect){%>
	<h2>연결성공</h2>
<%}
else{%>
<h2>연결실패</h2>
	<%}
%>
</body>
</html>