<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- JSTL 중에서 core라이브러리에 속한 태그를 불러와서 사용하기위해  taglib 디렉티브태그 작성 --%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"    %>       
       
<%
	request.setCharacterEncoding("UTF-8");
%>  

<%--
	 c:set태그를 이용해 변수를 만들고  컨텍스트 주소를 저장
	 
	 pageContext내장객체의 request변수를 호출하면   HttpServletRequest 객체를 얻을수 있다.
	 얻은 HttpServletRequest객체의 contextPath변수를 호출하면  
	 클라이언트가 요청한 전체 URL중에서 컨텍스트 주소를 문자열로 반환하니 얻을수 있다
 
 	      /pro14
 --%>
<c:set var="contextPath"   value="${pageContext.request.contextPath}" />

<%
	String contextPath2 = request.getContextPath();
%>

  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%-- 로그인 요청 화면에서 ID와 비밀번호를 입력한 후  <form>태그의 action속성에 로그인요청할 result.jsp주소를 작성해서 요청 --%>
	<form action="result.jsp" method="post" >
		아이디 : <input type="text" name="userID"><br>
		비밀번호 : <input type="password" name="userPw"><br>
		
		<%--전송 버튼으로 만들수 있는 경우 --%>
		<input type="submit" value="로그인">
		<input type="reset" value="다시 입력">
	</form>
	<br><br>

	<a href="${contextPath}/test01/memberForm.html">회원가입하러가기</a>
	
	
	
</body>
</html>




