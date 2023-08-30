<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="sec01.ex02.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%
	request.setCharacterEncoding("UTF-8");


	//MemberBean객체 2개 생성시 생성자를 호출해 인스턴스변수 초기화
	MemberBean memberbean1 = new MemberBean("lee","1234","이순신","lee@test.com");
	MemberBean memberbean2 = new MemberBean("son","1234","손흥민","son@test.com");
	
	//2개의 MemberBean객체의 주소를  ArrayList배열에 추가하여 저장
	List membersList = new ArrayList();
	     membersList.add(memberbean1);
	     membersList.add(memberbean2);

	//request내장객체에 ArrayList배열 자체의 주소를 바인딩(저장)
	request.setAttribute("list", membersList); // 속성명 "list" , 값 new ArrayList()배열주소

%>    
	<%-- member3.jsp 재요청(포워딩) --%>
	<jsp:forward  page="member3.jsp" />



















