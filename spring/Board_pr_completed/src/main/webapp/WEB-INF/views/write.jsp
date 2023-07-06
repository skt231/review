<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js">
	
</script>
<script>
	$(document).ready(function() {
		var fObject = $(".form");

		$(".btnCancel").on("click", function() {

			fObject.attr("method", "get");
			fObject.attr("action", "/ex/list");
			fObject.submit();

		})
		$(".btnSave").on("click", function() {
			fObject.attr("method", "post");
			fObject.attr("action", "/ex/modify");
			fObject.submit();
		})

	});

	function bytesHandler(obj) {
		var text = $(obj).val();
		$('p.bytes').text(getTextLength(text));
	}
	$(document).ready(function() {
		$("textarea").keyup(function() {
			var inputLength = $(this).val().length;
			if (inputLength > 2000)
				alert("더이상 입력할 수 없습니다.");
			var remain = 2000 - inputLength;
			$(".count").html(remain);
		});
	});
</script>
<style>
.head {
	text-align: center;
	font-size: 36px;
}
</style>
</head>
<body>
	<h1 class=head>글쓰기</h1>
	<form id="writeForm" action="/ex/write" method="post">

		<h6>
			제목 <input type="text" name='title' placeholder="제목을 입력해 주세요"
				style="width: 100%" required>
		</h6>
		<h6>
			내용
			<textarea name="content" class="content" rows="8" style="width: 100%"
				placeholder="내용을 50자 이상 입력해 주세요." required></textarea>
			<br> <span style="color: #aaa;" id="counter">
				<p class="count">0</p>/ 최대 2000자
			</span>
		</h6>
		<h6>
			작성자 <input type="text" name="writer" placeholder="작성자"
				style="width: 100%" required>
		</h6>
		<!-- /.box-body -->
		<button type="submit" class="btnSave">새글등록</button>
	</form>
	<button class="btnCancel" onclick="location.href='/ex/list'">취소</button>

</body>
</html>




