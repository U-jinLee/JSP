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
	request.setCharacterEncoding("utf-8");
	int n = Integer.parseInt(request.getParameter("num"));	
	// system.out.println(num);
%>

<table border="1">
	<tr><td>글번호</td><td>글제목</td><td>글내용</td></tr>
	
<% 
	// 1부터 10이 될 동안 1씩 증가하도록 반복
	// for(int i=1; i<11; i++);
	// 3부터 1이 될 동안 1씩 감소하도록 반복
	// for(int i=3; i>1; i--);
for(int i=n; i>=1; i--){%>

	<tr><td><%=i %></td><td>제목<%=i %></td><td>내용 <%=i %></td></tr>
	
<% }%>
</table>
</body>
</html>