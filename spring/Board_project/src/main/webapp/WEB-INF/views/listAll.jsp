<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	var result = '${msg}';
	if (result == 'success') {
		alert("처리가 완료되었습니다.");
	}
	$(document).ready(function() {
		$(".btn").on("click", function() {
			location.href = "/ex/register"
		});
	});
</script>
<div class="main">
	<h1></h1>
	<h1>게 시 판</h1>
	<div>
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

		<!-- input 에 text를 입력하면 value로 설정된 pageMaker에 keyword의 값이 id값으로 들어간다.
    	입력값이 쿼리 스트링에 들어간다. -->
		<input type="text" name="keyword" id="keywordInput"
			value="${pageMaker.keyword}">
		<button id="searchBtn">검색하기</button>
	</div>
	<table id='customers' width=100% border="1">
		<tr>
			<th style="width: 10px">BNO</th>
			<th>TITLE1</th>
			<th style="width: 100px">WRITER</th>
			<th style="width: 250px">REGDATE</th>
			<th style="width: 40px">VIEWCNT</th>
		</tr>
		<c:forEach items="${list}" var="boardDto">
			<tr>
				<td>${boardDto.bno}</td>
				<td><a href='/ex/read?bno=${boardDto.bno}'>${boardDto.title}</a></td>
				<td>${boardDto.writer}</td>
				<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
						value="${boardDto.regdate}" /></td>
				<td><span class="badge bg-red">${boardDto.viewcnt }</span></td>
			</tr>
		</c:forEach>
	</table>
	<button class="btn">글쓰기</button>
	<div class="pagination">
		<c:if test="${pageMaker.page !=1}">
			<a href='list${pageMaker.makeSearch(1)}'>&laquo;</a>
		</c:if>
		<!-- 앞전 page 모양을 클릭하면 pageMarker.startPage에 -1을 처리해준다.-->
		<c:if test="${pageMaker.prev }">
			<a href='list${pageMaker.makeSearch(pageMaker.startPage-1)}'>&lt;</a>
		</c:if>

		<c:forEach begin="${pageMaker.startPage }" end="${ pageMaker.endPage}"
			var="idx">
			<a href='list${pageMaker.makeSearch(idx)}'
				<c:out value="${pageMaker.page==idx?' class=active ':'' }"/>>
				${idx}</a>
		</c:forEach>

		<%--<a href='#'>1</a>
    	 <a href='list${pageMaker.makeSearch(2)}'>2</a>
    	<a href='#' class="active">3</a> --%>

		<c:if test="${pageMaker.next }">
			<a href='list${pageMaker.makeSearch(pageMaker.endPage+1)}'>&gt;</a>

		</c:if>


		<c:if test="${pageMaker.page != pageMaker.totalEndPage}">
			<a href='list${pageMaker.makeSearch(pageMaker.totalEndPage)}'>&raquo;</a>
		</c:if>

	</div>
</div>