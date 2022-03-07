<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	request.setCharacterEncoding("utf-8");
	String getid = request.getParameter("id");  
	String getpw = request.getParameter("pw");
	String getnickname = request.getParameter("nickname");
	String id = "kkk1234";
	String pw = "1111";
	Cookie loginpass = new Cookie("loginpass", getid);
	Cookie nicknameCookie = new Cookie("nickname", getnickname);
	
	if(getid != null){	
		if(getid.equals(id) && getpw.equals(pw)){
			session.setAttribute("id", getid);
			session.setAttribute("pw", getpw);
			session.setAttribute("nickname", getnickname);
			response.addCookie(loginpass);
			response.addCookie(nicknameCookie);
			response.sendRedirect("session_welcome.jsp");
		}
	} else {
		response.sendRedirect("session_login.jsp");
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>로그인에 실패하였습니다.</h1>
	<button>
		<a href="session_login.jsp">로그인화면으로 돌아가기</a>
	</button>
</body>
</html>