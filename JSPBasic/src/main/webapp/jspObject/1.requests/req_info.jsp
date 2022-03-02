<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String protocol = request.getProtocol();
    	String conPath = request.getContextPath();
    	StringBuffer reqUrl = request.getRequestURL();
    	String reqUri = request.getRequestURI();
    	int serverport = request.getServerPort();
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <!-- request 클라이언트에 요청합니다. 쿠키 서버이름 등등의 정보를 요청할수 있습니다. -->
 <!-- getParameter input으로 들어온 값을 받아옵니다. -->
 	요청 프로토콜 : <%= protocol %> <br/>
 	요청 컨텍스트 경로 : <%= conPath %> <br/>
 	요청 URL : <%= reqUrl %><br/>
 	요청 URI : <%= reqUri %><br/>
 	서버 포트 : <%= serverport %><br/>
</body>
</html>