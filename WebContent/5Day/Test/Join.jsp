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
	<form action="Login.jsp" method="post">
	    <table border="1">
	        <tr>
	            <td colspan="2" style="text-align: center;">회원가입</td>
	        </tr>
	        <tr>
	            <td>아이디</td>
	            <td><input type="text" name="id"></td>
	        </tr>
	        <tr>
	            <td>비밀번호</td>
	            <td><input type="password" name="pw"></td>
	        </tr>
	        <tr>
	            <td>비밀번호 재확인</td>
	            <td><input type="password" name="PwR"></td>
	        </tr>
	        <tr>
	            <td>이름</td>
	            <td><input type="text" name="name"></td>
	        </tr>
	        <tr>
	            <td>나이</td>
	            <td><input type="text" name="age"></td>
	        </tr>
	        <tr>
	            <td colspan="2"><input type="submit" value="가입하기"></td>
	        </tr>
	    </table>
	</form>
</body>
</html>