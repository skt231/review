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
</script>
</head>
<body>
	<h1>문의하기</h1>





	<form id="writeForm" action="/ex/write" method="post">

		<div class="box-header">
			<h3 class="box-title"></h3>
		</div>
		<!-- /.box-header -->
		<!-- action에 경로가 없으면 현재 페이지 주소로 이동한다.-->

		<h6>
			제목 <input type="text" name='title' placeholder="제목을 입력해 주세요"
				style="width: 100%">
		</h6>
		<h6>
			내용
			<textarea name="content" rows="8" style="width: 100%"
				placeholder="내용을 50자 이상 입력해 주세요."minlength: "50"></textarea>
			<br> <span style="color: #aaa;" id="counter">(0 / 최대
				200자)</span>
		</h6>
		<h6>
			작성자 <input type="text" name="writer" placeholder="작성자"
				style="width: 100%" value="${writer }" readonly="readonly">
		</h6>
		<!-- /.box-body -->
		<button type="submit" class="btnSave">새글등록</button>
	</form>
	<button class="btnCancel" onclick="location.href='/ex/list'">취소</button>

</body>
</html>




