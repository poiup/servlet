<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String travel = request.getParameter("travel");
	response.sendRedirect("travel_" + travel+ ".jsp");
%>
	<%-- 
	if(travel.equals("australia")){
		response.sendRedirect("travel_australia.jsp");
	} else if(travel.equals("america")){
		response.sendRedirect("travel_america.jsp");
	}else if(travel.equals("canada")){
		response.sendRedirect("travel_canada.jsp");
	}else if(travel.equals("bangkok")){
		response.sendRedirect("travel_bangkok.jsp");
	}
--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>