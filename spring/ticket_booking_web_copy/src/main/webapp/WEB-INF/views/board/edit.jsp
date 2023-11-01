<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정</title>
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>

	<div class="container mt-5">
		<h2>게시글 수정</h2>
		<form action="/app/board/edit" method="post">
			<div class="form-group">
				<label for="title">제목</label> <input type="text"
					class="form-control" id="title" name="title" value="${board.title}"
					required>
			</div>
			<div class="form-group">
				<label for="username">사용자명</label> <input type="text"
					class="form-control" id="username" name="username"
					value=${board.username } readonly>
			</div>
			<div class="form-group">
				<label for="content">내용</label>
				<textarea class="form-control" id="content" name="content" rows="5"
					required>${board.content}</textarea>
			</div>

			<input type="hidden" name="board_id" value="${board.board_id}">
			<button type="submit" class="btn btn-primary">수정하기</button>
		</form>
	</div>

	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
