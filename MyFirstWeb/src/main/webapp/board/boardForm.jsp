<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/MyFirstWeb/insertBoard" method="post">
		<input type="text" name="title" placeholder="제목" />
		<input type="text" name="content" placeholder="내용" />
		<input type="text" name="writer" placeholder="글쓴이" />
		<input type="submit" value="전송"> 
	</form>
</body>
</html>