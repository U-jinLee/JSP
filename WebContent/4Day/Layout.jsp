<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel ="stylesheet" type="text/css" href="css/layout.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 전체를 감싸는 div -->
<div id = "container">
	<!-- 상단 -->
	<%@ include file="header.jsp" %>
	<div id = "header">
	로그인 | 회원가입 
	</div>
	
	<!-- 좌측 메뉴 -->
	<%@ include file="left.jsp" %>
	<div id = "left">
	신상품 <br>
	인기상품
	</div>
	<!-- 메인 -->
	<div id = "main">
	메인
	</div>
	<!-- 하단 -->
	<%@ include file="footer.jsp" %>
	<div id = "footer">
	하단
	</div>
</div>
</body>
</html>