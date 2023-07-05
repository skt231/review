<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js">
	
</script>

<html>
<head>

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

<h1>문의하기</h1>




<form class="form" method="post">

	<input type='hidden' name='bno' value="${bno}"> <input
		type='hidden' name='page' value="${pageMaker.page}"> <input
		type='hidden' name='perPageNum' value="${pageMaker.perPageNum}">
	<input type='hidden' name='searchType' value="${pageMaker.searchType}">
	<input type='hidden' name='keyword' value="${pageMaker.keyword}">



	<h6>제목</h6>

	<input type="text" name='title' style="width: 100%" value="${title}">

	<h6>내용</h6>
	<textarea style="width: 100%" name="content" rows="3">${content}</textarea>

	<h6>작성자</h6>
	<input type="text" name="writer" style="width: 100%" value="${writer}">

</form>
<!-- /.box-body -->
<div class="box-footer">
	<button type="button" class="btnSave"
		onclick="location.href='/ex/modify?bno=${bno }&title=${title}&content=${content}&writer=${writer}&regdate=sysdate&viewcnt=0&indent=0&depthno=0'">저장</button>
	<!-- <button type="submit" class="btnSave">Save</button> -->
	<button type="submit" class="btnCancel">취소</button>
</div>



</body>
</html>
<!-------------------------------------------------------------------------------->


