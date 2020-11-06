<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<%
String id= request.getParameter("id");
String pw = request.getParameter("pw");
session. setAttribute("sid", id);
session. setAttribute("spw", pw);
%>
<form action="BSS.jsp" method="post">
	<table border="1">
	    <tr>
	        <td colspan="2">로그인</td>
	    </tr>
	    <tr>
	        <td>아이디</td>
	        <td><input type="text" name="lid" value=<%=id%>></td>
	    </tr>
	    <tr>
	        <td>비밀번호</td>
	        <td><input type="password" name="lpw" value=<%=pw%>></td>
	    </tr>
	    <tr>
	        <td colspan="2">
	            <input type="submit" value="로그인">
	        </td>
	    </tr>
	</table>    
</form>
</body>
</html>