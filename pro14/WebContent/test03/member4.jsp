<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"     %>    
    
<%  request.setCharacterEncoding("UTF-8");    %>    
    
    
<c:set  var="id"  value="hong" scope="page" />
<c:set  var="pwd" value="1234" scope="page" />
<c:set var="name" value="${'홍길동'}" scope="page" />
<c:set var="age" value="${22}" scope="page" />
<c:set var="height"  value="${177}" scope="page" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--
		 <c:if>태그
		 
		 - 자바의 if문과 동일하게 제어 구문을 작성할떄 사용합니다. 
		      하지만  else가 별도로 없기때문에 일련의 조건을 나열하는 형태로 작성하기에는 어려움이 있습니다.
		      
		 - 문법
		 	<c:if test="${조건식}"  var="조건식의결과를저장할 만들 변수명"    scope="변수가 저장될 내장객체영역중 하나">
		 	
		 		test속성의 조건식이 참이면 출력될 코드 문장  
		 	
		 	</c:if> 
	 --%>	
	 
	 <c:if test="${true}"> <%-- 조건식이 true이므로 결과는 항상 참입니다. --%>
	 	
	 	<h1>항상 참입니다.</h1>
	 
	 </c:if>
	 
	 <c:if test="${11 == 11}">
	 
	 	<h1>두 값은 같습니다.</h1>
	 
	 </c:if>
	 
	 <c:if test="${11 != 31}">
	 
	 	<h1>두 값은 같지 않습니다.</h1>
	 
	 </c:if>
	 
	 <c:if test="${ (id == 'hong')  &&  (name == '홍길동') }">
	 
	 	<h1>아이디는 ${id}이고,  이름은 ${name} 입니다.</h1>
	 
	 </c:if>
	 
	 <c:if test="${age == 22}">
	 	
	 	<h1>${name}의 나이는  ${age}살 입니다.</h1>
	 
	 </c:if>
	 
	 <c:if test="${height > 160}">
	 	
	 	<h1>${name}의 키는 160보다 큽니다.</h1>
	 
	 </c:if>
	 


</body>
</html>





