<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="js/text2Sever.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 다음은 아이디와 패스워드를 입력하여 입력한 값의 아이디가 "abcd"이고 패스워드가
"z1234"이면, "로그인에 성공하셨습니다."를 표시하고 
그렇지 않으면 "로그인에 실패하셨습니다."를 표시하는 프로그램을 작성하시오 

아이디와 패스워드를 입력 받는 jsp와 처리하는 jsp 두 개의 jsp를 만들어서 처리(if문으로 처리)
-->
<form action="test2Server.jsp" method="post">
<table>
	<tr>
		<td>아이디</td>
		<td><input type="text" name="id"></td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><input type="password" name="pw"></td>
	</tr>
	<tr>
		<td colspan="2"><input type="submit" value="로그인" name="go"></td>
	</tr>	
</table>

</form>
</body>
</html>