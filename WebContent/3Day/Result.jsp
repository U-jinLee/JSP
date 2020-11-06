<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>session result</h1>
<%=session.getAttribute("id") %>
<%=session.getAttribute("pw") %>
<h1>Application result</h1>
<%=application.getAttribute("email") %>
<%=application.getAttribute("addr") %>
<%=application.getAttribute("tel") %>
</body>
</html>