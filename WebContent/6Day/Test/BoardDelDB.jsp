<%@page import="java.io.PrintWriter"%>
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
	String sql = "delete from bss where c_num =?"; 
	Context init = new InitialContext();
	DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/mysql");
	conn = ds.getConnection();
	
	pstmt = conn.prepareStatement(sql);
	
	pstmt.setInt(1, cnum);
	pstmt.executeUpdate();
	
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('글 삭제가 완료됐습니다.')");
	script.println("history.back()");
	script.println("</script>");
	
} catch(Exception e){
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