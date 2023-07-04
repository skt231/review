<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<div class="main">
	<form role="form" method="post">
		<div class="box-body">
			<h2>
				BNO <input type="text" name='bno' style="width: 100%"
					value="${boardDto.bno}" readonly="readonly">
			</h2>
			<h2>
				<input type="text" name='title' style="width: 100%"
					value="${boardDto.title}">
			</h2>
			<h2>
				Content
				<textarea style="width: 100%" name="content" rows="3">${boardDto.content}</textarea>
			</h2>
			<h2>
				Writer <input type="text" name="writer" style="width: 100%"
					value="${boardDto.writer}">
			</h2>
		</div>
		<!-- /.box-body -->
	</form>
	<div class="box-footer">

		<button type="submit" class="btn btn-primary">SAVE</button>
		<button type="submit" class="btn btn-warning">CANCEL</button>
	</div>
	<script>
		$(document).ready(function() {
			var formObj = $("form[role='form']");
			console.log(formObj);
			$(".btn-warning").on("click", function() {
				self.location = "/ex/listAll";
			});
			$(".btn-primary").on("click", function() {
				formObj.submit();
			});
		});
	</script>
</div>