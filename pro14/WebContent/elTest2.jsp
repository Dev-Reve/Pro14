<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"   %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<h2>여러가지 산술연산자 이용</h2>
		<h1>
			\${10+10} : ${10+10} <br>
			
			\${20-10} : ${20-10} <br>
			
			\${10*10} : ${10*10} <br>
			
			\${100/9} : ${100/9} <br>
			
			<%-- / 나눗셈 연산자 대신  div 나눗셈연산 사용 가능 --%>
			\${100 div 9} : ${100 div 9} <br>
		
		
		
			\${100%9}   :  ${100%9} <br>
			
			<%-- % 나머지 연산자 대신 mod 나머지연산자 사용 가능 --%>
			\${100 mod 9} : ${100 mod 9} <br>
		
		
		</h1>








</body>
</html>