<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 다음과 같은 결과가 표시되도록 입력 받는 jsp와 처리하는 jsp 
두 개의 jsp를 작성하시오(for문으로 처리) -->
<h1>반복수행할 숫자를 입력하세요.</h1>
<form action="test3Server.jsp" method="post">
<table>
	<tr>
		<td>반복할 숫자 입력 <input type="text" name="num"></td>
	</tr>
	<tr>
		<td><input type="submit" value="입력완료"></td>
	</tr>
</table>
</form>

</body>
</html>