<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 페이지 내부에서 JSTL태그를 쓰고싶다면 디렉티브를 통해 taglib 선언을 해야합니다. --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%	request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:if test="${param.name eq '홍길동' }">
		<p>name 파라미터로 들어온 값은 ${param.name}입니다.</p>
		<%-- c태그라이브러리의 out을 사용하면 value="출력할값"형태로 out.println()등을 대체합니다. --%>
		<c:out value="name 파라미터로 들어온 값은 ${param.name}입니다."/>
		<!-- 자바 코드 내에서는 el을 사용할수 없기때문에 println내부에서는 정상적으로 출력되지 않습니다. -->
		<% out.println("name 파라미터로 들어온 값은 ${param.name}입니다."); %>
	</c:if>
	<!-- name파라미터에 이순신이 들어오면 name파라미터로 들어온 값은 이순신입니다 라고 출력하게
	아래쪽에 직접 작성해서 저한테 보내주세요 -->
	<c:if test="${param.name eq '이순신'}">
		<p>name 파라미터로 들어온 값은 ${param.name} 입니다</p>
	</c:if>
	<hr/>
	<!-- 변수를 선언하는데 스크립트릿 대신 c:set을 이용해봅니다. -->
	<c:set var="fName" value="${param.name }"/>
	<c:out value="당신이 입력한 값은 ${fName }입니다."/>
</body>
</html>