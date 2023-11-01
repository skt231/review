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
<style>
.head {
	text-align: center;
	font-size: 36px;
}
</style>
</head>

<body>

	<form class="form" method="post" action="/app/board/edit">
		<input type='hidden' name='board_id' value="${board_id}"> <input
			type='hidden' name='page' value="${pageDto.page}"> <input
			type='hidden' name='perPageNum' value="${pageDto.perPageNum}">
		<input type='hidden' name='searchType' value="${pageDto.searchType}">
		<input type='hidden' name='keyword' value="${pageDto.keyword}">

		<h6>제목</h6>
		<input type="text" name='title' style="width: 100%" value="${title}"
			required>

		<h6>내용</h6>
		<textarea style="width: 100%" name="content" rows="3" required>${content}</textarea>

		<h6>작성자</h6>
		<input type="text" name="username" style="width: 100%"
			value="${username}" readonly="readonly">
		<button type="submit" class="btn btn-primary">저장</button>
		<button type="button" class="btnCancel">취소</button>
	</form>


	<div class="box-footer">

		<!-- <button type="button" class="btnSave">저장</button> -->
	</div>


	<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script>
		$(document).ready(function() {
			$(".btnCancel").on("click", function() {
				console.log("Cancel clicked. Sending GET request.");
				window.location.href = "/app/board/list";
			});

			/* 	$(".btnSave").on("click", function() {
					console.log("Save clicked. Sending POST request.");

					// "content" 값을 가져오기
					var contentValue = $("textarea[name='content']").val();
					console.log(contentValue);

					// 이제 contentValue를 사용하여 필요한 동작 수행
					// ...

					// 폼을 제출
					var $form = $(".form");
					$form.attr("method", "post");
					$form.submit();
				}); */
		});
	</script>

</body>
</html>
