
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<form action="BSS.jsp" method="post">
	<table border="1">
	    <tr>
	        <td colspan="2">로그인</td>
	    </tr>
	    <tr>
	        <td>아이디</td>
	        <td><input type="text" name="lid"></td>
	    </tr>
	    <tr>
	        <td>비밀번호</td>
	        <td><input type="password" name="lpw"></td>
	    </tr>
	    <tr>
	        <td colspan="2">
	            <input type="submit" value="로그인">
	            <a href="index.jsp?page=Join">회원가입</a>
	        </td>
	    </tr>
	</table>    
</form>