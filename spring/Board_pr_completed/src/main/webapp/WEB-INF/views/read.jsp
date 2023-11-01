<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js">
	
</script>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script>
	var fObject = $(".form");
	function remove() {
		fObject.attr("action", "/ex/remove");
		fObject.submit();
	}

	$(document).ready(function() {
		var fObject = $(".form");

		$(".btnList").on("click", function() {
			fObject.attr("method", "get");
			fObject.attr("action", "/ex/list");
			fObject.submit();

		});

		function remove() {
			fObject.attr("action", "/ex/remove");
			fObject.submit();
		}
		/* }); */

		$(".btnModify").on("click", function() {
			fObject.attr("method", "get");
			fObject.attr("action", "/ex/modify");
			fObject.submit();
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
<h1 class="head">게시판</h1>

<form class="contactForm" method="post">

	<input type='hidden' name='bno' value="${list_read.bno}"> <input
		type='hidden' name='page' value="${pageMaker.page}"> <input
		type='hidden' name='perPageNum' value="${pageMaker.perPageNum}">
	<input type='hidden' name='searchType' value="${pageMaker.searchType}">
	<input type='hidden' name='keyword' value="${pageMaker.keyword}">



	<h6>제목</h6>
	<h6>
		<input type="text" style="width: 100%" name='title'
			value="${list_read.title}" readonly="readonly">
	</h6>

	<h6>
		내용
		<textarea style="width: 100%" name="content" rows="3"
			readonly="readonly">${list_read.content}</textarea>
	</h6>

	<h6>
		작성자 <input type="text" name="writer" style="width: 100%"
			value="${list_read.writer}" readonly="readonly">
	</h6>
</form>

<div class="d-grid">
	<button type="button" class="btnModify"
		onclick="location.href='/ex/modify?bno=${list_read.bno }&title=${list_read.title}&content=${list_read.content}&writer=${list_read.writer}'">수정</button>
	<button type="submit" class="btnRemove"
		onclick="location.href='/ex/remove?bno=${list_read.bno }'">삭제</button>
	<button type="button" class="btnReply"
		onclick="location.href='/ex/reply?bno=${list_read.bno }&title=${list_read.title}&indent=${list_read.indent }&depthno=${list_read.depthno }'">답글</button>
	<button type="button" class="btnList"
		onclick="location.href='/ex/list'">LIST page로 이동</button>



</div>
</body>
</html>

