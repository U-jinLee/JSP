<%@page import="net.member.action.MemberListAction"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="net.member.db.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
ArrayList<Memberbean> boardList=(ArrayList<Memberbean>)request.getAttribute("memberlist");
System.out.println("boardList="+boardList);
%>

</head>
<body>
<table border="1">
<tr>
<td colspan="4">회원명단 리스트</td>
</tr>
<tr>
<td>이름</td><td>생일</td><td>성별</td><td>번호</td>
</tr>
<!-- for 시작 -->

<%
for(int i=0;i<boardList.size();i++){
	Memberbean member = (Memberbean)boardList.get(i);
%>
<tr>
<td><%= member.getName() %></td><td><%= member.getBirthDate() %></td><td><%= member.getGender() %></td><td><%= member.getTel() %></td>
</tr>
<%}%>
<!-- for 종료 -->

</table>
</body>
</html>