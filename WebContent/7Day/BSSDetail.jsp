
<%@page import="net.BSS.db.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%
	BSSbean member= (BSSbean)request.getAttribute("BSSDetail");
	System.out.println(member);
%>

<meta charset="UTF-8">
<script type="text/javascript">

</script>
<title>Insert title here</title>
</head>
<body>
<table border= "1">
	<tr>
		<td>작성자</td>
		<td><%=member.getWriter() %></td>
	</tr>
	<tr>
		<td>콘텐츠</td>
		<td><textarea rows="10" cols="50" readonly="readonly"><%=member.getContent() %></textarea></td>
	</tr>
	
</table>
</body>
</html>