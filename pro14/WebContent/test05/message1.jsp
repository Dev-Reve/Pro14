<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다국어 기능</title>
</head>
<body>
	<%-- 아래의 setLocale 태그를 이용해 현재 JSP화면에 국가 언어를 영어로 설정한다. --%>
	<%-- <fmt:setLocale value="en_US"/> --%>
	<%-- 아래의 setLocale 태그를 이용해 현재 JSP화면에 국가 언어를 한글로 설정한다. --%>
	<fmt:setLocale value="ko_KR" />

	<h1>
		회원 정보 <br>
		<br>
		<%-- <fmt:bundle태그를 이용해 resource패키지 아래의 member로 시작하는 프로퍼티 파일을 읽어 오기위해 경로를 설정했다.--%>
		<fmt:bundle basename="resource.member">
			<%-- message 태그의 key 속성에 .properties파일에 적은 key속성명들을 적으면 key와 같이 저장된 value를 얻어서 화면에 출력할 수 있음 --%>
				이름: <fmt:message key="mem.name" />
							<br>
				주소: <fmt:message key="mem.address" />
							<br>
				직업: <fmt:message key="mem.job" />
							<br>

		</fmt:bundle>
	</h1>
</body>
</html>