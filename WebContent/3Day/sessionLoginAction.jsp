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
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("password");
		
		if(id != null && pw != null/*아이디와 패스워드를 입력한 상태*/) {
			session.setAttribute("id"/*세션영역의 'id'에 저장*/, id);
			session.setAttribute("pw"/*세션영역의 'pw'에 저장*/, pw);
		}
%>
<form action="ApplicationTest.jsp" method="post">
<table>
<tr>
<td>email</td>
<td>
<input type="text" name="email">
</td>
</tr>
<tr>
<td>집주소</td>
<td>
<input type="text" name="addr">
</td>
</tr>
<tr>
<td>전화번호</td>
<td>
<input type="text" name="tel">
</td>
<tr>
<td colspan="2">
<input type="submit" value="제출">
</td>
</tr>
</table>
</form>
</body>
</html>