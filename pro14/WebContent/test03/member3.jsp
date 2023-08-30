<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"     %>    
    
<%  request.setCharacterEncoding("UTF-8");    %>    
    
    
<c:set  var="id"  value="hong" scope="page" />
<c:set  var="pwd" value="1234" scope="page" />
<c:set var="name" value="${'홍길동'}" scope="page" />
<c:set var="age" value="${22}" scope="page" />
<c:set var="height"  value="${177}" scope="page" />

<%--
	 c:remove 태그
	 - c:remove태그는  c:set태그로 설정한 변수를 제거할때 사용합니다.
	   jsp에서 내장객체 영역에 저장된 속성(변수)을 제거할때사용하는 removeAttribute()메소드와 같은 역할을 합니다.
	   
	 - 문법
	       	c:remove var="삭제할변수명"  scope="삭제할변수가 저장된 내장객체영역"
											참고 :  지정하지 않으면 모든 내장객체영역에 저장된 변수들이 삭제 됩니다.	 		  
 --%>

<c:remove  var="age"  /> <%-- 모든 내장객체 영역에 같은 age라는 이름으로 저장된 변수 제거 --%>
<c:remove  var="height"   scope="page"  />  <%-- page내장객체 영역에 저장된  height변수를 제거 --%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<table border="1" align="center">
		<tr align="center" bgcolor="#99ccff">
			<td width="7%"><b>아이디</b></td>
			<td width="7%"><b>비밀번호</b></td>
			<td width="7%"><b>이름</b></td>
			<td width="7%"><b>나이</b></td>
			<td width="7%"><b>키</b></td>
		</tr>
		<%-- 표현언어 EL로 변수에 바로 접근하여 값을 얻어 출력 --%>
		<tr align="center">
			<td>${id}</td>
			<td>${pwd}</td>
			<td>${name}</td>
			<td>${age}</td>
			<td>${height}</td>
		</tr>
	</table>
</body>
</html>





