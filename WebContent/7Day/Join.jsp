<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
	<form action="MemberAddAction.me" method="post"> <!--me의 의미? web_xml 속 mapping의 의미 -->
	    <table border="1">
	        <tr>
	            <td colspan="2" style="text-align: center;">회원가입</td>
	        </tr>
	        <tr>
	            <td>아이디</td>
	            <td><input type="text" name="id"></td>
	        </tr>
	        <tr>
	            <td>비밀번호</td>
	            <td><input type="password" name="pw"></td>
	        </tr>
	        <tr>
	            <td>비밀번호 재확인</td>
	            <td><input type="password" name="PwR"></td>
	        </tr>
	        <tr>
	            <td>이름</td>
	            <td><input type="text" name="name"></td>
	        </tr>
	         <tr>
	            <td>나이</td>
	            <td><input type="text" name="age"></td>
	        </tr>
	        <tr>
	            <td>성별</td>
	            <td>
	            	남<input type="radio" value="m" name="gender">
	            	여<input type="radio" value="w"name="gender">
	            </td>
	        </tr>
	        <tr>
	            <td>생년월일</td>
	      		<td>
		      		<select name="year">
		      			<option value="00">2000</option>
		      			<option value="01">2001</option>
		      			<option value="02">2002</option>
		      			<option value="03">2003</option>
		      			<option value="04">2004</option>
		      			<option value="05">2005</option>
		      		</select>
		      		<select name="month">
		      			<option value="01">1</option>
		      			<option value="02">2</option>
		      			<option value="03">3</option>
		      			<option value="04">4</option>
		      			<option value="05">5</option>
		      			<option value="06">6</option>
		      			<option value="07">7</option>
		      			<option value="08">8</option>
		      			<option value="09">9</option>
		      			<option value="10">10</option>
		      			<option value="11">11</option>
		      			<option value="12">12</option>
		      		</select>
		      		<select name="day">
		      			<option value="01">1</option>
		      			<option value="02">2</option>
		      			<option value="03">3</option>
		      			<option value="04">4</option>
		      			<option value="05">5</option>
		      			<option value="06">6</option>
		      			<option value="07">7</option>
		      			<option value="08">8</option>
		      			<option value="09">9</option>
		      			<option value="10">10</option>
		      			<option value="11">11</option>
		      			<option value="12">12</option>
		      		</select>
		      		<input type="text" name="birth">
	      		</td>
	        </tr>
	        <tr>
	            <td>휴대전화 번호</td>
	            <td><input type="tel" name="tel"></td>
	        </tr>
	        <tr>
	            <td colspan="2"><input type="submit" value="가입하기"></td>
	        </tr>
	    </table>
	</form>
</body>
</html>