<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%
	// name "apple"에 딸려온 데이터 조회
	String id =	request.getParameter("apple");
	String pw =	request.getParameter("banana");
	String[] hobby = request.getParameterValues("hobby");
	String major = request.getParameter("major");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	전송받은 아이디 : <%= id %><br/>
	전송받은 비밀번호 : <%= pw %><br/>
	취미 : <%= Arrays.toString(hobby) %><br/>
	전공 : <%= major %><br/>
</body>
</html>