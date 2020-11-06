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

	String ids = request.getParameter("id");	
	String password = request.getParameter("pw");
	
	String comid="abcd";
	String compw="z1234";
	
	// 내가 입력한 id와 비교하고자하는 id가 같고,
	// 내가 입력한 password와 비교하고자하는 password가 같으면
	// 로그인에 성공하셨습니다. 라는 문자열을 웹페이지에 출력
	// 그렇지 않으면 
	// 로그인에 실패하셨습니다.라는 문자열을 웹페이지에 출력.
	// String타입만 equals쓰고 다른 경우는 == 이 기호 사용

	if(ids.equals(comid) && password.equals(compw)){%>
	<h1>로그인에 성공하셨습니다.</h1>
	<h1>당신의 아이디는 <%=ids %>이며,</h1>
	<h1>비밀번호는 <%=password %>입니다.</h1>
	<%}else{%>
		<h1>로그인에 실패하셨습니다.</h1>
	<% }%>

<!-- 본인 풀이 
<% if(ids.equals("abcd") && password.equals("z1234")){%>
	<h1>로그인에 성공하셨습니다.</h1>
	
	
	<%}else{%>
	<h1>로그인에 실패하셨습니다.</h1>
	<%}%>
-->




</body>
</html>