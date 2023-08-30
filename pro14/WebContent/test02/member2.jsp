<%@page import="sec01.ex02.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//한글처리
	request.setCharacterEncoding("UTF-8");

	MemberBean memberBean = (MemberBean)request.getAttribute("member");
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
			<td><%=memberBean.getId()%></td>
			<td><%=memberBean.getPwd()%></td>
			<td><%=memberBean.getName()%></td>
			<td><%=memberBean.getEmail()%></td>
		</tr>
	 
	   <%--  ${} EL 표현언어 태그로 출력   --%>
	  <%--   ${requestScope.member} <- request.setAttribute("member",memberbean); 바인딩된  MemberBean객체 얻기       --%>
	   <%--  ${requestScope.member.email} <- 얻은 MemberBean객체의 email변수에 저장된 이메일불러와 출력     --%> 
	    <tr align="center">
			<td>${member.id}</td>  
			<td>${member.pwd}</td>
			<td>${member.name}</td>
			<td>${requestScope.member.email}</td>
		</tr>
	</table>




</body>
</html>








