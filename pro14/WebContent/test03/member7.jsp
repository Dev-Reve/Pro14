<%@page import="java.util.HashMap"%>
<%@page import="sec01.ex02.MemberBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- JSTL 중에서 core라이브러리에 속한 태그를 불러와서 사용하기위해  taglib 디렉티브태그 작성 --%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"    %>   
  
<%  request.setCharacterEncoding("UTF-8"); %>          
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>List 컬릭션 가변길이 배열에 값 저장후  c:forEach 사용하기</h4>

	<%
		ArrayList<MemberBean>  lists = new ArrayList<MemberBean>();
	
		lists.add( new MemberBean("lee","1234","이길동","lee@test.com")   );
		lists.add( new MemberBean("son","1234","손흥민","son@test.com")   );
		lists.add( new MemberBean("ki","1234","기성용","ki@test.com")   );
	%>
	<%-- 위 자바코드로 생성한  ArrayList배열을  JSTL의 c:forEach에서 사용하기 위해  c:set태그로 변수를 만들어서 배열을 저장   --%>
	<c:set  var="lists" value="<%=lists%>" scope="page"  />
	
	<ul>
		<c:forEach  var="i"  begin="0" end="${lists.size()-1}" step="1">
		
			<c:set var="mb" value="${lists[i]}"/>
			
			<li>
				아이디 : ${mb.id}, 
				비밀번호 : ${mb.pwd}, 
				이름 : ${mb.name},
				이메일 : ${mb.email}
			</li>
		
		</c:forEach>
	</ul>
	
	




</body>
</html>











