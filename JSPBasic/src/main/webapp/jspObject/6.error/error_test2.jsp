<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="error_page.jsp" %>
<%
	// 상단 디렉티브에 error_page.jsp를 지정했기 때문에
	// try~catch구문 없이도 예외발생시 바로 예외처리가 실행됩니다.
	int a = 3/0;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>