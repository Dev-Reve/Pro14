<%@page import="sec01.ex01.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//한글처리
	request.setCharacterEncoding("UTF-8");	
%>

<%--HashMap 배열 생성   (key,value)를 한쌍의 형태로 저장시키는 배열 메모리   --%>
<jsp:useBean id="membersMap" class="java.util.HashMap"    />

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
  
  
  //HashMap객체에 key, value를 한쌍의 형태로  박지성에 대한 정보를 저장
  membersMap.put("id", "park2");
  membersMap.put("pwd", "4321");
  membersMap.put("name", "박지성");
  membersMap.put("email", "park2@test.com");
  //HashMap객체에 key, value를 한쌍의 형태로  위 MemberBean객체 2개 저장하고 있는 ArrayList배열 자체를 저장 
  membersMap.put("List", membersList);
  
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
		<%-- HashMap에 저장된 박지성에 대한 정보를 얻어 출력 
			 방법 : 먼저 membersMap을 작성하여  HashMap에 접근합니다.
			 	    그리고  membersMap.key 형태로 작성하여  key와 함께 한쌍으로 저장되었던 value를 얻어옵니다.
		--%>
		<tr align="center">
			<td>${membersMap.id}</td>  <%-- "park2" --%>
			<td>${membersMap.pwd}</td> <%-- "4321" --%>
			<td>${membersMap.name}</td> <%-- "박지성" --%>
			<td>${membersMap.email}</td> <%-- "park2@test.com" --%>
		</tr>
		
		
		<%--  membersMap.key -> membersMap.List 를 작성하면  key와함께 저장된  HashMap에 저장된 ArrayList배열을 꺼내옵니다. --%>	
		<%-- ArrayList배열의 0 index위치에 저장된 첫번째 MemberBean객체를 얻어  첫번째 MemberBean객체의 각 변수를 얻어 출력 --%>
		<%-- ${  HashMap참조변수.ArrayList배열을 꺼내올 key[index].꺼내온MemberBean객체의 변수명    } --%>
		<tr align="center">
			<td>${membersMap.List[0].id}</td>
			<td>${membersMap.List[0].pwd}</td>
			<td>${membersMap.List[0].name}</td>
			<td>${membersMap.List[0].email}</td>
		</tr>
		<%-- ArrayList배열의 1 index위치에 저장된 두번째 MemberBean객체를 얻어 두번째 MemberBean객체의 각변수에저장된 값을 얻어 EL로 출력 --%>
		<tr align="center">
			<td>${membersMap.List[1].id}</td>
			<td>${membersMap.List[1].pwd}</td>
			<td>${membersMap.List[1].name}</td>
			<td>${membersMap.List[1].email}</td>		
		</tr>
	</table>
</body>
</html>








