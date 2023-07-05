<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js">
	
</script>
</head>
<body>
	<div class="main">

		<form class="contactForm" method="post" action="/ex/reply">

			<input type='hidden' name='bno' value="${bno}"> <input
				type="hidden" name="depthno" value="${depthno }"> <input
				type="hidden" name="indent" value="${indent }">
			<h6>제목</h6>
			<h6>
				<input type="text" style="width: 100%" name='title'
					value="↪re:${title}" readonly="readonly">
			</h6>

			<h6>
				내용
				<textarea style="width: 100%" name="content" rows="3"></textarea>
			</h6>

			<h6>
				작성자 <input type="text" name="writer" style="width: 100%"
					value="${writer}" readonly="readonly">
			</h6>
			<input type="submit" value="답글 등록">
		</form>
		<%--  </c:forEach>  --%>
		<!-- /.box-body -->
		<div>
			<button type="button" class="btnList"
				onclick="location.href='/ex/list'">LIST page로 이동</button>
		</div>
	</div>
</body>
</html>
<!------------------------------------------------------------------------------------------------------------------------------------------------  -->


