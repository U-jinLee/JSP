<%@page import= "java.sql.*" %>
<%@page import= "javax.sql.*" %>
<%@page import= "javax.naming.*" %>

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
String cnum = request.getParameter("cnum");
Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;
String sql = "select writer from bss where c_num=?";
try{
Context init = new InitialContext();
DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/mysql");
conn = ds.getConnection();
pstmt = conn.prepareStatement(sql);
pstmt.setString(1, cnum);
rs = pstmt.executeQuery();
} catch(Exception e) {
	e.printStackTrace();
} finally{
	
}
%>
<form action="BoardModifyDB.jsp" method="post">
<table border="2">
<tr>
<td colspan="2">게시판 글수정</td>
</tr>
<tr>
<td>글번호</td><td><input type="text" name="cnum" value=<%= cnum %>></td>
</tr>
<tr>
<td>제목</td><td><input type="text" name="title"></td>
</tr>
<tr>
<td>내용</td><td><input type="text" name="content">
</tr>
<tr>
<td>작성자</td>
<%while(rs.next()){%>
<td><%= rs.getString(1) %></td>
<%}%>
</tr>
<tr>
<td colspan="2"><input type="submit" value="글 수정"></td>
</tr>
</table>
</form>
</body>
</html>