<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//한글처리
	request.setCharacterEncoding("UTF-8");	
%>    
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력한 회원정보 확인 창</title>
</head>
<body>
	<table border="1" align="center">
		<tr align="center" bgcolor="#99ccff">
			<td width="20%"><b>아이디</b></td>
			<td width="20%"><b>비밀번호</b></td>
			<td width="20%"><b>이름</b></td>
			<td width="20%"><b>이메일</b></td>
			<td width="20%"><b>주소</b></td>
		</tr>

	   <%-- EL표현언어 문법에서 제공해주는 param 내장객체를 이용해  request내장객체 메모리에 접근하여 
	   	    getParameter()메소드를 이용하지 않고 <input>태그의 name속성값들을 이용해서 
	   	        요청한 값을 바로 얻어 EL로 출력할수 있다.
	    --%>
	    <tr align="center">
			<td>${param.id}</td>
			<td>${param.pwd}</td>
			<td>${param.name}</td>
			<td>${param.email}</td>
			<%-- 동적으로 <input>에 입력받은 값을 request에서 꺼내오는 것이 아니라
				 수동으로 request객체에 setAttribute메소드를 이용해 저장한(바인딩한) 주소를 꺼내올때는
				 request객체에 접근하는 방법은 EL에서 제공해주는 requestScope내장객체로 접근하여 
				 주소를 얻어 출력할수 있다.
			 --%>
			<td>${requestScope.address}</td>
		</tr>
	</table>




</body>
</html>








