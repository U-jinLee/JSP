<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BSS</title>
</head>
<body>
<%
String lid = request.getParameter("lid");
String lpw = request.getParameter("lpw");
if(lid.equals(session.getAttribute("sid")) && lpw.equals(session.getAttribute("spw"))){%>
<script type="text/javascript">
alert("로그인에 성공했습니다");
</script>
<%} else {%>
	<script type="text/javascript">
	alert("로그인에 실패했습니다.");
	history.back();
	</script>
<%}
%>
    <table border="1">
        <tr>
            <td colspan="4">게시판</td>
        </tr>
        <tr>
            <td>게시판번호</td>
            <td>제목</td>
            <td>작성자</td>
            <td>작성자ID</td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td><%=session.getAttribute("sid") %></td>
        </tr>
    </table>
</body>
</html>