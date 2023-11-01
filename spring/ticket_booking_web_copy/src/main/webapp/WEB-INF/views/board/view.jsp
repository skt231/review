<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 상세보기</title>
</head>
<body>
	<h1>게시글 상세보기</h1>
	<p>번호: ${board.board_id}</p>
	<p>제목: ${board.title}</p>
	<p>작성자: ${board.username}</p>
	<p>내용:</p>
	<pre>${board.content}</pre>
	<p>작성일: ${board.create_date}</p>
	<a href="edit?boardId=${board.board_id}">수정</a>
	<a href="delete?boardId=${board.board_id}">삭제</a>
</body>
</html>
