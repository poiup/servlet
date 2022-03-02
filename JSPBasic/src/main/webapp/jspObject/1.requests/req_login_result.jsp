<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%! 
	String id = "ajy000";
	String pw = "pwpwpw";
	String userName = "안재영";
%>
<%
	String getId = request.getParameter("id");
	String getPw = request.getParameter("password");
	
	if(id.equals(getId) && pw.equals(getPw)){	%>
		<b><%= userName %>님 환영합니다!</b>
		<%} else {%>
		<b>로그인에 실패하셧습니다</b>
		<br/><button><a href = "req_login_form.jsp">로그인창으로 돌아가기</a></button>
		<%}
%>
<%-- 임의로 아이디와 비밀번호를 지정해주세요 
아이디 비밀번호가 맞으면 xx님 환영합니다. 만약 하나라도 틀렸다면
로그인에 실패했습니다가 나오도록 해주세요.--%>
</body>
</html>