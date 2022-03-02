<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Arrays" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 
	<%!
		String[] color = {"빨강","주황","노랑","초록", "파랑", "남", "보라"};
		int randomNumber(){
			int randomResult = (int)(Math.random()*10);
			return randomResult;
		}
		int randomColor(){
			int randomColor = (int)(Math.random()*color.length);
			return randomColor;
		}
		
		
		// declaration에 선언한 변수는 서버를 끄기 전까지는 값이 누적됩니다
		// 일종의 static처럼 작동합니다.
		 int accumulate = 0;
	%>
	<h1>Web프로그래밍</h1>
	<p>오늘의 방문자수 : <%= ++accumulate %></p>
	
	<%
	if(accumulate % 10 == 0){
		out.println("당첨되셨습니다.");
	}
		// scritlet내부에 선언한 변수는 접속시마다 초기화됩니다.
		int currentNum = 0;
	out.println("<br/>" + ++currentNum);
		
	%>
	<h3>오늘의 행운의 숫자와 행운의 색깔</h3>
	<p>행운의 숫자는 1~10범위입니다.</p>
	<p>행운의 숫자 : <b><%= randomNumber() %></b></p>
	<p>색깔은 1/3확률로 바뀝니다.<b><%= Arrays.toString(color) %></b></p>
	<p>행운의 색깔 : <b><%= color[randomColor()]%></b></p>
</body>
</html>