<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%--JSP주석은 이렇게 작성합니다.
	JSP주석은 소스보기에 나타나지 않습니다. --%>
	<!-- html주석은 소스보기에 나타납니다. -->
	
	<%-- 선언부를 이용해서 함수및 변수를 만들어보세요.
	변수는 celcius라는 이름의 double형 변수로 만들어주세요.
	함수는 CtoF라는 이름의 double형 자료를 하나 입력받고
	double형 자료를 리턴하게 만들어주세요
	celcius라는 함수는 오늘의 섭씨온도로 초기화시켜주세요
	스크립트릿을 이용해서 celcius를 파라미터로 넘겨서 CtoF 함수를 호출해주세요.
	함수를 호출한 결과를 out.println() 으로 화면에 표출시켜주시면 됩니다.
	화씨 -- > 섭씨 공식
	(화씨 온도 -32) / 1.8 = 섭씨온도 --%>
	<h1>오늘 현재 일산 온도</h1>
	<%! 
		double celcius;
		double Celcius(){
			celcius = 1;
			return celcius;
		}
		double CtoF(double c){
			double CtoFResult = c * 1.8 +32;
			return CtoFResult;
		}
	%>
	<%
		Celcius();
		out.println("오늘의 섭씨 : " + celcius + "<br/>");
		out.println("오늘의 화씨 : " + CtoF(celcius) + "<br/>");
	%>
</body>
</html>