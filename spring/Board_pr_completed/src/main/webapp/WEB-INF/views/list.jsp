
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js">	
</script>
<html>
<head>
<style>
.head {
	text-align: center;
	font-size: 36px;
}

.sign {
	margin-left: auto;
}

.sign_head {
	display: flex;
	align-items: center;
}
</style>
</head>
<script>
	var result = '${msg}';

	if (result == 'success') {
		console.log("처리가 완료되었습니다.");
	}
	$(document).ready(
			function() {
				$('#searchBtn').on(
						"click",
						function(event) {
							console.log("list" + '${pageMaker.makePage(1)}'
									+ '&searchType='
									+ $("select option:selected").val()
									+ "&keyword=" + $('#keywordInput').val());

							self.location = "list" + '${pageMaker.makePage(1)}'
									+ '&searchType='
									+ $("select option:selected").val()
									+ "&keyword=" + $('#keywordInput').val();

						})

				$('.writeBtn').on("click", function(event) {
					location.href = "/ex/write";
				});
				$('#newBtn').on("click", function(event) {
					self.location = "write";
				});

			});
</script>
</head>
<body>


	<br>
	<br>
	<h4 class=head>게시판</h4>

	<div class=sign_head>

		<div style="flex-grow: 1;">
			<select name="searchType">
				<option value="n"
					<c:out value="${pageMaker.searchType eq '-----'?'selected':'' }"/>>-----</option>
				<!-- <option value="n" selected>----</option>
    		<option value="n">----</option> -->
				<option value="t"
					<c:out value="${pageMaker.searchType eq 't'?'selected':'' }"/>>제목</option>
				<option value="c"
					<c:out value="${pageMaker.searchType eq 'c'?'selected':'' }"/>>내용</option>
				<option value="w"
					<c:out value="${pageMaker.searchType eq 'w'?'selected':'' }"/>>작성자</option>
				<option value="tc"
					<c:out value="${pageMaker.searchType eq 'tc'?'selected':'' }"/>>제목+
					내용</option>
			</select>

			<input type="text" name="keyword" id="keywordInput"
				value="${pageMaker.keyword}">
			<button id="searchBtn">검색하기</button>
		</div>
		<h5 class=sign>skt</h5>
	</div>

	<table class='customers' width=100% border="1">

		<tr class="tbl_head">
			<th style="width: 10px">&nbsp;</th>
			<th style="width: 200px">제목</th>
			<th style="width: 300px">내용</th>
			<th style="width: 100px">작성자</th>
			<th style="width: 200px">작성일</th>
			<th style="width: 40px">조회수</th>
		</tr>

		<c:forEach items="${list}" var="dto">
			<tr>
				<td style="width: 10px">${dto.bno }</td>
				<td><a
					href="/ex/read${pageMaker.makeSearch()}&bno=${dto.bno}&indent=${dto.indent}&depthno=${dto.depthno}">${dto.title }</a></td>
				<td style="width: 300px">${dto.content }</td>
				<td style="width: 100px">${dto.writer }</td>
				<td style="width: 200px"><fmt:formatDate
						pattern="yyyy-MM-dd HH:mm" value="${dto.regdate }" /></td>
				<td style="width: 40px">${dto.viewcnt }</td>
			</tr>
		</c:forEach>
	</table>

	<button class='writeBtn' style="position: relative;">글쓰기</button>

	<div class="pagination">
		<c:if test="${pageMaker.page !=1}">
			<a href='list${pageMaker.makeSearch(1)}'>&laquo;</a>
		</c:if>
		<c:if test="${pageMaker.prev }">
			<a href='list${pageMaker.makeSearch(pageMaker.startPage-1)}'>&lt;</a>
		</c:if>

		<c:forEach begin="${pageMaker.startPage }" end="${ pageMaker.endPage}"
			var="idx">
			<a href='list${pageMaker.makeSearch(idx)}'
				<c:out value="${pageMaker.page==idx?' class=active ':'' }"/>>
				${idx}</a>
		</c:forEach>
		<c:if test="${pageMaker.next }">
			<a href='list${pageMaker.makeSearch(pageMaker.endPage+1)}'>&gt;</a>

		</c:if>


		<c:if test="${pageMaker.page != pageMaker.totalEndPage}">
			<a href='list${pageMaker.makeSearch(pageMaker.totalEndPage)}'>&raquo;</a>
		</c:if>

	</div>


</body>
</html>











