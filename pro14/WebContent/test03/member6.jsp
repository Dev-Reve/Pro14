<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- JSTL 중에서 core라이브러리에 속한 태그를 불러와서 사용하기위해  taglib 디렉티브태그 작성 --%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"    %>   
  
<%  request.setCharacterEncoding("UTF-8"); %>      
   
<%
	/*
		전체 흐름:  자바코드로 ArrayList배열을 생성하여 문자열을 저장한 후 
		          <c:forEach>태그에서 사용할수 있도록 <c:set>태그로 list변수를 만들고  ArrayList배열을 저장 합니다.
		                    그리고  varStatus의 loop속성을 이용해 반복 횟수를 출력합니다.
	              <c:forEach>태그의 items속성에 ArrayList배열을 설정한 후 반복문 수행시 Arraylist배열에 저장된
	                            문자열을 반복해서 저장할 data변수에 하나씩 저장한 후 반복해서 출력합니다.
	*/

	//자바코드로 ArrayList배열 생성 후 문자열 저장
	List dataList = new ArrayList();
	dataList.add("hello");
	dataList.add("world");
	dataList.add("안녕하세요!!");
%>   
	<%-- JSTL c:forEach에서 EL ${ }을  사용할수 있도록   list변수에  위 dataList참조변수에 저장된 ArrayList배열의 주소를 저장  --%>
   <c:set var="list" value="<%=dataList%>"  />
   
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- 변수i 1부터  10이 될때까지 1씩 증가 시키면서 10번 반복해서 i변수를 출력.  그리고 현재 몇번 반복하고 있는지 상태값도 출력 --%>
	<c:forEach var="i" begin="1"  end="10"  step="1" varStatus="loop"  >
	
		현재  ${loop.count} 반복한 상태의     i변수에 저장된 값은 ${i} 입니다.  <br>
	
	</c:forEach>
	
	<hr>
	
	<%-- 변수i를 1부터 10이 될떄까지 2씩 증가 시키면서 반복문을 수행합니다. --%>
	<c:forEach var="i"  begin="1" end="10" step="2" >
		
			5 * ${i} = ${5*i} <br>
	
	</c:forEach>
	
	<hr>
	
	<%-- ArrayList배열에 저장된 문자열객체의 갯수만큼 반복해서 data변수에 저장하고 반복해서 출력! --%>
	<c:forEach var="data" items="${list}" varStatus="loop">
		
		  ${loop.count}번째 반복하고 있는 상태에서 얻는 문자열객체 는?  ${data}  문자열이다~ <br>
	
	</c:forEach>
	
	
	<%--참고 구문 --%>
	<c:forEach var="data"  begin="0" end="${list.size()-1}" step="1"  items="${list}"  >
	
		      ${data}문자열이다~ <br>
	
	</c:forEach>
	
	
</body>
</html>










