<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 폼에서 날아온 데이터들을 저장해주세요.
	// 만약 자동로그인설정이 되어있다면 쿠키를 생성해주시고
	// cookie name값은 "auto_login" value값은 전달받은 아이디로 해주세요.
	// 쿠키 유효시간은 50초입니다.
	// 쿠키가 생성되었건 말건 cookie_welcome.jsp로 리다이렉트 시켜줍니다
	
	// 만약 로그인에 실패했다면 body태그내에
	// 로그인에 실패했읍니다. 라는 문구가 함꼐
	// a태그를 이용해 로그인 화면으로 돌아갈수 있게 처리해주세요ㅕ.
	// 아이디는 abc1234이고 비밀번호는 "aaa1111"인 경우 로그인을 허용합니다.
%>

<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String autoLoginCheck = request.getParameter("auto-login");
	
	// 자동 로그인
	Cookie auto_login = new Cookie("auto_login",id);	
	auto_login.setMaxAge(50);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	if(id.equals("abc1234") && pw.equals("aaa1111")){
		if(autoLoginCheck != null){
			response.addCookie(auto_login);
		}
		response.sendRedirect("cookie_welcome.jsp");
	} else {
		%>
		<h1>로그인에 실패했습니다.</h1>
		<a href="cookie_login.jsp">로그인화면으로 돌아가기</a>
		<%
	}
%>
</body>
</html>