<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 쿠키가 있을때
	
	Cookie[] cookies = request.getCookies();
	if(cookies != null){	
		for(Cookie cookie : cookies){
				// 로그인패스쿠키가 존재할경우
				if((cookie.getName()).equals("loginpass")){
				response.sendRedirect("session_welcome.jsp");
			}
		}
	}
	
	
	// 로그인한 사용자가 해당 페이지에 접근했는지 안했는지 세션조회로 체크
	String id = (String)session.getAttribute("id");
	String pw = (String)session.getAttribute("pw");
	String nickname = (String)session.getAttribute("nickname");
	// 로그인 상태라면 저장된값이 찍힘
	
	
	// 위의 값(id,pw,nickname)이 null이 아닌경우는 로그인이 이미 된 상태입니다.
	// 세션은 login_check.jsp에서 로그인 로직을 통과한 경우에만 발급되기 떄문입니다.
	// 이를 이용해 세션에 값이 발급된 경우에는 welcome페이지로 리다이렉트 되도록 아래에 로직을 작성해주세요.
	//if(id !=null && pw != null && nickname != null){
	//	response.sendRedirect("session_welcome.jsp");
	//}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="session_login_check.jsp" method="post">
		<input type="text" name="id" placeholder="아이디" required>
		<input type="password" name="pw" placeholder="비밀번호" required><br/>
		<input type="text" name="nickname" placeholder="닉네임" required><br/>
		<input type="reset" value="초기화">
		<input type="submit" value="전송">
	</form>
	
</body>
</html>