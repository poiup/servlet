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
		form태그를 만들어주시고 목적지는 travel_check.jsp, post방식입니다.
		라디오 버튼을 최소 4개를 만들어주세요.
		각 라디오 버튼에는 속성으로 value= 이라고 해서 뭘 선택했는지 식별할수 있도록 
		각 버튼별로 다른 value값을 지정해주세요
		
		submit버튼도 만들어주세요
	 --%>
	 
	 <form action="travel_check.jsp" method="post">
		 <label><input type="radio" name = "travel" value="australia">호주</label>
		 <label><input type="radio" name = "travel" value="america">미국</label>
		 <label><input type="radio" name = "travel" value="canada">캐나다</label>
		 <label><input type="radio" name = "travel" value="bangkok">방콕</label>
		 <br/><input type="submit" value="확인">	
	 </form>
</body>
</html>