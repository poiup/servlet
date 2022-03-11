<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 
	<c:forEach var="i" items="${boardList }">
		${i }<br/>
	</c:forEach>
	<hr/>
	0번쨰 요소 : ${boardList[0]}<br/>
	1번쨰 요소 : ${boardList[1]}<br/>
	2번쨰 요소 : ${boardList[2]}<br/>
	
	전체 데이터 : ${boardList[0] }<br>
	글번호 : ${boardList[0].board_num }<br>
	글제목 : ${boardList[0].title }
	 -->
	<table class="table">
  <thead>
    <tr>
      <th scope="col">글번호</th>
      <th scope="col">글제목</th>
      <th scope="col">글쓴이</th>
      <th scope="col">쓴날짜</th>
      <th scope="col">최종수정일</th>
      <th scope="col">조회수</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach var="i" items="${boardList }">
		<tr>
      		<td> ${i.board_num }</td>
      		<td><a href="/MyFirstWeb/boarddetail?board_num=${i.board_num }"> ${i.title }</a></td>
      		<td> ${i.writer }</td>
      		<td> ${i.bdate }</td>
      		<td> ${i.mdate }</td>
      		<td> ${i.hit }</td>
   		</tr>
	</c:forEach>
  </tbody>
   <a href="/MyFirstWeb/boardInsertForm"><button>글쓰기</button></a>
</table>
</body>
</html>