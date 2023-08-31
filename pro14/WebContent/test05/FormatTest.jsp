<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%	request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>fmt의 formatNumber태그를 이용한 숫자 포맷팅 예제</h2>
	<c:set var="price" value="100000000"/>
	<fmt:formatNumber value = "${price }" type="number" var="priceNumber"/>
	
	<%--currencySymbol속성에는 type속성에 지정한 currency대신 개발자가 원하는 기호표시로 설정할 수 있다. --%>
	통화 기호 표시 :  
	<fmt:formatNumber value ="${price }" type="currency" currencySymbol="$" groupingUsed="true"/>
	<br>
	
	퍼센트로 표시:
	<fmt:formatNumber value ="${price }" type="percent" groupingUsed="true"/>
</body>
</html>