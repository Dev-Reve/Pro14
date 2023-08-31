<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test = "${empty param.userID }">
		아이디를 입력하세요.<br>
		<a href = "login.jsp"> 로그인 창</a>
	</c:if>
	<c:if test = "${not empty param.userID}">
		<h1> 안녕합니다. <c:out value="${param.userID }"/>님!!</h1>
	</c:if>
</body>
</html>