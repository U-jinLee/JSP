<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>

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
Connection conn =null;
PreparedStatement pstmt= null;
ResultSet rs = null;
try{
	String sql ="select * from bss";
	
	Context init = new InitialContext();
	DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/mysql");
	conn = ds.getConnection();
	
	pstmt = conn.prepareStatement(sql);
	rs = pstmt.executeQuery();
%> 
<table border="1">
<tr>
<td>글번호</td><td>제목</td><td>내용</td><td>작성자</td><td>작성일</td>
</tr>
<%
while(rs.next()){%>
<tr>
	<td><%=rs.getString("c_num")%></td>
	<td><a href="BoardModify.jsp?cnum=<%=rs.getString("c_num")%>"><%=rs.getString("title")%></a></td>
	<td><%=rs.getString("content")%></td>
	<td><%=rs.getString("writer")%></td>
	<td><%=rs.getString("w_date")%></td>
</tr>
<%}%>
<tr>
<td colspan="5"><a href="BoardWrite.jsp"><button >글쓰기</button></a> <a href="BoardDel.jsp"><input type="button" value="글삭제"></a></td>
</tr>
</table>
<%
}catch(Exception e){
	e.printStackTrace();
}finally {
	if(conn!=null){try{rs.close();}catch(Exception e){e.printStackTrace();}}
	if(conn!=null){try{pstmt.close();}catch(Exception e){e.printStackTrace();}}
	if(conn!=null){try{conn.close();}catch(Exception e){e.printStackTrace();}}
}
%>
</body>
</html>