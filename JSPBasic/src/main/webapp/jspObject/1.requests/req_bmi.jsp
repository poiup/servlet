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
	사용자의 키(height)와 체중(weight)를 입력받아 BMI지수를 계산해 출력하는
	form 및 출력페이지를 만들어보겠습니다
	
	1. 사용자ㅡ이 입력을 서버로 전송할때는 form태그를 사용합니다.
	2. form의 action= 속성을 이용해 전달할 페이지 및 url를 지정할수있습니다.
	3. input태그에 name속성으로 요청자료를 부를 명칭을 정할수 있습니다.
	4. submit 버튼을 사용하면 action=에 지정한 페이지로 자료가 전송됩니다.
	req_bmi.jsp ==> req_bmi_result.jsp
 --%>
	<form action ="req_bmi_result.jsp" method ="post">
		<input type="text" name= "height" placeholder = "키(m)"><br/>
		<input type="text" name= "weight"  placeholder = "체중(kg)"><br/>
		<input type="reset" value = "리셋">
		<input type="submit" value = "전송">
	</form>
</body>
</html>