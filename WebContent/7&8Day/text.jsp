<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
	<td class="in">&nbsp;&nbsp;<select id="phone1">
	    	<option value="sel1">선택하세요</option>
	    	<option value="010">010</option>
	    	<option value="011">011</option>
	    	<option value="017">017</option>
	    	<option value="016">016</option>
	    	<option value="018">018</option>
	    	<option value="010">070</option>
	    	</select>-
	    	<input type="text" id="phone2" style="width: 50px">-
	    	<input type="text" id="phone3" style="width: 50px">
	    	<!-- hidden으로 숨기기 -->
	    	<input type="text" id="phone" name="phone" style="width: 100px">
	    	
	    </td>
	    
	<!--       var phone1;
   var phone2;
   var phone3;
   var phone4="";
   
   $("#phone1").change(function(){
      phone1=$("#phone1").val();
      phone4+=phone1;
      $("#phone").val(phone4);
   })
   $("#phone2").blur(function(){
      phone2=$("#phone2").val();
      phone4+=phone2;
      $("#phone").val(phone4);
   })
   $("#phone3").blur(function(){
      phone3=$("#phone3").val();
      phone4+=phone3;
      $("#phone").val(phone4);
   })-->
</table>
</body>
</html>