<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${sId eq null }">
	<%response.sendRedirect("http://localhost:8181/MyFirstWeb/boardList.do");%>
</c:if>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/MyFirstWeb/BoardUpdate.do" method="post">
		글제목 : <input type="text" name="title" value="${board.title }" >
		글쓴이 : ${board.writer }"
		조회수 : ${board.hit }<br/>
		쓴날짜 : ${board.bdate }"
		마지막 수정날짜 :${board.mdate }<br/>
		본문 : <textarea name="content" rows="15" cols="50">${board.content }</textarea><br/>
		<input type="hidden" name="board_num" value="${board.board_num }">
		<input type="submit" value="수정하기">
	</form>
</body>
</html>