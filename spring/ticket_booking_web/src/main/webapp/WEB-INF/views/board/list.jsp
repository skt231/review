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
	<h4 class=head>게시판</h4>

	<div class=sign_head>

		<div style="flex-grow: 1;">
			<select name="searchType">
				<option value="n"
					<c:out value="${pageDto.searchType eq '-----'?'selected':'' }"/>>-----</option>
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
			&nbsp <span>카테고리&nbsp</span> <select name="searchType"
				id="titleContainer"
				data-xmlurl="http://www.kopis.or.kr/openApi/restful/pblprfr?service=b0a82e699a254319bbe6decc02de2489&stdate=20230901&eddate=20230910&cpage=1&rows=5&prfstate=02&signgucode=11&signgucodesub=1111&kidstate=Y">
				<option value="all">전체글</option>
				<option value="free">자유</option>
			</select>
			<button id="categoryBtn">조회</button>

		</div>
		<h5 class=sign>skt</h5>
	</div>

	<table class='border_tbl' width=100% border="1">

		<tr class="tbl_head">
			<th style="width: 10px">&nbsp;</th>
			<th style="width: 200px">분류</th>
			<th style="width: 200px">제목</th>
			<th style="width: 100px">작성자</th>
			<th style="width: 200px">작성일</th>
			<th style="width: 40px">조회수</th>
		</tr>

		<c:forEach items="${list}" var="board">
			<tr>
				<td style="width: 10px">${board.board_id }</td>
				<td style="width: 100px">${board.bulletin }</td>
				<td><a
					href="/app/board/view${pageDto.makeSearch()}&board_id=${board.board_id}&indent=${board.indent}&depthno=${board.depthno}">${board.title }</a></td>
				<td style="width: 100px">${board.username }</td>
				<td style="width: 200px"><fmt:formatDate
						pattern="yyyy-MM-dd HH:mm" value="${board.create_date}" /></td>
				<td style="width: 40px">${board.viewcnt }</td>
			</tr>
		</c:forEach>
	</table>

	<button class='writeBtn' style="position: relative;">글쓰기</button>

	<div class="pagination">
		<c:if test="${pageDto.page !=1}">
			<a href='list${pageDto.makeSearch(1)}'>&laquo;</a>
		</c:if>
		<c:if test="${pageDto.prev }">
			<a href='list${pageDto.makeSearch(pageMaker.startPage-1)}'>&lt;</a>
		</c:if>

		<c:forEach begin="${pageDto.startPage }" end="${ pageDto.endPage}"
			var="idx">
			<a href='list${pageDto.makeSearch(idx)}'
				<c:out value="${pageDto.page==idx?' class=active ':'' }"/>>
				${idx}</a>
		</c:forEach>
		<c:if test="${pageDto.next }">
			<a href='list${pageDto.makeSearch(pageDto.endPage+1)}'>&gt;</a>

		</c:if>


		<c:if test="${pageDto.page != pageDto.totalEndPage}">
			<a href='list${pageDto.makeSearch(pageDto.totalEndPage)}'>&raquo;</a>
		</c:if>

	</div>

	<script
		src="${pageContext.request.contextPath}/resources/plugins/jQuery/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/plugins/bootstrap/bootstrap.min.js"></script>
	<!-- 메인 스크립트 -->
	<script src="${pageContext.request.contextPath}/resources/js/script.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/imageModule.js"></script>
	<script>
		/* 	var result = '${msg}';

			if (result == 'success') {
				console.log("처리가 완료되었습니다.");
			} */
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

								self.location = "list"
										+ '${pageDto.makePage(1)}'
										+ '&searchType='
										+ $("select option:selected").val()
										+ "&keyword="
										+ $('#keywordInput').val();

							})

					$('.writeBtn').on("click", function(event) {
						location.href = "/app/board/write";
					});
					$('#newBtn').on("click", function(event) {
						self.location = "write";
					});
				});
		/* ------------------------------------- */

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

		/* ------------------------------------- */

		document.addEventListener("DOMContentLoaded", function() {
			// categoryBtn을 클릭했을 때의 이벤트 핸들러를 추가합니다.
			document.getElementById("categoryBtn").addEventListener(
					"click",
					function() {
						var selectedValue = document
								.getElementById("titleContainer").value; // 선택된 값 가져오기
						var redirectUrl = "/app/board/category?bulletin="
								+ selectedValue; // 리다이렉트 URL 생성

						// 페이지를 리다이렉트합니다.
						if (selectedValue == "all") {
							window.location.href = "/app/board/list"
						} else {
							window.location.href = redirectUrl;
						}
					});
		});
	</script>
</body>
</html>
