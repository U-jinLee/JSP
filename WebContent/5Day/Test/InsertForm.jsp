<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="OutputForm.jsp" method="get">
	<table border="1">
		<tr>
		<td>아이디</td>
		<td><input type="text" name="id"></td>
		</tr>
		<tr>
		<td>비밀번호</td>
		<td><input type="text" name="pw"></td>
		</tr>
		<tr>
		<td>이름</td>
		<td><input type="text" name="name"></td>
		</tr>
		<tr>
		<td>성별</td>
		<td>남<input type="radio" value="남" name="gender" checked="checked">
		여<input type="radio" value="여" name="gender"></td>
		</tr>
		<tr>
		<td>이메일</td>
		<td><input type="email" name="email"></td>
		</tr>
		<tr>
		<td colspan="2">
		<input type="submit" value="가입">
		<input type="reset" value="다시 작성">
		</td>
		</tr>
	</table>
</form>
</body>
</html>