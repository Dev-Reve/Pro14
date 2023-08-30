<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h4>OtherPage.jsp</h4>
												
<ul>
	<li>request내장객체에 저장되어 있는 requestVar변수의 값 : ${requestScope.requestVar} </li>
	<li>재요청시 전달 받은 값 1 : ${param.user_param1} </li>
	<li>재요청시 전달 받은 값 2 : ${param.user_param2} </li>
</ul>