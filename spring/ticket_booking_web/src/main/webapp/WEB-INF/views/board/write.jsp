
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 작성</title>
<style>
.head {
	text-align: center;
	font-size: 36px;
}
</style>
</head>
<body>
	<!-- 	<h1>게시글 작성</h1>
	<form action="write" method="post">
		<label>제목: <input type="text" name="title"></label><br> <label>작성자:<input
			type="text" name="username"></label><br> <label>내용: <textarea
				name="content" rows="10" cols="50"></textarea></label><br> <input
			type="submit" value="작성하기">
	</form> -->
	<h1 class=head>글쓰기</h1>
	<form id="writeForm" action="/app/board/write" method="post">

		<select name="bulletin" id="titleContainer"
			data-xmlurl="http://www.kopis.or.kr/openApi/restful/pblprfr?service=b0a82e699a254319bbe6decc02de2489&stdate=20230901&eddate=20230910&cpage=1&rows=5&prfstate=02&signgucode=11&signgucodesub=1111&kidstate=Y">
			<option value="free">자유</option>
		</select>
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
			작성자 <input type="text" name="username" placeholder="작성자"
				style="width: 100%" required>
		</h6>
		<!-- /.box-body -->
		<button type="submit" class="btnSave">새글등록</button>
	</form>
	<button class="btnCancel" onclick="location.href='/app/board/list'">취소</button>
</body>
<script
	src="${pageContext.request.contextPath}/resources/plugins/jQuery/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/plugins/bootstrap/bootstrap.min.js"></script>
<!-- 메인 스크립트 -->
<script src="${pageContext.request.contextPath}/resources/js/script.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/imageModule.js"></script>
<script>
	$(document).ready(function() {
		var fObject = $(".form");

		$(".btnCancel").on("click", function() {

			fObject.attr("method", "get");
			fObject.attr("action", "/app/board/list");
			fObject.submit();

		})
		$(".btnSave").on("click", function() {
			fObject.attr("method", "post");
			fObject.attr("action", "/app/board/edit");
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
	/* --- */
	document.addEventListener("DOMContentLoaded", function() {
		fetchAndDisplayTitle().then(function(data) {
			var titleContainer = document.getElementById('titleContainer');

			data.forEach(function(item) {
				var option = document.createElement('option');
				option.value = item.title.trim(); // 여기에서 실제 값을 지정
				option.textContent = item.title; // 여기에서 제목을 가져옴
				console.log(item.title);
				titleContainer.appendChild(option);
			});
		});
	});
</script>
</html>
