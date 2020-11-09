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
	<form action="Layout.jsp?page=Login" method="post">
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
	            <td>생년월일</td>
	            <td><input type="date" name="bd"></td>
	        </tr>
	        <tr>
	            <td>성별</td>
	            <td>
	            	남<input type="radio" value="m" name="gender">
	            	여<input type="radio" value="w"name="gender">
	            </td>
	        </tr>
	        <tr>
	            <td>휴대전화 번호</td>
	            <td><input type="tel" name="tel"></td>
	        </tr>
	        <tr>
	            <td colspan="2"><input type="submit" value="가입하기"></td>
	        </tr>
	    </table>
	</form>
</body>
</html>