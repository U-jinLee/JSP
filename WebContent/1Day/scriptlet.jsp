<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
public int sum(){
	int total = 0;
	for(int i = 0; i <=100; i++){
		 total += i;
	}
	return total; 
}
%>

<%
Calendar c = Calendar.getInstance(); //클래스명.메소드: 클래스 메소드 
int hour = c.get(Calendar.HOUR_OF_DAY);
int minute = c.get(Calendar.MINUTE);
int second = c.get(Calendar.SECOND);

if(hour>=12){%>
	<h1>현재시간은 오후 <%=hour-12%>시 <%=minute%>분 <%=second%>초 입니다.</h1>  
<%
}
else
{
%>
	<h1>현재시간은 오전 <%=hour%>시 <%=minute%>분 <%=second%>초 입니다.</h1>
<%
}
%> <!--자바와 혼용 금지-->
<p>그리고 1부터 100까지의 합은 <%=sum()%>입니다.</p>
</body>
</html>