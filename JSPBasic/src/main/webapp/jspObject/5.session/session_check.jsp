<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	/*
		- 세션에 저장된 데이터는 브라우저 창이 종료될때까지,
		  혹은 세션의 유효시간이 만료되기전까지 웹 어플리케이션의 모든 jsp펭지에서 사용할수 있습니다.
		  
		- 세션에 저장된 데이터를 가져오려면 session 객체의 getAtrribute()메서드를 사용하여,
		  매개값으로 가져올 데이터의 세션이름을 적어줍니다.
	*/
	String userId = (String)session.getAttribute("id_session");
	String userName = (String)session.getAttribute("name_session");
	String JSP = (String)session.getAttribute("JSP");
	out.println(userId + "<br/>");
	out.println(userName + "<br/>");
	out.println(JSP + "<br/>");
	out.println("---------------<br/>");
	
	// 세션의 유효시간은 아래의 메서드를 사용합니다.
	// 기본 시간은 30분으로 세팅되어있고(디폴드) 바꾼다면 초단위로 바꿀수 있습니다
	// session.setMaxInactiveInterval(10);
	// getMaxInactiveInterval()으로 유효시간 조회 가능
	int sTime = session.getMaxInactiveInterval();
	out.println("세션의 유효시간 : " + sTime + "초<br/>");
	out.println("---------------<br/>");
	// 특정 세션 데이터 삭제
	String name = (String)session.getAttribute("name_session");
	out.println("name_session 삭제전 " +name+"<br/>");
	
	// 특정한 세션만 삭제시는 .removeAttribute("세션이름"); 을 이용해서 삭제합니다.
	// name_session 삭제후 삭제가 잘되었는지 화면에 찍어서 확인해보세요.
	session.removeAttribute("name_session");
	
	name = (String)session.getAttribute("name_session");
	out.println("name_session 삭제후 " +name+"<br/>");
	
	// 세션 일괄적으로 삭제하기
	String Id = (String)session.getAttribute("id_session");
	out.println("Id 삭제 전 "+ Id + "<br/>");
	
	JSP = (String)session.getAttribute("JSP");
	out.println("JSP 삭제 전 "+ JSP + "<br/>");
	
	session.invalidate();
	// 세션 존재여부 조회
	// request.isRequestedSessionIdValid()
	if(request.isRequestedSessionIdValid()){
		out.println("유효한 세션 존재");
	} else {
		out.println("세션이 파기되어 조회할수 없습니다.");
	}
	out.println("---------------<br/>");

	
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