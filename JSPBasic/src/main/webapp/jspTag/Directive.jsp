<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.util.*" %>  
<%
	// 자바에서 import구문을 이용해 사용하던 클래스들은 JSP파일에서도 역시
	// import구문을 써야합니다.
	// 지시자(Dircetive)의 경우 <%@ % > 사이에 기술하여
	// 문서 자체에 사용할 설정이나 옵션을 지정합니다
	Date date = new Date(); // 날짜 얻어오기
	
	List<String> names = new ArrayList<>();
	names.add("가나다");
	names.add("김모씨");
	names.add("박모씨");
	names.add("최모씨");

	out.println(names.toString() + "<br/>"); // toString 전체출력
	out.println(names.get(0) + "<br/>"); // 0번 인덱스값 출력
	out.println(date.getDate() + "<br/>"); // 오늘날짜
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