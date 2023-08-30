<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//순서4. 포워딩(재요청) 받은  member1.jsp화면입니다.
	//      각 내장객체 영역에 바인딩되어 있는 데이터를 꺼내와서 변수에 저장

	//한글처리
	request.setCharacterEncoding("UTF-8");

	String id = (String)request.getAttribute("id"); //"hong"
	String pwd = (String)request.getAttribute("pwd");//"1234"
	
	String name = (String)session.getAttribute("name");//"홍길동"
	
	String email = (String)application.getAttribute("email");//"hong@test.com"		
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
	  <%-- 회원정보를 표현식으로 출력 --%>
		<tr align="center">
			<td><%=id%></td>
			<td><%=pwd%></td>
			<td><%=name%></td>
			<td><%=email%></td>
		</tr>
	   <%--
	   		자바코드 없이  각 내장객체 영역에 접근하여 바인딩된  속성이름으로 가져온 값을 얻어 EL로 출력
	    	
	    	request.setAttribute("id","hong"); <- 이렇게 바인딩한 정보 "hong"을 얻기 위해서는
	    										  EL문법에서 제공해주는 requestScope내장객체를 통해 request영역에 접근하고
	    										  바인딩시 "hong"이라는 값과 함께 바인딩된 "id"속성명을 작성해주면
	    										  "id"속성명과 같이 저장된  "hong"값을 불러와서 바로~ EL ${  }로 출력가능함 
	    	session.setAttribute("name","홍길동");
	    	
	    	
	    	application.setAttribute("email","hong@test.com");   
	    	
	    	${applcaitonScope.email} -> ${"hong@test.com"}출력
	    	
	    --%>
	    <tr align="center">
			<td>${requestScope.id}</td>  
			<td>${requestScope.pwd}</td>
			<td>${sessionScope.name}</td>
			<td>${applicationScope.email}</td>
		</tr>
	</table>




</body>
</html>








