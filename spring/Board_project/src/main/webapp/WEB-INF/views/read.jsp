<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function() {
		var formObj = $("form[role='form']");
		console.log(formObj);
		$(".btn-warning").on("click", function() {
			formObj.attr("action", "/ex/modify");
			formObj.attr("method", "get");
			formObj.submit();
		});
		$(".btn-danger").on("click", function() {
			formObj.attr("action", "/ex/remove");
			formObj.submit();
		});
		$(".btn-primary").on("click", function() {
			self.location = "/ex/listAll";
		});
	});
</script>
<div class="main">
	<form role="form" method="post">
		<input type='hidden' name='bno' value="${boardDto.bno}">
	</form>
	<h1>read</h1>
	<h2>
		<input type="text" name='title' style="width: 100%"
			value="${boardDto.title}" readonly="readonly">
	</h2>
	<h2>
		Content
		<textarea style="width: 100%" name="content" rows="3"
			readonly="readonly">${boardDto.content}</textarea>
	</h2>
	<h2>
		Writer <input type="text" name="writer" style="width: 100%"
			value="${boardDto.writer}" readonly="readonly">
	</h2>
	<!-- /.box-body -->
	<div class="box-footer">
		<button type="submit" class="btn btn-warning">Modify</button>
		<button type="submit" class="btn btn-danger">REMOVE</button>
		<button type="submit" class="btn btn-primary">LIST ALL</button>
	</div>
</div>