<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
		application은 application객채를 사용해서 저장하거나 데이터값을 받아올수 있습니다.
		
		getAttribute() 메서드와 setAttribute() 매서드를 사용할수 있고
		
		application에 한번 저장된 객체는 서버 종료 전까지 계속 유지됩니다.
	*/
	
	int visitCnt = 0;

	Integer temp = (Integer)application.getAttribute("visit");
	if(temp != null){
		visitCnt = temp;
	}
	visitCnt ++;
	
	application.setAttribute("visit", visitCnt);
%>
<hr>
 	<h3>방문자수 : <%=visitCnt %></h3>