<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/index.css">
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	String pagefile = request.getParameter("page");//'left.jsp에서 get 방식으로 불러온 page parameter'
	if(pagefile == null){
		pagefile ="Login";
	}
%>

</head>
<body>
<div id="Container">
	<div id ="menu">
		<jsp:include page="menu.jsp"></jsp:include>
	</div>
	<div id ="content">
		<jsp:include page='<%=pagefile+".jsp"%>'></jsp:include>
	</div>
</div>
</body>
</html>