<%@page import="net.BSS.action.BSSAction"%>
<%@ page import="java.util.*" %>
<%@ page import="net.BSS.db.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
ArrayList<BSSbean> boardList  =(ArrayList<BSSbean>)request.getAttribute("BSSlist");
System.out.println("boardList"+boardList);
%>
</head>
<body>
<table border="1">
	<tr>
		<td>번호</td><td>제목</td><td>작성자</td><td>작성일</td>
	</tr>
	<%
	for(int i=0;i<boardList.size();i++){
	BSSbean bss = (BSSbean)boardList.get(i);
	%>		
		<tr>
			<td><%=bss.getC_num() %></td><td><a href="BSSDetailAction.bss?c_num=<%=bss.getC_num()%>"><%=bss.getTitle() %></td></a><td><%=bss.getWriter() %></td><td><%=bss.getW_date() %></td>
		</tr>
	<%}
	%>
</table>
</body>
</html>