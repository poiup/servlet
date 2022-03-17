<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	메인페이지
	<a href="/MyFirstWeb/boardList.do">목록보기</a>
	<c:if test="${empty sessionScope.login_pass}">
		<a href="/MyFirstWeb/users/login_form.jsp">로그인</a>
		<a href="/MyFirstWeb/users/join_form.jsp">회원가입</a>
	</c:if>
	<c:if test="${not empty sessionScope.login_pass}">
		<button><a href="users/logout.jsp">로그아웃</a></button></br>
	</c:if>
	
</body>
</html>