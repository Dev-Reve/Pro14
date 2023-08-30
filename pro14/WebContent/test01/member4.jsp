<%@page import="sec01.ex01.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//한글처리
	request.setCharacterEncoding("UTF-8");	
%>
<%-- ArrayList배열 생성 --%>
<jsp:useBean  id="membersList"  class="java.util.ArrayList"    />

    
<%-- 입력한 회원정보들을 request내장객체 영역에서 꺼내와서 
     useBean액션태그로 생성하는 MemberBean객체의 모든변수에 저장 --%>
<jsp:useBean id="m1"  class="sec01.ex01.MemberBean"/>
<jsp:setProperty name="m1" property="*" />

<%
  //자바코드로 새로원 회원정보를 저장시키는 MemberBean객체를 생성합니다.
  MemberBean m2 = new MemberBean("son", "1234", "손흥민", "son@test.com");

  //위 두개의 MemberBean객체들을 ArrayList배열에 추가
  membersList.add(m1);
  membersList.add(m2);

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
		<%-- ArrayList배열의 0 index위치에 저장된 첫번째 MemberBean객체를 얻어  첫번째 MemberBean객체의 각 변수를 얻어 출력 --%>
		<%-- ${ ArrayList참조변수[index].꺼내온MemberBean객체의 변수명    } --%>
		<tr align="center">
			<td>${membersList[0].id}</td>
			<td>${membersList[0].pwd}</td>
			<td>${membersList[0].name}</td>
			<td>${membersList[0].email}</td>
		</tr>
		<%-- ArrayList배열의 1 index위치에 저장된 두번째 MemberBean객체를 얻어 두번째 MemberBean객체의 각변수에저장된 값을 얻어 EL로 출력 --%>
		<tr align="center">
			<td>${membersList[1].id}</td>
			<td>${membersList[1].pwd}</td>
			<td>${membersList[1].name}</td>
			<td>${membersList[1].email}</td>		
		</tr>
	</table>
</body>
</html>








