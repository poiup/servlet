<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	
	Cookie[] cookies = request.getCookies();
	if (cookies != null){
		// null 값이 들었을때 equals를 쓰면 에러가 나기때문에
		// null이아닌 값일떄만 돌아가도록 조치를 취해줘야됨
		for(Cookie cookie : cookies ){	
			if((cookie.getName()).equals("auto_login")){
				response.sendRedirect("cookie_welcome.jsp");
			}
		}
	} 
	
	
%>
<%--
	String autoLogin = null;
	String userId = null;
	
	for(Cookie cookie : cookies){
		autoLogin = cookie.getName();
		if(autoLogin != null && autoLogin.equals("auto_login")){
			userId = cookie.getValue();
			if(userId.equals("abc1234")){
				response.sendRedirect("cookie_welcome.jsp");
			}
		}
	}
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 로그인창은 form으로 구성해주시면 됩니다.
	input text 1개 (id), password 1개(password). checkbox1개(자동로그인)-->
	
	<form action="cookie_login_ok.jsp" method="get">
		<input type="text" name="id" placeholder="아이디">
		<input type="password" name="pw" placeholder="비밀번호"><br/>
		<label>
			<input type="checkbox" name="auto-login" value="auto-login">자동 로그인
		</label><br/>
		<input type="submit" value="로그인">
	</form>
</body>
</html>