<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//한글처리
	request.setCharacterEncoding("UTF-8");

	//request내장객체에 접근하여  수동으로 setAttribute메소드를 이용해
	//새로운 값을 바인딩 합시다
	request.setAttribute("address", "서울시 강남구");
%>    
    <%-- member2.jsp를 재요청(포워딩) 디스패처 방식으로 포워딩합시다. --%>
	<jsp:forward page="member2.jsp" ></jsp:forward>