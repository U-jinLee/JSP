<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%--<jsp:useBean id="" class="패키지명.클래스명(파일명 제외)" scope="page || request || session || application"></jsp:useBean>--%>
<jsp:useBean id="GetClass" class="test.BeanTest" scope="page"></jsp:useBean>
<%--<jsp:setProperty property="속성명" name="빈의이름"/>--%>
<jsp:setProperty property="name" name="GetClass"/>
<jsp:setProperty property="age" name="GetClass"/>
<%--<jsp:setProperty property="*" name="GetNameClass"/>--%><!--넘어오는 것이 많아지면 *로도 처리해서 받아줄 수 있다.-->
</head>
<body>
<h3><%= GetClass.getAge()%>살 먹은 <%=GetClass.getName()%>님 환영합니다!</h3>
</body>
</html>