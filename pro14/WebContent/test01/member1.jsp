<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//가입할 회원정보를 memberForm.html에서 입력받았습니다.
	//입력받은 회원정보들을 모두 request내장객체 영역에 저장해서 
	//현재 페이지에서 공유 받아서 사용합니다.
	
	//1.한글처리
	request.setCharacterEncoding("UTF-8");

	//2.요청한 값 얻기  (request객체의 getParameter메소드 이용)
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
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
		</tr>
	  <%-- request객체의 getParameter메소드를 이용해서 가져온 입력한 회원정보를 표현식으로 출력 --%>
		<tr align="center">
			<td><%=id%></td>
			<td><%=pwd%></td>
			<td><%=name%></td>
			<td><%=email%></td>
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
		</tr>
	</table>




</body>
</html>








