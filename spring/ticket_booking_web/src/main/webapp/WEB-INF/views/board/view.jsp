<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 상세보기</title>
<style>
.head {
	text-align: center;
	font-size: 36px;
}
</style>
</head>
<body>
	<%-- <h1>게시글 상세보기</h1>
	<p>번호: ${board.board_id}</p>
	<p>제목: ${board.title}</p>
	<p>작성자: ${board.username}</p>
	<p>내용:</p>
	<pre>${board.content}</pre>
	<p>작성일: ${board.create_date}</p>
	<a href="edit?boardId=${board.board_id}">수정</a>
	<a href="delete?boardId=${board.board_id}">삭제</a>
	<a href="comment?board_id=${board.board_id}">답글</a> --%>
	<form class="contactForm" method="post">

		<input type='hidden' name='board_id' value="${board.board_id}">
		<input type='hidden' name='page' value="${pageDto.page}"> <input
			type='hidden' name='perPageNum' value="${pageDto.perPageNum}">
		<input type='hidden' name='searchType' value="${pageDto.searchType}">
		<input type='hidden' name='keyword' value="${pageDto.keyword}">


		<h6>
			작성자 <input type="text" name="username" style="width: 100%"
				value="${board.username}" readonly="readonly">
		</h6>
		<h6>제목</h6>
		<h6>
			<input type="text" style="width: 100%" name='title'
				value="${board.title}" readonly="readonly">
		</h6>
		<h6>
			수정일자
			<fmt:formatDate pattern="yyyy-MM-dd HH:mm"
				value="${board.update_date}" />
		</h6>

		<h6>
			내용
			<textarea style="width: 100%" name="content" rows="3"
				readonly="readonly">${board.content}</textarea>
		</h6>

	</form>

	<div class="d-grid">
		<button type="button" class="btnModify"
			onclick="location.href='/app/board/edit?board_id=${board.board_id }&title=${board.title}&content=${board.content}&username=${board.username}'">수정</button>
		<button type="submit" class="btnRemove"
			onclick="location.href='/app/board/delete?board_id=${board.board_id }'">삭제</button>
		<button type="button" class="btnReply"
			onclick="location.href='/app/board/comment?user_id=1&board_id=${board.board_id}&title=${board.title}&indent=${board.indent }&depthno=${board.depthno }'">답글</button>
		<button type="button" class="btnList"
			onclick="location.href='/app/board/list'">LIST page로 이동</button>



	</div>
	<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
	<script>
		var fObject = $(".form");
		function remove() {
			fObject.attr("action", "/app/board/delete");
			fObject.submit();
		}

		$(document).ready(function() {
			var fObject = $(".form");

			$(".btnList").on("click", function() {
				fObject.attr("method", "get");
				fObject.attr("action", "/app//board/list");
				fObject.submit();

			});

			function remove() {
				fObject.attr("action", "/app/board/delete");
				fObject.submit();
			}
			/* }); */

			$(".btnModify").on("click", function() {
				fObject.attr("method", "get");
				fObject.attr("action", "/app/board/edit");
				fObject.submit();
			});
		});
	</script>
</body>
</html>
