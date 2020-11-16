<%@page import="net.member.db.*"%>
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
	Memberbean member= (Memberbean)request.getAttribute("memberDetail");
	System.out.println("member_detail.jsp="+member);
%>
<table>
<tr>
	<td>아이디</td>
	<td><input type="text" name="id" value="<%= member.getId() %>"></td>	
</tr>
<tr>
	<td>비밀번호</td>
	<td><input type="text" name="pw" value="<%= member.getPw() %>"></td>	
</tr>
<tr>
	<td>이름</td>
	<td><input type="text" name="name" value="<%= member.getName() %>"></td>	
</tr>
<tr>
	<td>생년월일</td>
	<td><input type="text" name="BirthDate" value="<%= member.getBirthDate() %>"></td>	
</tr>
<tr>
	<td>성별</td>
	<td>
		<input type="radio" value="m" name="gender">남
		<input type="radio" value="w" name="gender">여
	</td>	
</tr>
<tr>
	<td>폰번호</td>
	<td><input type="text" name="tel" value="<%= member.getTel()%>"></td>	
</tr>
<tr>
<td colspan="2"><input type="submit" value="회원정보수정"></td>
</tr>
</table>
</body>
</html>