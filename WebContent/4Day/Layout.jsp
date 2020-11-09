<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel ="stylesheet" type="text/css" href="css/layout.css">
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	String pagefile = request.getParameter("page");
	if(pagefile == null){
		pagefile ="NewItem";
	}
%>
</head>
<body>
<!-- 전체를 감싸는 div -->
<div id = "container">
	<!-- 상단 --><!-- 정적 페이지 include(include 디렉티브) -->
	<%-- <%@ include file="header.jsp" %> --%>
	<jsp:include page="header.jsp" /><!-- 닫는 태그 없이도 활용 가능 -->
	
	<!-- 좌측 메뉴 -->
	<%-- <%@ include file="left.jsp" %> --%>
	<jsp:include page="left.jsp" ></jsp:include>
	
	<!-- 메인 --><!-- 동적 페이지 include(include 액션태그) -->
	<jsp:include page='<%=pagefile+".jsp"%>'></jsp:include>
	<%-- <%@ include file="main.jsp"%> --%>
	
	<!-- 하단 -->
	<jsp:include page="footer.jsp"></jsp:include>
	<%-- <%@ include file="footer.jsp" %> --%>
	
</div>
</body>
</html>