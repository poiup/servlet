<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 테스트</title>
</head>
<body>
	<h1>회원가입 양식</h1>
	<!--    get방식
	 서버에 데이터를 요청하는 용도
	 url뒤쪽에 name의 정보가 적혀나가기 때문에 보안상 문제가 있다 
	 그렇기때문에 보여도 상관없는 정보인 검색이나 글조회 같은경우 사용을 합니다.
	 url에 붙여서 보내기때문에 최대 전송크기가 정해져있음
	-->
	
	<!--   post방식
	 서버에 데이터를 전송하는 용도
	 브라우저에 전달되는 데이터가 남지 않기때문에 보안성이 강함
	 비밀번호 주민번호등 private한 데이터를 서버에 전송할때 사용
	 데이터 양의 제한이 없기때문에 대량의 데이터를 전송할수 있습니다.
	 -->
	<form action = "" method = "post">
		<input type = "text" name ="id" placeholder ="아이디"/><br/>
		<input type = "password" name ="pw" placeholder ="비밀번호"/><br/>
		<input type = "submit" value = "제출"/><br/>
	</form>
</body>
</html>