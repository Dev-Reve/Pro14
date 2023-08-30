<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//한글처리
	request.setCharacterEncoding("UTF-8");	
%>    
<%-- 입력한 회원정보들을 request내장객체 영역에서 꺼내와서 
     useBean액션태그로 생성하는 MemberBean객체의 모든변수에 저장 --%>
<jsp:useBean id="m"  class="sec01.ex01.MemberBean"/>
<jsp:setProperty name="m" property="*" />

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
	 <%-- 자바코드 표현식 이용해 입력한 정보들을 MemberBean객체의 getter메소드들을 호출해 얻어 출력 --%>
		<tr align="center">
			<td><%=m.getId()%></td>
			<td><%=m.getPwd()%></td>
			<td><%=m.getName()%></td>
			<td><%=m.getEmail()%></td>
		</tr>
	<%-- EL 표현언어 태그를 이용해 입력한 정보들을 MemberBean객체에서 얻어 출력 
		 MemberBean에 접근하는 방법
		 ${ MemberBean의참조변수m.변수명  }  <- 변수명을 적으면 변수에 저장된 데이터를 반환받아 출력
	--%>
		<tr align="center">
			<td>${m.id}</td>
			<td>${m.pwd}</td>
			<td>${m.name}</td>
			<td>${m.email}</td>		
		</tr>
	</table>
</body>
</html>








