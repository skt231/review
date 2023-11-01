<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록</title>

<style>
.pagination {
	text-align: center;
	margin-top: 20px;
	height: 10px;
}

.pagination ul {
	list-style: none;
	padding: 0;
}

.pagination li {
	display: inline;
	margin-right: 5px;
}

.pagination a {
	text-decoration: none;
	background-color: #007BFF;
	color: #fff;
	padding: 5px 10px;
	border-radius: 5px;
}

.pagination a:hover {
	background-color: #0056b3;
}
.pagination a.current {
    background-color: #d80000;
}
</style>
</head>
<body>
	<h1>게시판 목록</h1>
	<div class=sign_head>

		<div style="flex-grow: 1;">
			<select name="searchType">
				<option value="n"
					<c:out value="${pageDto.searchType eq '-----'?'selected':'' }"/>>-----</option>
				<!-- <option value="n" selected>----</option>
    		<option value="n">----</option> -->
				<option value="t"
					<c:out value="${pageDto.searchType eq 't'?'selected':'' }"/>>제목</option>
				<option value="c"
					<c:out value="${pageDto.searchType eq 'c'?'selected':'' }"/>>내용</option>
				<option value="w"
					<c:out value="${pageDto.searchType eq 'w'?'selected':'' }"/>>작성자</option>
				<option value="tc"
					<c:out value="${pageDto.searchType eq 'tc'?'selected':'' }"/>>제목+
					내용</option>
			</select> <input type="text" name="keyword" id="keywordInput"
				value="${pageDto.keyword}">
			<button id="searchBtn">검색하기</button>
		</div>
		<h5 class=sign>skt</h5>
	</div>
	<table border="1">
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>조회수</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${boards}" var="board">
				<tr>
					<td>${board.board_id}</td>
					<td><a href="view?boardId=${board.board_id}">${board.title}</a></td>
					<td>${board.username}</td>
					<td><fmt:formatDate value="${board.create_date}"
							pattern="yyyy-MM-dd HH:mm" /></td>
					<td>${board.viewcnt }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<a href="write">글쓰기</a>
	<div class="pagination">
		<c:if test="${pageDto.prev}">
			<a href="${pageDto.makeSearch(pageDto.page - 1)}">이전</a>
		</c:if>
		<c:forEach begin="${pageDto.startPage}" end="${pageDto.endPage}"
			var="i">
			<a href="${pageDto.makeSearch(i)}"
				class="${i == pageDto.page ? 'current' : ''}">${i}</a>
		</c:forEach>
		<c:if test="${pageDto.next}">
			<a href="${pageDto.makeSearch(pageDto.page + 1)}">다음</a>
		</c:if>
	</div>

	<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
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
								console.log("list" + '${pageDto.makePage(1)}'
										+ '&searchType='
										+ $("select option:selected").val()
										+ "&keyword="
										+ $('#keywordInput').val());

								$('#searchBtn').on(
										"click",
										function(event) {
											var searchType = $(
													"select option:selected")
													.val();
											var keyword = $('#keywordInput')
													.val();
											var page = 1;
											location.href = 'list?page=' + page
													+ '&searchType='
													+ searchType + '&keyword='
													+ keyword;
										});

							})

					$('.writeBtn').on("click", function(event) {
						location.href = "/board/write";
					});
					$('#newBtn').on("click", function(event) {
						location.href = "write";
					});

				});
	</script>
</body>
</html>
