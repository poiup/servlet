<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 하단에 구구닫ㄴ 코드를 작성해주세요
	System.out.println() 이 괄호내 구문에 콘솔이 찍히게 해줫다면
	out.println()은 html화면에 괄호 내 구문을 콘솔에 찍히게 해줍니다.
	(javascript의 document.write()와 같은역활 -->
	<h2>구구단</h2>
	<% for(int i = 1; i< 9; i++){
	%><div style = "float : left; padding : 20px; border-right: solid 1px #000;">
		<%out.println("<h1>" + i + "단</h1>"); %><%
		for(int j = 1; j< 9; j++){
		out.println(i + " * " + j + " = " + j*i);
	%></br><%
		}
	%></div><%
	}%>
</body>
</html>