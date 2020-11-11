<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="javax.naming.*"%>
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
int cnum = Integer.parseInt(request.getParameter("cnum")); 
Connection conn = null;
PreparedStatement pstmt = null;
try{
	String sql = "delete from Bss where c_num =?"; 
	Context init = new InitialContext();
	DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/mysql");
	conn = ds.getConnection();
	
	pstmt = conn.prepareStatement(sql);
	
	pstmt.setInt(1, cnum);
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