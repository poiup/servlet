<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>${board.board_num }번 글 상세페이지</h1>
	글제목 : ${board.title }"
	글쓴이 : ${board.writer }"
	조회수 : ${board.hit }<br/>
	쓴날짜 : ${board.bdate }
	마지막 수정날짜 :${board.mdate }<br/>
	본문 : ${board.content }<br/>
	<a href="/MyFirstWeb/boardList.do">목록으로</a>
	<form action="/MyFirstWeb/BoardDelete.do" method="post">
		<input type="hidden" name="board_num" value="${board.board_num }">
		<input type="submit" value="삭제하기" >
	</form>
	<form action="/MyFirstWeb/BoardUpdateForm.do" method="post">
		<input type="hidden" name="board_num" value="${board.board_num }">
		<input type="submit" value="수정하기">
	</form>
	
</body>
</html>