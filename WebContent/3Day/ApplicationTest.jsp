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

String email = request.getParameter("email");
String addr = request.getParameter("addr");
String tel = request.getParameter("tel");
application.setAttribute("email", email);
application.setAttribute("addr", addr);
application.setAttribute("tel", tel);
%>
<a href="Result.jsp">결과확인</a>
</body>
</html>