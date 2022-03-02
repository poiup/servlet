<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 하단에 선언부를 선언해주신다음, double을 선언하고 areaCircle 메서드를 정의해주세요
	이 메서드는 r 변수에 double타입으로 원주율을 입력받고
	r의 제곱 * Math.PI()을 곱해 원넓이를 리턴합니다. -->
	<%!
		double areaCircle(double r){
			return r * r * Math.PI;
		} 
		String name = "김철수";
		int age = 44;
	%>
	<% 
		out.println(areaCircle(5)+"<br/>");
	%>
	이름 : <%= name %><br/>
	나이 : <%= age %>세<br/>
	반지름 5인 원의 넓이 <%= areaCircle(5) %>cm^2
</body>
</html>