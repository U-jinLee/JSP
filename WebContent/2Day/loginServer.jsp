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
	//한글깨짐방지
	request.setCharacterEncoding("utf-8");
	String stuNo = request.getParameter("no");
	// 형변환 방식 int no= Integer.parseInt(request.getParameter("no"));
	String stuName = request.getParameter("name");
	String stuGrade = request.getParameter("grade");
	String subject = request.getParameter("choose");
	
	
	//client서 server로 주는것 request
	//server서 client주는것 response
%>

<table id="out" border="1">
	<tr><td colspan="2"><h1>학생정보</h1></td></tr>
	<tr><td>학번</td><td><%=stuNo %></td></tr>
	<tr><td>이름</td><td><%=stuName %></td></tr>
	<tr><td>학년</td><td><%=stuGrade %></td></tr>
	<tr><td>선택과목</td><td><%=subject %></td></tr>
</table>

</body>
</html>