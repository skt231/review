<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js">
	
</script>
<title>Insert title here</title>
<style>
.head {
	text-align: center;
	font-size: 36px;
}
</style>
</head>
<body>
	<h1 class=head>글쓰기</h1>
	<div class="main">

		<form class="contactForm" method="post" action="/app/board/comment">
			 <input	type='hidden' name='board_id' value="${board_id}"> 
			 <input type="hidden" name="depthno" value="${depthno}"> 
			 <input type="hidden" name="indent" value="${indent + 1}">
			<h6>제목</h6>
			<h6>
				<input type="text" style="width: 100%" name='title'
					value="↪re:${title}" readonly="readonly">
			</h6>

			<h6>
				내용
				<textarea style="width: 100%" name="content" rows="3" required></textarea>
			</h6>

			<h6>
				작성자 <input type="text" name="username" style="width: 100%" required>
			</h6>
			<input type="submit" value="답글 등록">
		</form>
		<div>
			<button type="button" class="btnList"
				onclick="location.href='/app/board/list'">LIST page로 이동</button>
		</div>
	</div>
</body>
</html>