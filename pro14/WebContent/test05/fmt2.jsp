<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%	request.setCharacterEncoding("UTF-8"); %>

<%--
	 날짜 포맷 및 타임존

	<fmt:formatDate /> 태그(날짜 포맷)
		
		- 이 태그는 날짜와 시간 포맷을 지정하는 태그입니다.
		
		- 문법
			<fmt:formatDate
			
				value = "변환할 날짜 지정"
				type = "출력하여 출력할 양식
					출력 양식 종류 3가지 중 하나( 날짜 date, 시간 time, 날짜 및 시간 모둔 both)"
				var = "변환하여 출력할 날짜 또는 시간을 저장할 변수"
				dateStyle = "날짜 스타일 종류 지정" (default, short, medium, long, full 중 하나) "
				timeStyle = "시간 스타일 종류 지정" (default, short, medium, long, full 중 하나) "				
				pattern = "출력할 날짜 및 시간의 양식을 패턴으로 직접 지정합니다."
				scope = "변환한 날짜가 저장된 var의 변수를  저장할 내장객체 영역 중 하나"
			/>
			
	타임존
		<fmt:timeZone> </fmt:timeZone> 태그
		- 출력할 시간의 시간대를 설정할 수 있는 태그
		- 위 <fmt:formatDate>태그를 <fmt:timeZone>여는 부분과 닫는 부분 사이에 작성하면,
		  설정한 시간대에 따라 다른 시간을 출력할 수 있습니다.
		  
		  <fmt:timeZone value="America/Chicago">
		  	<fmt:timeFormatDate value="날짜 및 시간".... />
		  </fmt:timeZone>			



 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- java.util패키지에서 제공해주는 Date클래스의 객체를 생성해서 변수에 저장합니다.
		 Date클래스의 객체를 생성하면 오늘날짜와 시간값을 가지는 Date객체가 만들어집니다.
	 --%>
	 <c:set var="today" value="<%=new java.util.Date() %>" />
	 <h4>날짜 포맷</h4>
	 <%-- 날짜를 포맷(변환) 하기 위해서는 type="date로 설정합니다. 날짜 스타일은 dateStyle속성에 각각 지정합니다. --%>
	 <%--full : 2023년 8월 31일 목요일 --%>
	 full : <fmt:formatDate value="${today }" type = "date" dateStyle="full"/> <br>
	 
	 <%-- short : 23. 8. 31. --%>
	 short : <fmt:formatDate value="${today }" type = "date" dateStyle="short"/> <br>
	 
	 <%-- medium : 2023. 8. 31. --%>
	 medium : <fmt:formatDate value="${today }" type = "date" dateStyle="medium"/> <br>
	 
	 <%-- long : 2023년 8월 31일 --%>
	 long : <fmt:formatDate value="${today }" type = "date" dateStyle="long"/> <br>
	 
	 <%-- default : 2023. 8. 31. --%>
	 default : <fmt:formatDate value="${today }" type = "date" dateStyle="default"/> <br>



</body>
</html>