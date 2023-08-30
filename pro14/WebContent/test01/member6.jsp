<%@page import="sec01.ex01.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//한글처리
	request.setCharacterEncoding("UTF-8");	
%>
<%-- memberForm6.html에서 입력한 정보들을 request영역에서 꺼내와서 useBean액션태그로 생성한 MemberBean객체의 변수에 저장 --%>
<jsp:useBean  id="memberbean"  class="sec01.ex02.MemberBean"    />
<jsp:setProperty property="*" name="memberbean"/>


<jsp:useBean id="addr"  class="sec01.ex02.Address"  />

<%-- Address객체의  city변수와 zipcode변수의 값을 초기화 --%>
<jsp:setProperty property="city"  value="서울"  name="addr"/> <%-- setCity(String city)메소드 호출시 "서울"전달하여저장 --%>
<jsp:setProperty property="zipcode"  value="07654" name="addr"/> <%-- setZipcode(String zipcode)메소드 호출시 07654전달 하여 변수에 저장 --%>

<%
//MemberBean객체 내부의  setAddr메소드 호출시  매개변수로 위 Address객체의 주소값을 전달하여 
//MemberBean객체의  Address  addr인스턴스변수에 저장 
memberbean.setAddr(addr);

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
			<td width="20%"><b>도시</b></td>
			<td width="20%"><b>우편번호</b></td>
		</tr>
		<tr align="center">
			<td><%=memberbean.getId()%></td>
			<td><%=memberbean.getPwd()%></td>
			<td><%=memberbean.getName()%></td>
			<td><%=memberbean.getEmail()%></td>
			<td><%=memberbean.getAddr().getCity()%></td>
			<td><%=memberbean.getAddr().getZipcode()%></td>
		</tr>
		<tr align="center">
			<td>${memberbean.id}</td>
			<td>${memberbean.pwd}</td>
			<td>${memberbean.name}</td>
			<td>${memberbean.email}</td>
			<td>${memberbean.addr.city}</td>
			<td>${memberbean.addr.zipcode}</td>
		</tr>		
	</table>
</body>
</html>








