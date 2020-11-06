<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" type="text/css" href="css/loginServer.css">
<script type="text/javascript" src="js/loginServer.js"></script>
<body>
<h1>학번, 이름, 학년, 선택과목을 입력하는 폼</h1>
<!-- <form action="서버주소" method="post or get">  -->
<form action="login" method="post">
<table>
	<tr>
		<td>학번 : </td>
		<td><input type="text" name="no"></td>
	</tr>
	<tr>
		<td>이름 : </td>
		<td><input type="text" name="name"></td>
	</tr>
	<tr>
		<td colspan="2">학년 : <input type="radio" value="1학년" name="grade">1학년 
		<input type="radio" name="grade" value="2학년" checked="checked">2학년
		<input type="radio" name="grade" value="3학년">3학년</td>
	</tr>
	
	<tr>
		<td>선택과목 : </td>
		<td>
		<select name="choose">
		<option value="java">java</option>		
		<option value="jsp">jsp</option>		
		<option value="mysql">mysql</option>		
		<option value="bigdata">bigdata</option>
		<option value="design">design</option>
		</select>
		</td>			
	</tr>
	<tr>
		<td colspan="2"><input type="submit" value="제출" name="go"></td>
	</tr>

</table>
</form>
</body>
</html>