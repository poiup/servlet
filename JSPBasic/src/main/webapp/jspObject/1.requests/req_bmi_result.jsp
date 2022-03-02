<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
	bmi지수 계산공식 = [체중(kg) / 신장(m) * 신정(m)]
	즉, 175cm라면 실제 신장에 들어가야 하는 값은 1.75m
	* bmi지수가 23을 초과한다면 "체중조절을 고려해보세요." 출력
	18.5미만이라면 "당신은 저체중입니다." 출력
	나머지인 경우 "당신은 정상체중입니다." 를 출력하되
	스크립트릿에 if문을 넣어서 선택적으로 결과가 나오게 해보세요
	
	*품에서 전달되는 데이터는 무조건 문자열로 전달됩니다.
	따라서 정수나 실수로 변환해야되는데
	String -> int, double
	Integer.parseInt("문자열") 
	Double.parseDouble("문자열")
 --%>
 
 <%
 	double height = Double.parseDouble(request.getParameter("height"));
 	double weight = Double.parseDouble(request.getParameter("weight"));
 	double bmi = weight / (height*height);
 	if (height > 10) {
 		height = height/100;
 	}
 %>
 	<h1>BMI 계산 웹 어플리케이션</h1>
 	<hr>
 	
 	<p>키 : <%= height %>m</p>
 	<p>몸무게 : <%= weight %>kg</p>
 	
 	<p>BMI지수 : <%= bmi %></p>
 	<% if(bmi < 18.5){%>
		<strong>당신은 저체중입니다</strong>
	<%	} else if (bmi > 23) {%>
	<strong>체중조절을 고려해보세요</strong>
	<%	} else{%>
	<strong>당신은 정상체중입니다.</strong>
	<%} %>
</body>
</html>