<%@ page import = "java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	window.onload = function(){
		<% 
		List<Integer> lotto = new ArrayList<>();
		
		while(lotto.size() != 6){
			int random = (int)(Math.random() * 45);
			if(!lotto.contains(random)){				
				lotto.add(random);
			} 
		}
		
		%>
	}
</script>
</head>
<body>
<h1>로또번호 생성결과</h1>
<br/>
<p>이번주 로또는 이 번호다!!</p>
<p>
<%
	
	for(Integer num : lotto) {
		out.println(num);
		Thread.sleep(700);
		out.flush();		
	}
%>

</p>
</body>
</html>