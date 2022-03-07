<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
		String id = "abcd";
	%>
	
	<%
		
		String newId = request.getParameter("id");
		String newPw = request.getParameter("password");
		String newName = request.getParameter("name");
		String newAge = request.getParameter("age");
		
		if(newId.equals(id)){
			%><p>중복된 아이디로 가입할 수 없습니다</p>
			<button><a href="req_join_form.jsp">돌아가기</a></button>
			<%
		} else {
			%><b><%= newId %>(<%= newName %>)님 회원가입을 축하드립니다.</b><%
		}
	%>
</body>
</html>