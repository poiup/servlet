<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<script>
	</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- JSP에서는 스크립트릿이라는 태그를 이용해서
	js의 script태그처럼 내부에 자바 구문을 작성할수 있습니다 -->
	<%for(int i = 0; i < 3; i++){ %>
	<h2>이클립스와 톰캣으로 패이지 랜더링</h2>
	<p>
	안녕하세요. 오늘은 2022년 1월 28일 금요일입니다.<br/>
	개발환경 설정후 페이지 실행여부를 테스트 중입니다.
	</p>
	<%} %>
</body>
</html>