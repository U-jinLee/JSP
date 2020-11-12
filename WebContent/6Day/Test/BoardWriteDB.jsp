<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%@page import="javax.naming.*"%>
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
String title = request.getParameter("title");
String content = request.getParameter("content");
String writer = request.getParameter("writer");

Connection conn = null;
PreparedStatement pstmt = null;
try{
	String sql = "insert into bss(title,content,writer) values(?,?,?)";
	Context init = new InitialContext();
	DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/mysql");
	conn = ds.getConnection();
	
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, title);
	pstmt.setString(2, content);
	pstmt.setString(3, writer);
	pstmt.executeUpdate();
}catch(Exception e){
	e.printStackTrace();
} finally{
	if(pstmt != null){
		try{			
			pstmt.close();			
		} catch(Exception e){
			e.printStackTrace();
		}
	}
	if(conn != null){
		try{			
			conn.close();
		} catch(Exception e){
			e.printStackTrace();
		}
	}
}
%>
</body>
</html>