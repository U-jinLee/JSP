<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Test</title>
<jsp:useBean id="Test" class="test.TestBeanTest" scope="page"></jsp:useBean>
<jsp:setProperty property="*" name="Test"/>
</head>
<body>
	<table border="1">
		<tr>
		<td>아이디</td>
		<td><%=Test.getId() %></td>
		</tr>
		<tr>
		<td>비밀번호</td>
		<td><%=Test.getPw()%></td>
		</tr>
		<tr>
		<td>이름</td>
		<td><%=Test.getName()%></td>
		</tr>
		<tr>
		<td>성별</td>
		<td><%=Test.getGender()%></td>
		</tr>
		<tr>
		<td>이메일</td>
		<td><%=Test.getEmail()%></td>
		</tr>
	</table>
</body>
</html>