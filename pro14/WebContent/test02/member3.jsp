<%@page import="java.util.ArrayList"%>
<%@page import="sec01.ex02.MemberBean"%>
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
		</tr>
		
<%
ArrayList list = (ArrayList)request.getAttribute("list");

//ArrayList배열에 저장된 MemberBean객체의 갯수만큼 for반복문을 돌면서 
//get(index)메소드를 호출하여   각 index위치에 저장된 MemberBean객체를 얻어옵니다.
for(int i=0;  i<list.size();   i++ ){	
	 MemberBean bean = (MemberBean)list.get(i);
%>
		<tr>
			<td><%=bean.getId()%></td>
			<td><%=bean.getPwd()%></td>
			<td><%=bean.getName()%></td>
			<td><%=bean.getEmail()%></td>
		</tr>
<%			
}
%>
	
	<%-- request내장객체 영역에 접근하여 ArrayList배열을 꺼내오고 
	         배열의  0 index위치에 저장된  첫번쨰 MemberBean객체 꺼내와 변수값 EL로 출력 --%>
		<tr>
			<td>${requestScope.list[0].id}</td>
			<td>${requestScope.list[0].pwd}</td>
			<td>${requestScope.list[0].name}</td>
			<td>${list[0].email}</td>
		</tr>	
	<%-- request내장객체 영역에 접근하여 ArrayList배열을 꺼내오고 
	         배열의  1 index위치에 저장된  두번쨰 MemberBean객체 꺼내와 변수값 EL로 출력 --%>
		<tr>
			<td>${list[1].id}</td>
			<td>${list[1].pwd}</td>
			<td>${requestScope.list[1].name}</td>
			<td>${requestScope.list[1].email}</td>
		</tr>	
	</table>




</body>
</html>








