<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- JSTL 중에서  core태그들을 사용하기 위해 작성 --%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"     %>    
    
<%  request.setCharacterEncoding("UTF-8");    %>      
    
<%-- 변수 선언 : 4가지 내장객체 영역에  똑같은 이름의 scopeVar변수들을 만들고 값을 저장해 놓습니다.     --%>    

<c:set  var="scopeVar" value="page Value"   />   <%-- scope="page" 를 생략하면 기본 설정은 page내장객체이다. --%>

<c:set var="scopeVar" value="Request Value" scope="request"   />

<c:set var="scopeVar" value="Session Value" scope="session"  />

<c:set var="scopeVar" value="Application Value"  scope="application"     />
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> c:remove 태그 활용 예제 </title>
</head>
<body>
	<h4>출력하기</h4>
	<ul>
		<li>scopeVar : ${scopeVar}</li>  <%-- page내장객체 영역에 저장된 scopeVar변수를 불러와 저장된 값을 출력 --%>
		<li>requestScope.scopeVar : ${requestScope.scopeVar }  </li>
		<li>sessionScope.scopeVar : ${sessionScope.scopeVar }  </li>
		<li>applicationScope.scopeVar : ${applicationScope.scopeVar } </li>
	</ul>
	
	<h4>session내장객체 영역에서 변수 삭제하기</h4>
	<%--  scope속성을 session내장객체 영역으로 지정하여  session내장객체영역에 저장된 변수scopeVar만 삭제 함.  --%>
	<c:remove var="scopeVar"  scope="session"    />
	
	<ul>
		<li>scopeVar : ${scopeVar}</li>  <%-- page내장객체 영역에 저장된 scopeVar변수를 불러와 저장된 값을 출력 --%>
		<li>requestScope.scopeVar : ${requestScope.scopeVar }  </li>
		<li>sessionScope.scopeVar : ${sessionScope.scopeVar }  </li> <%-- 변수가 삭제 되어 출력되지 않습니다. --%>
		<li>applicationScope.scopeVar : ${applicationScope.scopeVar } </li>		
	</ul>
	
	
	<h4>scope속성 지정 없이 변수 삭제하기</h4>
	<c:remove var="scopeVar" />  <%-- 4가지 내장객체 영역 전체에서 scopeVar변수가 모두 삭제됩니다. --%>
		
	<ul>
		<li>scopeVar : ${scopeVar}</li> <%-- 변수가 삭제 되어 출력되지 않습니다. --%>
		<li>requestScope.scopeVar : ${requestScope.scopeVar }  </li> <%-- 변수가 삭제 되어 출력되지 않습니다. --%>
		<li>sessionScope.scopeVar : ${sessionScope.scopeVar }  </li> <%-- 변수가 삭제 되어 출력되지 않습니다. --%>
		<li>applicationScope.scopeVar : ${applicationScope.scopeVar } </li>	 <%-- 변수가 삭제 되어 출력되지 않습니다. --%>	
	</ul>


</body>
</html>










