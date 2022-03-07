<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="req_login_result.jsp" method="post">
		<input type="text" name="id" placeholder="아이디"><br/>
		<input type="password" name="password" placeholder="비밀번호"><br/>
		<input type="submit" value="로그인">
	</form>
	<button><a href="req_join_form">회원가입</a></button>
</body>
</html>