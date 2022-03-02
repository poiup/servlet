<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	// 보낸 age를 정수로 저장해주세요.
    	int age = Integer.parseInt(request.getParameter("age"));
    
    	// .sendRedirect()가 호출되면 거기 적힌 사이트로 강제로 이동시킵니다.
    	// response.sendRedirect("http://www.naver.com");
    	
    	// age가 20이상이면 res_adult.jsp(성인 확인 결과창)
    	// age가 20미만이면 res_child.jsp(미성년자 확인 결과창)
    	if(age >= 20){
    		response.sendRedirect("res_adult.jsp");
    	} else if (age < 20){
    		response.sendRedirect("res_child.jsp");
    	}
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>