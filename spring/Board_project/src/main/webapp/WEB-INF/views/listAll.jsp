<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>
<script>
	var result = '${msg}';
	if (result == 'success') {
		alert("처리가 완료되었습니다.");
	}
	$(document).ready(function() {
		$(".btn").on("click", function() {
			location.href = "/ex/board/register"
		});
	});
</script>
<div class="main">
	<h1></h1>
	<h1>게 시 판</h1>
	<h1></h1>
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
				<td><a href='/ex/board/read?bno=${boardDto.bno}'>${boardDto.title}</a></td>
				<td>${boardDto.writer}</td>
				<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
						value="${boardDto.regdate}" /></td>
				<td><span class="badge bg-red">${boardDto.viewcnt }</span></td>
			</tr>
		</c:forEach>
	</table>
	<button class="btn">글쓰기</button>
</div>