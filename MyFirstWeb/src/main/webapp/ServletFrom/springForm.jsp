<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 서블릿으로 보내기 위해서는 action에 서블릿주소를 붙여넣습니다 -->
	<form action="http://localhost:8181/MyFirstWeb/Custom" method="post">
		<input type="text" name="jsp" placeholder = "jsp">
		<input type="text" name="boot" placeholder = "boot">
		<input type="text" name="jpa" placeholder ="jpa">
		<input type="submit">
	</form>
</body>
</html>