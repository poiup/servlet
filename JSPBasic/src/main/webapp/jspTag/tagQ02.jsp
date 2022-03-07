<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
		public int accumulate;
	%>
	<%
		int randomNum = (int)(Math.random()*9)+1;
	%>
	<p>페이지 누적 요청 수 : <%= ++accumulate %></p>
	<p>매 <b>10</b>번째 방문자에게는 기프티콘을 드립니다.</p>
	<% if((accumulate % 10) == 0){
		out.println("당첨되셨습니다!!!");
	} %>
	<hr>
	<h1>랜덤 구구단 (<%= randomNum %>단)</h1>
	<p>이번에 나온 구구단은 <%= randomNum %>단 입니다.</p>
	<br/>
	<% for(int i = 1; i<10; i++){
		out.println(randomNum + " * " + i + " = " + randomNum*i + "<br/>");
	}
	%>
</body>
</html>