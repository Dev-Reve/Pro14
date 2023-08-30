<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("UTF-8");
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
	<%-- 직접 컨텍스트 주소 /pro14 를 입력 해야 하므로 컨텍스트 주소가 바뀌면  또 수정해서 작성해야 합니다. --%>
<!-- <a href="/pro14/test01/memberForm.html">회원가입하러가기</a> -->
	
	<%-- request.getContextPath()를 입력하여 /pro14 컨텍스트 주소를 얻어 사용하기떄문에 
	          자바코드와 디자인을 구별하기가 어렵습니다. --%>
	<a href="<%=request.getContextPath()%>/test01/memberForm.html">회원가입하러가기</a>
	
	<%-- 자바코드를 사용하지 않고  EL에서 제공해주는  
	     pageContext내장객체의 속성인 request하위의 contextPath속성을 호출하면
		 클라이언트가 login.jsp를 요청했을때의 전체 URL중에서 컨텍스트 주소 /pro14 문자열을 얻을수 있다.
	 --%>
	<a href="${pageContext.request.contextPath}/test01/memberForm.html">회원가입하러가기</a>
	
	
	
</body>
</html>




