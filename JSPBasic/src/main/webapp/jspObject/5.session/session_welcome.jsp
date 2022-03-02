<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String)session.getAttribute("id");
	String pw = (String)session.getAttribute("pw");
	String nickname = (String)session.getAttribute("nickname");
	
	
	Cookie[] cookies = request.getCookies();
	if(id == null && cookies != null){
		for(Cookie cookie : cookies){
			if(cookie.getName().equals("loginpass")){
				id = cookie.getValue();
			} 
		} 
	} 
	
	if(nickname == null && cookies != null){
		if(cookies != null){
			for(Cookie cookie : cookies){
				if(cookie.getName().equals("nickname")){
					nickname = cookie.getValue();
				}
			}
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	if(id == null){
		response.sendRedirect("session_login.jsp");
	}
%>
	<h1><%= nickname %>(<%= id %>)님 로그인을 환영합니다.</h1>
	<button>
		<a href="session_logout.jsp">로그아웃</a>
	</button>
</body>
</html>