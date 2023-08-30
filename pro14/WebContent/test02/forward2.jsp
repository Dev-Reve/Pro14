<%@page import="sec01.ex02.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");


	//MemberBean객체 생성시 생성자를 호출하여  각 변수에 값 초기화
	MemberBean memberbean = new MemberBean("lee","1234","이순신","lee@test.com");
	
	//request내장객체에 MemberBean객체의 주소를 바인딩
	request.setAttribute("member", memberbean);
%>    
	<%-- member2.jsp를 재요청(포워딩) --%>
    <jsp:forward  page="member2.jsp" />