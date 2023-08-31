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
	<h4>자바 코드에서의 예외</h4>
	<%
		int num1 = 100;	
	%>
	<%-- 만약 예외가 발생하면 <c:catch>태그가 예외를 잡아 eMessage변수에 저장합니다. --%>
	<c:catch var = "eMessage">
		<%
			int result = num1/0; // 숫자를 0으로 나눌 수 없으므로 수학연산관련 예외가 발생합니다.		
		%>	
	</c:catch>
	
	예외 내용 : ${eMessage }
	
	<h4>el에서의 예외</h4>
	<c:catch var = "eMessage">
		<c:set var = "num2" value = "200" />
		 ${"일" + num2 }
	</c:catch>
	
	 예외 내용 : ${eMessage }
	 
	 <%-- 결론: EL은 NULL이나 예외에 관대한 편이므로 <c:catch>태그는 EL보다 JSP에서 발생되는 예외를 처리할떄 주로 사용됩니다. --%>
</body>
</html>