<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%--<jsp:useBean id="" class="패키지명.클래스명(파일명 제외)" scope="page || request || session || application"></jsp:useBean>--%>
<jsp:useBean id="GetNameClass" class="test.BeanTest" scope="page"></jsp:useBean>
<%--<jsp:setProperty property="속성명" name="빈의이름"/>--%>
<jsp:setProperty property="name" name="GetNameClass"/>
</head>
<body>
<h3><%=GetNameClass.getName()%>님 환영합니다!</h3>
</body>
</html>