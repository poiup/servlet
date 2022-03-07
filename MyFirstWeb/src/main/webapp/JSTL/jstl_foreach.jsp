<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
	<%
		int total = 0;
		for(int i=0;i<=100;i++){
			total += i;
		}
	%>
	<%= total %>
 --%>
 	<!-- begin은 시작값 end는 끝값(포함됨>=) step은 증가량, var은 태그에 쓸 변수명 -->
 	<c:forEach begin="1" end="100" step="1" var="number">
 		<c:set var="total" value="${total+number}"/>
 	</c:forEach>
 	<c:out value="${total }"/>
 	<hr/>
 	<!-- 구구단 -->
 	<c:forEach begin="1" end="9" step="1" var="dan">
 		<c:forEach begin="1" end="9" step="1" var="sum">
 			<c:set var="value" value="${sum * dan}"/>
 			<c:out value="구구단 ${dan }단의 값 ${dan } * ${sum} = ${value}"></c:out><br/>
 		</c:forEach>
 		<hr/>
 	</c:forEach>
 	<hr>
 	<h1>숫자가 아닌 요소를 반복하는 JSTL</h1>
 	<%-- arr변수내에 과일 5개이름을 배열로 저장하는 구문 --%>
 	<c:set var="arr" value='<%= new String[] {"사과", "딸기", "망고", "바나나", "포도"} %>'/>
 	<c:forEach var="i" items="${arr }">
 		${i } &nbsp;
 	</c:forEach>
 	<%--
 		String[] arr =  {"사과", "딸기", "망고", "바나나", "포도"};
 		for(String i : arr ){
 			out.println{i+"&nbsp;");
 			}
 	 --%>
 	 <c:set var="sumArr" value="<%=new int[] {10,20,30,40,50} %>"/>
 	 <c:forEach var="i" items="${sumArr}">
 	 	${i } &nbsp;
 	 </c:forEach>
</body>
</html>